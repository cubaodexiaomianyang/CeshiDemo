package com.common.lanjieqi;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.entity.User;

public class lanjieqilei implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		
		HttpSession userSession=request.getSession();
		User u=(User) userSession.getAttribute("username");
		String url=request.getContextPath();
		
		
		User uer=(User) userSession.getAttribute("qianduan_username");
		String paths=request.getRequestURI();
		if(paths.contains("qianduan_")){
			
			if(null!=uer){
				return true;
			}else{
				String path=request.getRequestURI();
				if(path.contains("index") || path.contains("register") || path.contains("dluser")){
					return true;
				}else{
					response.sendRedirect(url+"/qianduan_front/register");
				}
			}
		}else{
			if(null!=u){
				return true;
			}else{
				String path=request.getRequestURI();
				if(path.contains("indexlogin") ){
					return true;
				}else{
						response.sendRedirect(url+"/indexlogin");
					}
				}
		}
		return false;
	}

}
