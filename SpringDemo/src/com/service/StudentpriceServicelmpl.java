package com.service;

import org.springframework.stereotype.Service;

import com.common.utils.base.UuidUtil;
import com.entity.Student;
import com.service.base.BaseServiceImp;

@Service("StudentpriceService")
public class StudentpriceServicelmpl extends BaseServiceImp<Student> implements StudentpriceService {
	
	/**
	 * 将获取的id值设置值，利用了所谓的切面编程
	 */
	public void insert(Student stu){
		stu.setId(UuidUtil.get32UUID());
		baseDao.insert(stu);
	}
}
