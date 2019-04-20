<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="jpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html >
<html >
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0,user-scalable=0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${jpath}/static/FrontStatic/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${jpath}/static/FrontStatic/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${jpath}/static/FrontStatic/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="${jpath}/static/FrontStatic/css/login.css"/>
<script>
	$(function(){
		$("#register").hide();
		$("#reg").parent().removeClass("log_icon");
		$("#reg").click(function(){
			$("#login").hide();
			$("#register").show();
			$("#lg").parent().removeClass("log_icon");
			$("#reg").parent().addClass("log_icon");
		});
		$("#lg").click(function(){
			$("#register").hide();
			$("#login").show();
			$("#reg").parent().removeClass("log_icon");
			$("#lg").parent().addClass("log_icon");
		});
	});
</script>
<title>无标题文档</title>
</head>

<body>
	<div class="">
    	<div class="container bj">
        	<div class="row title">
            	<div class="col-12" style="margin-top:2.6rem;"><h1>双流互联网+政银企</h1></div>  
           	</div>
            <div class="row title">
            	<div class="col-12"><h1>自动对接融资服务综合平台</h1></div>
           	</div>
            <div class="row title">
            	<div class="col-12"><h5>TheInternett government andsilverenterpriseautomatic</h5></div>  
           	</div>
            <div class="row title">
            	<div class="col-12" style="margin-bottom:2.6rem;"><h5>dockingfinancing service integrated platform</h5></div>  
           	</div>
            <div class="row log">
            	<div class="col-6 log_icon">
                	<span style="padding:0.6rem;" id="reg">注册</span>
                </div>
            	<div class="col-6 log_icon">
                	<span style="padding:0.6rem;" id="lg">登陆</span>
                </div>
           	</div>
        </div>
        <form id="login" method="post">
        	<div class="container content">
                <div class="row login">
                    <div class="col-12">
                        <input class="input user" type="text" id="dengluid" name="dengluid" placeholder="邮箱/用户名" />
                    </div>  
                </div>
                <div class="row login">
                 	<div class="col-12">
                    	<input class="input pwd" type="password" id="PASSWORD" name="PASSWORD" placeholder="密码" />
                    </div>  
                </div>
                
                <div class="row login">
                    <div class="col-12">
                    	<div class="btn btn1" id="denglu">登陆</div>
                    </div>  
                </div>
                <div class="row login">
                 	<div class="col-12">
                    	<button class="btn btn2">手机登陆</button>
                    </div>  
                </div>
        	</div>
            <div class="container foot">
        	<div class="row">
            	<div class="col-12">忘记密码？
                	<a href="">请点击</a>
                </div>  
           	</div>
        </div>
        </form>
        
        <form id="register" method="post">
        	<div class="container content">
                <div class="row login">
                    <div class="col-12">
                        <input class="input input emil" type="text" name="" placeholder="邮箱" />
                    </div>  
                </div>
                <div class="row login">
                    <div class="col-12">
                        <input class="input user" type="text" name="" placeholder="邮箱" />
                    </div>  
                </div>
                <div class="row login">
                 	<div class="col-12">
                    	<input class="input pwd" type="password" name="" placeholder="密码" />
                    </div>  
                </div>
                
                <div class="row login">
                    <div class="col-12">
                    	<button class="btn btn1">注册</button>
                    </div>  
                </div>
        	</div>
            <div class="container foot">
        	<div class="row">
            	<div class="col-12">已经注册了吗？
                	<a href="">请登陆</a>
                </div>  
           	</div>
        </div>
        </form>
    </div>
    
   		<%@ include file="../charu/button.jsp"%>
    <script type="text/javascript">
    			$(function(){
    				$("#denglu").click(function(){
    					console.log("进入登陆点击");
    					var sblimt =$("#login");
    					$.post("${jpath}/qianduan_DengLuZhuCeController/dluser",chuanzhi(sblimt),function(data){
    						console.log("进入登陆方法的返回");
    						console.log(data);	
    						var json=$.parseJSON(data);
    							if(json.resMsg!=null || json.resMsg!=""){
    								alert(json.resMsg);
    								console.log(json.resMsg);
    							}
    							location.href="${jpath}/qianduan_front/index";
    						}
    					);
    				});
    			});
    </script>
</body>
</html>
