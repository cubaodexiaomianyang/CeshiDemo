package com.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entity.FuJianBiao;
import com.entity.FuJianGuanXiBiao;
import com.service.FuJianBiaopriceService;
import com.service.FuJianGuanXiBiaopriceService;

@Controller
@RequestMapping("/FuJianController/")
public class FuJianController {
	@Autowired
	private FuJianBiaopriceService fujianbiaoService;
	@Autowired
	private FuJianGuanXiBiaopriceService fujianguanxibiaoService;
	
	@RequestMapping("/shanchu")
	@ResponseBody
	public ModelAndView shanchu(String id){
		System.out.println("输出获取的附件得到的附件ID===="+id);
		ModelAndView mv=new ModelAndView();
		//附件的删除
		FuJianBiao fj=new FuJianBiao();
		fj.setId(id);
		fujianbiaoService.delete(fj);
		//该附件的附件关系删除
		FuJianGuanXiBiao gx=new FuJianGuanXiBiao();
		gx.setFujianid(id);
		fujianguanxibiaoService.delete(gx);
		
		mv.setViewName("gages/userbiaoge");
		return mv;
	}
	
	@RequestMapping("/plshanchu")
	@ResponseBody
	public ModelAndView plshanchu(String zz){
		System.out.println("输出获取的附件得到的附件ID"+zz);
		ModelAndView mv=new ModelAndView();
		List<String> uj=Arrays.asList(zz.split(","));
		
		List<FuJianGuanXiBiao> fjgxs=new ArrayList<FuJianGuanXiBiao>();
		List<FuJianBiao> fjs=new ArrayList<FuJianBiao>();
		
		for(int i=0;i<uj.size();i++){
			FuJianBiao fj=new FuJianBiao();
			
			FuJianGuanXiBiao fjgx=new FuJianGuanXiBiao();
			
			fj.setId(uj.get(i));
			fjgx.setFujianid(uj.get(i));
			fjs.add(fj);
			fjgxs.add(fjgx);
		}
		System.out.println("展示两个集合"+fjs+"============"+fjgxs);
		fujianbiaoService.deleteBatch(fjs);
		fujianguanxibiaoService.deleteBatch(fjgxs);
		
		mv.setViewName("gages/userbiaoge");
		return mv;
	}
}
