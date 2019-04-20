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
import com.entity.FuJianGuanXiBiao;
import com.entity.User;
import com.entity.UserHangYeGuanXi;
import com.entity.UserJob;
import com.entity.UserType;
import com.service.FuJianBiaopriceService;
import com.service.FuJianGuanXiBiaopriceService;
import com.service.UserHangYeGuanXipriceService;
import com.service.UserJobpriceService;
import com.service.UserTypepriceService;
import com.service.UserpriceService;

@Controller
@RequestMapping("/UserController/")
public class UserController {

	@Autowired
	private UserpriceService userService;
	@Autowired
	private UserTypepriceService usertypeService;
	@Autowired
	private UserJobpriceService userjobService;
	@Autowired
	private UserHangYeGuanXipriceService userhangyeguanxijobService;
	@Autowired
	private FuJianGuanXiBiaopriceService fujianguanxibiaoService;
	@Autowired
	private FuJianBiaopriceService fujianbiaoService;
//	@RequestMapping("/add")
//	@ResponseBody
//	public AjaxRes add(User ser){
//		AjaxRes aj=new AjaxRes();
//		aj.setResMsg("成功");
//		
//		System.out.println("进入该方法,获得网页的请求");
//		System.out.println("展示获得的数据名字"+ser.getUserName()+",电话"+ser.getPhone()+",类型id"+ser.getUserTypeId()+",公司iD"+ser.getGongsiId()+","+ser.getUserJifen()+","+ser.getDengluId());
//		
//		
//		//userService.insert(ser);
//		return aj;
//	}
	
	@RequestMapping("/chaxun")
	@ResponseBody
	public AjaxRes chaxun(User user,Page<User> page){
		AjaxRes aj =  new AjaxRes();
		Page<User> name=userService.findByPage(user,page);
		aj.setSucceed(name, "成功");
		return aj;
	}
	
	
	@RequestMapping("/chaxunfj")
	@ResponseBody
	public AjaxRes chaxunfj(FuJianBiao fj,Page<FuJianBiao> page,String id){
		AjaxRes aj =  new AjaxRes();
			Page<FuJianBiao> name=fujianbiaoService.findByPagefj(fj, page,"user", id);
			aj.setSucceed(name, "成功");
		return aj;
	}
	
	@RequestMapping("/shanchu")
	@ResponseBody
	public ModelAndView shanchu(String id){
		ModelAndView mv=new ModelAndView();
		User jb=new User();
		jb.setUserId(id);
		UserHangYeGuanXi yhgx=new UserHangYeGuanXi();
		yhgx.setUserId(id);
		userService.delete(jb);
		userhangyeguanxijobService.delete(yhgx);
		mv.setViewName("gages/userbiaoge");
		return mv;
	}
	

	
	@RequestMapping("/xiugai")
	@ResponseBody
	public ModelAndView xiugai(String id){
		ModelAndView mv=new ModelAndView();
		User jb=new User();
		jb.setUserId(id);
		List<User> ujb=userService.find(jb);
		mv.addObject("ujbzhi", ujb.get(0));
		UserHangYeGuanXi gx=new UserHangYeGuanXi();
		gx.setUserId(id);
		FuJianGuanXiBiao fjgx =new FuJianGuanXiBiao();
		fjgx.setGuanlianid(id);
		List<UserHangYeGuanXi> ugx=userhangyeguanxijobService.find(gx);
		mv.addObject("ugx", ugx.get(0));
		mv.addObject("pd", 1);
		mv.setViewName("gages/userxiugai");
		return mv;
	}
	
	
	
	
	
	
	@RequestMapping("/xiugaihuichuan")
	@ResponseBody
	public AjaxRes xiugaihuichuan(User us,UserHangYeGuanXi yhgx,String fjid){
		AjaxRes aj=new AjaxRes();
		userService.updateall(us, yhgx, fjid);
		return aj;
	}
	
	@RequestMapping("/tianjia")
	@ResponseBody
	public ModelAndView tianjia(){
		ModelAndView mv=new ModelAndView();
		mv.addObject("pd", 2);
		mv.setViewName("gages/userxiugai");
		return mv;
	}
	
	@RequestMapping("/job")
	@ResponseBody
	public AjaxRes job(UserJob job){
		AjaxRes aj=new AjaxRes();
		List<UserJob> ujs=userjobService.find(job);
		aj.setSucceed(ujs, "获取数据成功");
		return aj;
	}
	
	@RequestMapping("/type")
	@ResponseBody
	public AjaxRes type(UserType typ){
		AjaxRes aj=new AjaxRes();
		List<UserType> uts=usertypeService.find(typ);
		aj.setSucceed(uts, "获取数据成功");
		return aj;
	}

	@RequestMapping("/tianjiafanhui")
	@ResponseBody
	public AjaxRes tianjiafanhui(User jb,UserHangYeGuanXi yhgx,String fjid){
		AjaxRes aj=new AjaxRes();
		userService.insertfj(jb,yhgx,fjid);
		return aj;
	}
	
	@RequestMapping("/plshanchu")
	@ResponseBody
	public ModelAndView plshanchu(String zz){
		ModelAndView mv=new ModelAndView();
		List<String> uj=Arrays.asList(zz.split(","));
		List<UserHangYeGuanXi> yhgx=new ArrayList<UserHangYeGuanXi>();
		List<User> ujj=new ArrayList<User>();
		for(int i=0;i<uj.size();i++){
			User u=new User();
			UserHangYeGuanXi yh=new UserHangYeGuanXi();
			u.setUserId(uj.get(i));
			yh.setUserId(uj.get(i));
			ujj.add(u);
			yhgx.add(yh);
		}
		userService.deleteBatch(ujj);
		userhangyeguanxijobService.deleteBatch(yhgx);
		mv.setViewName("gages/userbiaoge");
		return mv;
	}
	
	
}
