package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.ajax.AjaxRes;
import com.common.utils.DateUtils;
import com.common.utils.EncryptUtil;
import com.common.utils.base.UuidUtil;
import com.controller.base.BaseController;
import com.entity.DengLuBiao;
import com.entity.User;
import com.service.DengLuBiaopriceService;
import com.service.UserpriceService;

@Controller
@RequestMapping("/LoginController/")
public class LoginController extends BaseController<Object>{
	@Autowired
	private DengLuBiaopriceService denglubiaoservice;
	@Autowired
	private UserpriceService userService;
	
	@RequestMapping("/chaxun")
	@ResponseBody
	public AjaxRes chaxun(DengLuBiao dl){
		System.out.println("进入后台登陆验证");
		AjaxRes aj =  new AjaxRes();
		String jiami=dl.getPASSWORD();
		dl.setPASSWORD(EncryptUtil.encoderByMd5(jiami));//加密处理
		int zhi=denglubiaoservice.countfj(dl);//查询处理
		if(zhi<=0){
			aj.setResMsg("账号或者密码错误");
			return aj;
		}
		User u=new User();
		u.setDengluId(dl.getDengluid());
		List<User> name=userService.finddlid(u);//根据登陆ID进行查询用户
		if(name.size()==0){
			u.setUserName("管理员");
			name.add(u);
		}
		HttpSession session=getRequest().getSession();
		session.setAttribute("username", name.get(0));
		aj.setResMsg("登陆成功");
		return aj;
	}
	
	@RequestMapping("/tuichu")
	@ResponseBody
	public ModelAndView logout(){
		ModelAndView mv =  new ModelAndView();
		HttpSession session=getRequest().getSession();
		session.setAttribute("login", null);
		mv.setViewName("login" );
		return mv;
	}
	
	@Transactional//事务回滚
	@RequestMapping("/registered")
	@ResponseBody
	public AjaxRes registered(DengLuBiao dl){
		
		System.out.println("进入用户添加方法====未修改的用户信息"+dl);
		AjaxRes aj=new AjaxRes();
		try {
			String jiami=dl.getPASSWORD();
			dl.setId(UuidUtil.get32UUID());
			dl.setPASSWORD(EncryptUtil.encoderByMd5(jiami));
			dl.setLastdenglushijian(DateUtils.getDate("yyyy/MM/dd HH:mm:ss"));
			System.out.println("添加前的获得的用户信息"+dl);
			denglubiaoservice.insert(dl);
			System.out.println("添加后的获得的用户信息"+dl);
			aj.setResMsg("注册成功");
			return aj;
		} catch (Exception e) {
			aj.setResMsg("注册失败");
			return aj;
		}
	}
	
}
