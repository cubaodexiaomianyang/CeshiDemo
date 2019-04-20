package com.controller.htmls;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.entity.User;
import com.service.UserpriceService;

@Controller
@RequestMapping("/qianduan_ZhuCeZhuangTaiController/")
public class ZhuCeZhuangTaiController {
	
	@Autowired
	private UserpriceService userService;
	
	@RequestMapping("/findshuju")
	@ResponseBody
	public AjaxRes findshuju(User u,Page<User> page,String id){
		AjaxRes aj=new AjaxRes();
		Page<User> pages=userService.findshuju(u,page,id);
		aj.setSucceed(pages, "加载成功");
		return aj;
	}
	
	@RequestMapping("/findmin")
	@ResponseBody
	public AjaxRes findmin(HttpServletRequest request){
		HttpSession userSession=request.getSession();
		User uer=(User)userSession.getAttribute("qianduan_username");
		System.out.println("输出得到的用户是什么?:=="+uer);
		AjaxRes aj=new AjaxRes();
		List<User> uers=userService.findmin(uer);
		System.out.println("查询处的USER数据"+uers);
		aj.setSucceed(uers, "加载成功");
		return aj;
	}
}
