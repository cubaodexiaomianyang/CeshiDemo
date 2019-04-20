package com.controller.htmls;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.entity.XinWenZiXun;
import com.service.XinWenZiXunpriceService;

@Controller
@RequestMapping("/qianduan_xwzuController/")
public class xwzuController{
	
	@Autowired
	private XinWenZiXunpriceService xinwenzixunService;
	
	@RequestMapping("/findpage")
	@ResponseBody
	public AjaxRes findpage(XinWenZiXun o,Page<XinWenZiXun> page){
		AjaxRes aj=new AjaxRes();
		Page<XinWenZiXun> pages=xinwenzixunService.findByPage(o,page);
		aj.setSucceed(pages, "加载成功");
		return aj;
	}
}
