package com.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.entity.ChanPin;
import com.entity.ShenHe;
import com.entity.UserJob;
import com.service.ChanPinpriceService;
import com.service.UserJobpriceService;

@Controller
@RequestMapping("/CpController/")
public class CpController {
	@Autowired
	private ChanPinpriceService chanpinService;
	@Autowired
	private UserJobpriceService userjobService;

	@RequestMapping("/tiaozhuan")
	public String tiaozhuan(){
		return "chanpin/chanpinliebiao";
	}
	
	@RequestMapping("/chaxun")
	@ResponseBody
	public AjaxRes chaxun(ChanPin cp,Page<ChanPin> page){
		AjaxRes aj =  new AjaxRes();
		Page<ChanPin> name=chanpinService.findByPage(cp,page);
		aj.setSucceed(name, "成功");
		return aj;
	}
	
	
	@RequestMapping("/shanchu")
	@ResponseBody
	public ModelAndView shanchu(String id){
		ModelAndView mv=new ModelAndView();
		chanpinService.deleteall(id);
		mv.setViewName("chanpin/chanpinliebiao");
		return mv;
	}

	@RequestMapping("/plshanchu")
	@ResponseBody
	public ModelAndView plshanchu(String zz){
		ModelAndView mv=new ModelAndView();
		System.out.println("进入批量删除方法，输出下获取到的id==="+zz);
		
		chanpinService.deleteplall(zz);
		mv.setViewName("chanpin/chanpinliebiao");
		return mv;
	}
	
	@RequestMapping("/xiugai")
	@ResponseBody
	public ModelAndView xiugai(String id){
		ModelAndView mv=new ModelAndView();
		System.out.println("获取的ID"+id);
		ChanPin cp=new ChanPin();
		cp.setChanpinId(id);
		List<ChanPin> cps=chanpinService.find(cp);
		System.out.println("获取得的实体上传的虚拟字段的内容"+cps.get(0).getShenhezhuangtai()+"==="+cps.get(0).getBohuiyuanyin()+"===="+cps.get(0).getShenhecishu());
		mv.addObject("ugx", cps.get(0));
		
		UserJob j=new UserJob();
		j.setId(cps.get(0).getChanpingfenleiid());
		List<UserJob> ujs=userjobService.find(j);
		System.out.println("查询出的类型===="+ujs);
		mv.addObject("uj", ujs.get(0));
		
		mv.addObject("pd", 1);
		
		mv.setViewName("chanpin/chanpinxiugai");
		return mv;
	}
	
	@RequestMapping("/tianjia")
	@ResponseBody
	public ModelAndView tianjia(){
		ModelAndView mv=new ModelAndView();
		mv.addObject("pd", 2);
		mv.setViewName("chanpin/chanpinxiugai");
		return mv;
	}
	
	@RequestMapping("/leixing")
	@ResponseBody
	public AjaxRes job(UserJob job){
		AjaxRes aj=new AjaxRes();
		List<UserJob> ujs=userjobService.find(job);
		aj.setSucceed(ujs, "获取数据成功");
		return aj;
	}
	
	
	@RequestMapping("/tianjiafanhui")
	@ResponseBody
	public AjaxRes tianjiafanhui(ChanPin cp,String fjid,UserJob job,HttpServletRequest request){
		AjaxRes aj=new AjaxRes();
		chanpinService.insertall(cp,fjid,job,request);
		return aj;
	}
	
	
	@RequestMapping("/xiugaihuichuan")
	@ResponseBody
	public AjaxRes xiugaihuichuan(ChanPin cp,String fjid,UserJob job,ShenHe sh,HttpServletRequest request){
		AjaxRes aj=new AjaxRes();
		chanpinService.updateall(cp,fjid,job,sh,request);
		return aj;
	}
	
}
