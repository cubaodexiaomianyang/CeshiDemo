package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.UserType;
import com.service.UserTypepriceService;

@Controller
@RequestMapping("/UserTypeController/")
public class UserTypeController {

	@Autowired
	private UserTypepriceService usertypeService;
	
	@RequestMapping("/chaxun")
	public ModelAndView chaxun(UserType sert){
		ModelAndView mv =  new ModelAndView();
		System.out.println("进入查询该方法");
		List<UserType> name=usertypeService.find();
		System.out.println("获得的值"+name.get(0));
		System.out.println("查询的结果是"+name);
		mv.addObject("usertypename",name);
		mv.setViewName("gages/tianjia");
		return mv;
	}
}
