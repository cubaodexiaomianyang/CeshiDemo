package com.controller.htmls;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.ajax.AjaxRes;
import com.common.utils.EncryptUtil;
import com.controller.base.BaseController;
import com.entity.DengLuBiao;
import com.entity.User;
import com.service.DengLuBiaopriceService;
import com.service.UserpriceService;

@Controller
@RequestMapping("/qianduan_DengLuZhuCeController/")
public class DengLuZhuCeController extends BaseController<Object>{
	
	@Autowired
	private DengLuBiaopriceService denglubiaoservice;
	@Autowired
	private UserpriceService userService;
	
	@RequestMapping("/dluser")
	@ResponseBody
	public AjaxRes dluser(DengLuBiao dl){
		AjaxRes aj=new AjaxRes();
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
		session.setAttribute("qianduan_username", name.get(0));
		aj.setResMsg("登陆成功");
		return aj;
	}
	
}
