package com.controller.htmls;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.ajax.AjaxRes;
import com.common.utils.DateUtils;
import com.common.utils.base.UuidUtil;
import com.entity.TouSuJianYiBiao;
import com.entity.User;
import com.service.TouSuJianYiBiaopriceService;

@Controller
@RequestMapping("/qianduan_TouShuController/")
public class TouShuController {
	
	@Autowired
	private TouSuJianYiBiaopriceService tousujianyibiaoservice;
	
	@RequestMapping("/inserts")
	@ResponseBody
	public AjaxRes inserts(TouSuJianYiBiao ts,HttpServletRequest request){
		AjaxRes aj=new AjaxRes();
		System.out.println("接收到的值"+ts);
		
		HttpSession userSession=request.getSession();
		User u=(User) userSession.getAttribute("qianduan_username");
		//id=null, toushuren=null, toushuneirong=sadfasdasdas阿大撒大撒, beitoushuren=蒲壮士 , shifouniming=null,
		//toushushijian=null, toushuzhuangtai=null, pingjia=态度良好,态度良好,态度良好,, pingfen=2
		ts.setId(UuidUtil.get32UUID());
		ts.setToushuren(u.getUserName());
		ts.setToushushijian(DateUtils.getDate("yyyy/MM/dd HH:mm:ss"));
		ts.setToushuzhuangtai("审核通过");
		tousujianyibiaoservice.insert(ts);
		aj.setResMsg("添加成功");
		return aj;
	}
}
