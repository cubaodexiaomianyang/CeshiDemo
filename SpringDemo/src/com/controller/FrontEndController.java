package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.controller.base.BaseController;
import com.entity.ChanPin;
import com.entity.FuJianBiao;
import com.entity.GuanYuWoMen;
import com.entity.User;
import com.entity.UserJob;
import com.entity.XinWenLanMuBiao;
import com.entity.XinWenZiXun;
import com.service.ChanPinpriceService;
import com.service.FuJianBiaopriceService;
import com.service.GuanYuWoMenpriceService;
import com.service.UserJobpriceService;
import com.service.UserpriceService;
import com.service.XinWenLanMuBiaopriceService;
import com.service.XinWenZiXunpriceService;
/**
 * 前端页面总控制器
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/qianduan_front/")
public class FrontEndController extends BaseController<Object>{
	
	@Autowired
	private XinWenLanMuBiaopriceService xinwenlanmuService;
	@Autowired
	private FuJianBiaopriceService fujianbiaoService;
	@Autowired
	private GuanYuWoMenpriceService guanyuwomenService;
	@Autowired
	private XinWenZiXunpriceService xinwenzixunService;
	@Autowired
	private ChanPinpriceService chanpinService;
	@Autowired
	private UserJobpriceService userjobService;
	@Autowired
	private UserpriceService userService;
	
	@RequestMapping("/about")
	public ModelAndView about(){
		ModelAndView mv=new ModelAndView();
		GuanYuWoMen g=new GuanYuWoMen();
		List<GuanYuWoMen> gs=guanyuwomenService.find(g);
		mv.addObject("gywms",gs);
		mv.setViewName("FrontEnd/about");
		return mv;
	}
	
	@RequestMapping("/cpsc")
	public ModelAndView cpsc(){ 
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/cpsc");
		return mv;
	}

	@RequestMapping("/shzt")
	public ModelAndView shzt(){ 
		ModelAndView mv=new ModelAndView();
		UserJob uj=new UserJob();
		List<UserJob> ujs=userjobService.find();
		System.out.println("输出获取的产品分类=="+ujs);
		mv.addObject("tjcp",ujs);
		mv.setViewName("FrontEnd/shzt");
		return mv;
	}
	
	@RequestMapping("/tjcp")
	public ModelAndView tjcp(){ 
		ModelAndView mv=new ModelAndView();
		UserJob uj=new UserJob();
		List<UserJob> ujs=userjobService.find();
		System.out.println("输出获取的产品分类=="+ujs);
		mv.addObject("tjcp",ujs);
		mv.setViewName("FrontEnd/tjcp");
		return mv;
	}
	
	@RequestMapping("/djcg")
	public ModelAndView djcg(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/djcg");
		return mv;
	}
	@RequestMapping("/djjgqy")
	public ModelAndView djjgqy(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/djjgqy");
		return mv;
	}
	@RequestMapping("/finance")
	public ModelAndView finance(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/finance");
		return mv;
	}
	@RequestMapping("/fwpj")
	public ModelAndView fwpj(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/fwpj");
		return mv;
	}
	@RequestMapping("/help")
	public ModelAndView help(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/help");
		return mv;
	}
	@RequestMapping("/index")
	public ModelAndView index(){
		ModelAndView mv=new ModelAndView();
		FuJianBiao fjb=new FuJianBiao();
		fjb.setFujianstate("index");
		List<FuJianBiao> lm=fujianbiaoService.findstate(fjb);
		mv.addObject("sytp",lm);
		mv.setViewName("FrontEnd/index");
		return mv;
	}
	@RequestMapping("/jsxz")
	public ModelAndView jsxz(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/jsxz");
		return mv;
	}
	/**
	 * 根据传过来的新闻资讯的id进行查询详细页面
	 * @param xwzx
	 * @return
	 */
	@RequestMapping("/newdetails")
	public ModelAndView newdetails(XinWenZiXun xwzx,String id){
		ModelAndView mv=new ModelAndView();
		XinWenZiXun jb=new XinWenZiXun();
		jb.setId(id);
		XinWenZiXun jber=xinwenzixunService.finddantiao(jb);
		mv.addObject("zx",jber);
		mv.setViewName("FrontEnd/newdetails");
		return mv;
	}
	@RequestMapping("/news")
	public ModelAndView news(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/news");
		return mv;
	}
	@RequestMapping("/register")
	public ModelAndView register(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/register");
		return mv;
	}
	
	/**
	 * 根据传过来的产品的id 进行查询详细页面
	 * @param ChanPin
	 * @return
	 */
	@RequestMapping("/related")
	public ModelAndView related(ChanPin cp){
		ModelAndView mv=new ModelAndView();
		System.out.println("得到"+cp.getChanpinId());
		ChanPin c =new ChanPin();
		c.setChanpinId(cp.getChanpinId());//进行假设性数据查询
		ChanPin cer=chanpinService.findid(c);
		mv.addObject("zx",cer);
		mv.setViewName("FrontEnd/related");
		return mv;
	}
	@RequestMapping("/rzzt")
	public ModelAndView rzzt(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/rzzt");
		return mv;
	}
	@RequestMapping("/rzxq")
	public ModelAndView rzxq(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/rzxq");
		return mv;
	}
	
	@RequestMapping("/sqjy")
	public ModelAndView sqjy(String id){
		ModelAndView mv=new ModelAndView();
		System.out.println("返回的id"+id);
		User u=new User();
		u.setUserId(id);
		User us=userService.findid(u);
		mv.addObject("us",us);
		mv.setViewName("FrontEnd/sqjy");
		return mv;
	}

	@RequestMapping("/zcztbank")
	public ModelAndView zcztbank(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/zcztbank");
		return mv;
	}
	
	
	@RequestMapping("/sqjyall")
	public ModelAndView sqjyall(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("FrontEnd/sqjyall");
		return mv;
	}
	
	@RequestMapping("/xwzx")
	public ModelAndView xwzx(){
		ModelAndView mv=new ModelAndView();
		XinWenLanMuBiao jb=new XinWenLanMuBiao();
		List<XinWenLanMuBiao> lm=xinwenlanmuService.find(jb);
		mv.addObject("zx",lm);
		mv.setViewName("FrontEnd/xwzx");
		return mv;
	}
}
