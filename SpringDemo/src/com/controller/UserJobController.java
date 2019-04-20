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
import com.entity.UserJob;
import com.service.UserJobpriceService;

@Controller
@RequestMapping("/UserJobController/")
public class UserJobController {

	@Autowired
	private UserJobpriceService userjobService;
	
	@RequestMapping("/chaxun")
	@ResponseBody
	public AjaxRes chaxun(UserJob sert,Page<UserJob> page){
		AjaxRes aj =  new AjaxRes();
		System.out.println("进入查询该方法");
		Page<UserJob> name=userjobService.findByPage(sert,page);
		System.out.println("获得的值"+name);
		System.out.println("查询的结果是"+name);
		
		aj.setSucceed(name, "成功");
		
		return aj;
	}
	
	@RequestMapping("/shanchu")
	@ResponseBody
	public ModelAndView shanchu(String id){
		ModelAndView mv=new ModelAndView();
		System.out.println("删除获取的id"+id);
		UserJob jb=new UserJob();
		jb.setId(id);
		System.out.println("jb::::"+jb.getId());
		userjobService.delete(jb);
		mv.setViewName("gages/biaoge");
		return mv;
	}
	
	@RequestMapping("/xiugai")
	@ResponseBody
	public ModelAndView xiugai(String id){
		ModelAndView mv=new ModelAndView();
		System.out.println("修改获取的id"+id);
		
		UserJob jb=new UserJob();
		jb.setId(id);
		System.out.println("jb::::"+jb.getId());
		
		List<UserJob> ujb=userjobService.find(jb);
		
		System.out.println("查询返回的工种:"+ujb);
		mv.addObject("ujbzhi", ujb.get(0));
		mv.addObject("pd", 1);
		mv.setViewName("gages/xiugai");
		return mv;
	}
	
	@RequestMapping("/xiugaihuichuan")
	@ResponseBody
	public AjaxRes xiugaihuichuan(UserJob jb){
		AjaxRes aj=new AjaxRes();
		userjobService.update(jb);
		return aj;
	}
	
	
	
	@RequestMapping("/tianjia")
	@ResponseBody
	public ModelAndView tianjia(){
		System.out.println("进入添加方法");
		ModelAndView mv=new ModelAndView();
		mv.addObject("pd", 2);
		mv.setViewName("gages/xiugai");
		return mv;
	}
	
	@RequestMapping("/tianjiafanhui")
	@ResponseBody
	public AjaxRes tianjiafanhui(UserJob jb){
		System.out.println("进入添加方法");
		System.out.println("获取到工作种类的信息:"+jb);
		AjaxRes aj=new AjaxRes();
		userjobService.insert(jb);
		return aj;
	}
	
	@RequestMapping("/plshanchu")
	@ResponseBody
	public ModelAndView plshanchu(String zz){
		System.out.println("进入批量删除方法"+zz);
		//System.out.println("获取到工作种类的信息:"+jb);
		ModelAndView mv=new ModelAndView();
		List<String> uj=Arrays.asList(zz.split(","));
		List<UserJob> ujj=new ArrayList<UserJob>();
		for(int i=0;i<uj.size();i++){
			UserJob u=new UserJob();
			u.setId(uj.get(i));
			
			ujj.add(u);
		}
		userjobService.deleteBatch(ujj);
		mv.setViewName("gages/biaoge");
		return mv;
	}
	
}
