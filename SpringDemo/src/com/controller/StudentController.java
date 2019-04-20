package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.ajax.AjaxRes;
import com.controller.base.BaseController;
import com.entity.Student;
import com.service.StudentpriceService;
@Controller
@RequestMapping("/StudentController/")
public class StudentController extends BaseController<Object>{
	
	@Autowired
	private StudentpriceService studentService;
			
	@RequestMapping("/student")
	public ModelAndView index()throws Exception{
		Student o=new Student(); 
		List<Student> list=studentService.find(o);
		System.out.println(list.size()+"*************");
		ModelAndView mv =  new ModelAndView();
		mv.addObject("student", list.get(0));
		mv.setViewName("pulicpage/student");
		return mv;
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public AjaxRes add(Student stu){
		AjaxRes aj=new AjaxRes();
		aj.setResMsg("成功");
		
		System.out.println("进入该方法,获得网页的请求");
		System.out.println("展示获得的数据"+stu.getId()+","+stu.getName()+","+stu.getSex()+","+stu.getAge());
		
		
		//studentService.insert(stu);
		return aj;
	}
}
