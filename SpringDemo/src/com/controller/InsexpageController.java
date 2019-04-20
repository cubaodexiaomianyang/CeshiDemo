package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.controller.base.BaseController;
import com.entity.User;
import com.service.GoodpriceService;

@Controller
public class InsexpageController extends BaseController<Object>{
	
	@Autowired
	private GoodpriceService goodService;

	//跳转主页
	@RequestMapping("/indexpage")//将数据添加到页面中去展示
	public ModelAndView index()throws Exception{
		ModelAndView mv =  new ModelAndView();
		HttpSession session=getRequest().getSession();
		User user= (User)session.getAttribute("username");
		mv.addObject("user", user);
		mv.setViewName("index");
		return mv;
	}
	
	public static String hello(){
		return "HELLO WORED  BY  余浩洋";
	}
	
	public static void main(String[] args) {
		hello();
	}
	
	//跳转主页
		@RequestMapping("/indexlogin")//将数据添加到页面中去展示
		public ModelAndView login()throws Exception{
			ModelAndView mv =  new ModelAndView();
			mv.setViewName("login");
			return mv;
		}

	@RequestMapping("/content")//将数据添加到页面中去展示
	public ModelAndView content()throws Exception{
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("gages/content");
		return mv;
	}

	@RequestMapping("/biaoge")//将数据添加到页面中去展示
	public String biaoge()throws Exception{
		return "gages/biaoge";
	}
	
	@RequestMapping("/userbiaoge")//将数据添加到页面中去展示
	public String userbiaoge()throws Exception{
		return "gages/userbiaoge";
	}
}
