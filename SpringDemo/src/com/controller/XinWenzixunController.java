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
import com.entity.XinWenLanMuBiao;
import com.entity.XinWenZiXun;
import com.service.FuJianBiaopriceService;
import com.service.FuJianGuanXiBiaopriceService;
import com.service.UserpriceService;
import com.service.XinWenLanMuBiaopriceService;
import com.service.XinWenZiXunpriceService;


@Controller
@RequestMapping("/XinWenzixunController/")
public class XinWenzixunController {
	
	@Autowired
	private XinWenZiXunpriceService xinwenzixunService;
	@Autowired
	private UserpriceService userService;
	@Autowired
	private XinWenLanMuBiaopriceService xinwenlanmuService;
	@Autowired
	private FuJianBiaopriceService fujianbiaoService;
	@Autowired
	private FuJianGuanXiBiaopriceService fujianguanxibiaoService;
	
	
	@RequestMapping("/tiaozhuan")
	public String tiaozhuan(){
		return "xinwen/liebiao";
	}
	/**
	 * 查询新闻资讯
	 * @param xwzx
	 * @param page
	 * @return
	 */
	@RequestMapping("/chaxun")
	@ResponseBody
	public AjaxRes chaxun(XinWenZiXun xwzx,Page<XinWenZiXun> page){
		AjaxRes aj =  new AjaxRes();
		Page<XinWenZiXun> name=xinwenzixunService.findByPage(xwzx,page);
		aj.setSucceed(name, "成功");
		return aj;
	}
	/**
	 * 附件的查询
	 * @param fj
	 * @param page
	 * @param id
	 * @return
	 */
	@RequestMapping("/chaxunfj")
	@ResponseBody
	public AjaxRes chaxunfj(FuJianBiao fj,Page<FuJianBiao> page,String id){
		AjaxRes aj =  new AjaxRes();
			Page<FuJianBiao> name=fujianbiaoService.findByPagefj(fj, page,"xinwen", id);
			aj.setSucceed(name, "成功");
		return aj;
	}
	
	
	@RequestMapping("/dtchaxun")
	@ResponseBody
	public AjaxRes dtchaxun(Page<XinWenZiXun> page,String id){
		System.out.println("进入单条查询方法"+id);
		AjaxRes aj =  new AjaxRes();
		
		Page<XinWenZiXun> name=xinwenzixunService.finddt(new XinWenZiXun(),page,id);
		System.out.println("根据ID查询出的单条数据============"+name);
		aj.setSucceed(name, "成功");
		return aj;
	}
	
	@RequestMapping("/shanchu")
	@ResponseBody
	public ModelAndView shanchu(String id){
		ModelAndView mv=new ModelAndView();
		XinWenZiXun jb=new XinWenZiXun();
		jb.setId(id);
		xinwenzixunService.delete(jb);
		mv.setViewName("xinwen/liebiao");
		return mv;
	}
	
	@RequestMapping("/plshanchu")
	@ResponseBody
	public ModelAndView plshanchu(String zz){
		ModelAndView mv=new ModelAndView();
		List<String> uj=Arrays.asList(zz.split(","));
		List<XinWenZiXun> ujj=new ArrayList<XinWenZiXun>();
		
		for(int i=0;i<uj.size();i++){
			XinWenZiXun xw=new XinWenZiXun();
			xw.setId(uj.get(i));
			ujj.add(xw);
		}
		
		xinwenzixunService.deleteBatch(ujj);
		mv.setViewName("xinwen/liebiao");
		return mv;
	}

	@RequestMapping("/xiugai")
	@ResponseBody
	public ModelAndView xiugai(String id){
		
		ModelAndView mv=new ModelAndView();
		XinWenZiXun jb=new XinWenZiXun();
		jb.setId(id);
		List<XinWenZiXun> ujb=xinwenzixunService.find(jb);
		mv.addObject("ujbzhi", ujb.get(0));
		mv.addObject("pd", 1);
		mv.setViewName("xinwen/xinwenxiugai");
		return mv;
	}
	
	@RequestMapping("/xiugaihuichuan")
	@ResponseBody
	public AjaxRes xiugaihuichuan(XinWenZiXun xw,String fjid,String context){
		AjaxRes aj=new AjaxRes();
		xinwenzixunService.updateall(xw,fjid,context);
		return aj;
	}
	
	
	@RequestMapping("/tianjia")
	@ResponseBody	
	public ModelAndView tianjia(){
		ModelAndView mv=new ModelAndView();
		mv.addObject("pd", 2);
		mv.setViewName("xinwen/xinwenxiugai");
		return mv;
	}
	
//	@RequestMapping("/faburen")
//	@ResponseBody
//	public AjaxRes faburen(User user){
//		AjaxRes aj=new AjaxRes();
//		List<User> uts=userService.find(user);
//		aj.setSucceed(uts,"成功");
//		return aj;
//	}
	
	@RequestMapping("/lanmu")
	@ResponseBody
	public AjaxRes lanmu(XinWenLanMuBiao lanm){
		AjaxRes aj=new AjaxRes();
		List<XinWenLanMuBiao> uts=xinwenlanmuService.find(lanm);
		aj.setSucceed(uts, "成功获取值");
		return aj;
	}
	
	@RequestMapping("/tianjiafanhui")
	@ResponseBody
	public AjaxRes tianjiafanhui(XinWenZiXun xwzx,String context,String fjid){
		AjaxRes aj=new AjaxRes();
		try {
			xwzx.setXinwenneirong(context);//新闻内容的添加
			xwzx.setFaburen("管理员A");//这里应该根据当前登陆的用户的名字sesionn直接进行赋值，由于未做登陆，直接进行赋值
			xinwenzixunService.insertfj(xwzx,fjid);//新闻的添加
			aj.setResMsg("成功 ");
		} catch (Exception e) {
			System.out.println("错误"+e.getMessage());
			aj.setResMsg("失败 ");
		}
		return aj;
	}
}
