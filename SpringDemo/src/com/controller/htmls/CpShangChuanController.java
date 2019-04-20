package com.controller.htmls;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.common.utils.base.UuidUtil;
import com.entity.ChanPin;
import com.service.ChanPinpriceService;

@Controller
@RequestMapping("/qianduan_CpShangChuanController/")
public class CpShangChuanController {
	
	@Autowired
	private ChanPinpriceService chanpinService;
	
//	@RequestMapping("/inserts")
//	@ResponseBody
//	public ModelAndView inserts(ChanPin cp,HttpServletRequest request) throws ParseException{
//		ModelAndView mv=new ModelAndView();
//		//时间的截取转换日期
////		String shijian=cp.getRongzizhouqi();
////		String[] dates=shijian.split("天");
////		int day=Integer.parseInt(dates[0]);
////		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd"); 
////		Date dt=new Date();//当前时间
////		Calendar rightNow = Calendar.getInstance();
////		rightNow.setTime(dt);
////		rightNow.add(Calendar.DAY_OF_YEAR,day);//日期加10天 
////		Date dt1=rightNow.getTime();
////		String reStr = sdf.format(dt1); 
//		//当前用户的用户id获取
////		HttpSession userSession=request.getSession();
////		User u=(User) userSession.getAttribute("username");
//		String id=UuidUtil.get32UUID();
//		cp.setChanpinId(id);
//		cp.setImg("upload/file/2018113024a232a67fd04ab781cb7ed7598509d4.jpg");
//		
//		//cp.setFaburen(u.getUserName());
//		cp.setChanpingfenleiid("1");
//		chanpinService.insert(cp);
//		mv.addObject("zx",cp);
//		mv.setViewName("FrontEnd/related");
//		return mv;
//	}
	
	@RequestMapping("/inserts")
	@ResponseBody
	public AjaxRes inserts(ChanPin cp,HttpServletRequest request){
		AjaxRes aj=new AjaxRes();
			//xinwenlanmuService.updateall(xwlm,fjid);
		
		System.out.println("获取的图片的base64位置"+cp.getImg());
		String id=UuidUtil.get32UUID();
		cp.setChanpinId(id);
		cp.setImg("upload/file/2018113024a232a67fd04ab781cb7ed7598509d4.jpg");
		cp.setChanpingfenleiid("1");
		chanpinService.insert(cp);
		aj.setSucceed(cp, "成功");
		return aj;
	}
	
	@RequestMapping("/tuijian")
	@ResponseBody
	public AjaxRes tuijian(ChanPin cp,Page<ChanPin> page){
		AjaxRes aj=new AjaxRes();
		System.out.println("进入后台");
		Page<ChanPin> pages=chanpinService.findByPagetj(cp,page);
		aj.setSucceed(pages, "加载成功");
		return aj;
	}
	
	@RequestMapping("/shcp")
	@ResponseBody
	public AjaxRes shcp(ChanPin cp,Page<ChanPin> page){
		AjaxRes aj=new AjaxRes();
		System.out.println("进入后台");
		Page<ChanPin> pages=chanpinService.findByPagesh(cp,page);
		aj.setSucceed(pages, "加载成功");
		return aj;
	}
}
