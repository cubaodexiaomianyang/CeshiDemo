package com.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.entity.FuJianBiao;
import com.entity.UserJob;
import com.entity.XinWenLanMuBiao;
import com.entity.ZongBanKuai;
import com.service.FuJianBiaopriceService;
import com.service.XinWenLanMuBiaopriceService;
import com.service.ZongBanKuaipriceService;

@Controller
@RequestMapping("/XinWenLanMuBiaoController/")
public class XinWenLanMuBiaoController {
	
	@Autowired
	private XinWenLanMuBiaopriceService xinwenlanmuService;
	@Autowired
	private FuJianBiaopriceService fujianbiaoService;
	
	@Autowired
	private ZongBanKuaipriceService zongbankuaiService;
	
	@RequestMapping("/tiaozhuan")
	public String tiaozhuan(){
		return "xinwen/xinwenlanmu";
	}
	
	
	@RequestMapping("/chaxun")
	@ResponseBody
	public AjaxRes chaxun(XinWenLanMuBiao xwzx,Page<XinWenLanMuBiao> page){
		AjaxRes aj =  new AjaxRes();
		Page<XinWenLanMuBiao> name=xinwenlanmuService.findByPage(xwzx,page);
		aj.setSucceed(name, "成功");
		return aj;
	}
	
	@RequestMapping("/chaxunfj")
	@ResponseBody
	public AjaxRes chaxunfj(FuJianBiao fj,Page<FuJianBiao> page,String id){
		AjaxRes aj =  new AjaxRes();
			Page<FuJianBiao> name=fujianbiaoService.findByPagefj(fj, page,"xinwenlanmu", id);
			aj.setSucceed(name, "成功");
		return aj;
	}
	
	@RequestMapping("/find")
	@ResponseBody
	public AjaxRes find(XinWenLanMuBiao xwzx){
		AjaxRes aj =  new AjaxRes();
		List<XinWenLanMuBiao> ztree=xinwenlanmuService.find(xwzx);
		aj.setSucceed(ztree, "成功");
		return aj;
	}
	
	@RequestMapping("/shanchu")
	@ResponseBody
	public ModelAndView shanchu(String id){
		
		ModelAndView mv=new ModelAndView();
		System.out.println("删除获取的id"+id);
		
		XinWenLanMuBiao jb=new XinWenLanMuBiao();
		jb.setId(id);
		
		xinwenlanmuService.delete(jb);
		mv.setViewName("xinwen/xinwenlanmu");
		return mv;
	}
	
	@RequestMapping("/zongbankuai")
	@ResponseBody
	public AjaxRes zongbankuai(ZongBanKuai zbk){
		AjaxRes aj=new AjaxRes();
		List<ZongBanKuai> zbks=zongbankuaiService.find(zbk);
		System.out.println("输出查询出的板块=="+zbks);
		aj.setSucceed(zbks, "获取数据成功");
		return aj;
	}
	
	
	@RequestMapping("/plshanchu")
	@ResponseBody
	public ModelAndView plshanchu(String zz){
		ModelAndView mv=new ModelAndView();
		List<String> uj=Arrays.asList(zz.split(","));
		List<XinWenLanMuBiao> ujj=new ArrayList<XinWenLanMuBiao>();
		for(int i=0;i<uj.size();i++){
			XinWenLanMuBiao xw=new XinWenLanMuBiao();
			xw.setId(uj.get(i));
			ujj.add(xw);
		}
		xinwenlanmuService.deleteBatch(ujj);
		mv.setViewName("xinwen/xinwenlanmu");
		return mv;
	}
	
	@RequestMapping("/xiugai")
	@ResponseBody
	public ModelAndView xiugai(String id){
		ModelAndView mv=new ModelAndView();
		XinWenLanMuBiao jb=new XinWenLanMuBiao();
		jb.setId(id);
		List<XinWenLanMuBiao> ujb=xinwenlanmuService.find(jb);
		mv.addObject("ujbzhi", ujb.get(0));
		mv.addObject("pd", 1);
		mv.setViewName("xinwen/lanmuxiugai");
		return mv;
	}
	
	@RequestMapping("/xiugaihuichuan")
	@ResponseBody
	public AjaxRes xiugaihuichuan(XinWenLanMuBiao xwlm,String fjid){
		AjaxRes aj=new AjaxRes();
			xinwenlanmuService.updateall(xwlm,fjid);
		return aj;
	}
	
	
	@RequestMapping("/tianjia")
	@ResponseBody
	public ModelAndView tianjia(){
		ModelAndView mv=new ModelAndView();
		mv.addObject("pd", 2);
		mv.setViewName("xinwen/lanmuxiugai");
		return mv;
	}
	
	@RequestMapping("/tianjiafanhui")
	@ResponseBody
	public AjaxRes tianjiafanhui(XinWenLanMuBiao xwlm,String fjid,ZongBanKuai zk){
		System.out.println("获取到的zk==="+zk);
		AjaxRes aj=new AjaxRes();
		try {
			//插入操作
			xinwenlanmuService.insertfj(xwlm,fjid,zk);
			aj.setResMsg("成功");
		} catch (Exception e) {
			aj.setResMsg("失败"+e.getMessage());
		}
		return aj;
	}
}
