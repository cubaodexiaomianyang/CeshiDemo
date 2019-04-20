package com.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.common.utils.DateUtils;
import com.common.utils.PropertyUtil;
import com.common.utils.base.Const;
import com.common.utils.base.UuidUtil;
import com.controller.base.BaseController;
import com.entity.FuJianBiao;
import com.service.FuJianBiaopriceService;
/**
 * 上传工具
 */
@Controller
public class WebuploaderController extends BaseController<Object>{

	@Autowired
	private FuJianBiaopriceService fujianbiaoService;
	
	@RequestMapping("/uploadFile")
    public void uploadFile(@RequestParam(value = "file", required = false) MultipartFile file,
    		HttpServletResponse response, HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		JSONObject json=new JSONObject();
		PrintWriter out = response.getWriter();
		logger.info("上传文件开始");
		try {  
			Map<String,String> uploadMap=PropertyUtil.getPropertyMap(Const.UPLOAD_CONFIG);
			String fileAllowSuffix=uploadMap.get("fileAllowSuffix");//允许文件规格
			String fileAllowSize=uploadMap.get("fileAllowSize");//允许文件大小
			String fileFilePath=uploadMap.get("fileFilePath");
			String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
			if(StringUtils.isNotBlank(fileAllowSuffix)){
				//获取文件后缀名	
		    	int length = fileAllowSuffix.indexOf(suffix.toLowerCase());
		        if(length == -1){
		        	json.put("res", Const.FAIL);
					json.put("resMsg", "请上传允许格式的文件");
					out.print(json.toString());
					return;
		        }
			}	    	
			long size = file.getSize();
			String daxiao=Long.toString(size);
			
			if(StringUtils.isNotBlank(fileAllowSize)){
				 long allowsize=Long.parseLong(fileAllowSize);
			        if(size > allowsize){
			        	json.put("res", Const.FAIL);
						json.put("resMsg", "超过上传文件大小限制");
						out.print(json.toString());
						return;
			        }
			}
	        String realPath=request.getSession().getServletContext().getRealPath("/");
	        String path=realPath+fileFilePath;
	        String fileName =DateUtils.getDate("yyyyMMdd")+ UuidUtil.get32UUID()+"."+suffix; //文件别名设置，防止文件重名 
	        File baseFile = new File(path);
			File targetFile = new File(baseFile, fileName);
			if(!baseFile.exists())baseFile.mkdirs(); 
			
			//插入到附件表
			FuJianBiao fjb=new FuJianBiao();
			String id=UuidUtil.get32UUID();
			fjb.setId(id);
			fjb.setFujianmingcheng(file.getOriginalFilename());
			fjb.setFujianwenjianming(fileName);
			fjb.setFujianhouzhui(suffix);
			fjb.setFujiandaxiao(daxiao);
			fjb.setFujianlujing(fileFilePath+fileName);
			String date=DateUtils.getDate("yyyy/MM/dd HH:mm:ss");
			System.out.println("附件存储的时间===="+date);
			fjb.setShangchuanshijian(date);
			fujianbiaoService.insert(fjb);
			
			
	        //保存  
            file.transferTo(targetFile);   	
        	json.put("res", Const.SUCCEED);
			json.put("saveUrl","/"+fileFilePath+fileName);//保存的路径
			System.out.println("路径"+path+"文件位置：+++++++++++++++"+fileFilePath+"文件名字++++++++++++++++++++"+fileName);
			json.put("resMsg", "上传成功");
			json.put("size", size);
			
			json.put("fujianid",id);//传附件Id的值到
			json.put("fujiantype", suffix);//传的后坠名
			json.put("shangchaunshijian", date);//传的上传时间值
			
			
			out.print(json.toString());
			logger.info("上传文件结束，位置："+path);
        } catch (Exception e) {
			e.printStackTrace();
			logger.error("上传文件出错",e);
		}		
    }  
}
