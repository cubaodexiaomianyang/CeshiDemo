<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="jpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html >
<html >

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0,user-scalable=0" />
<script type="text/javascript" src="${jpath}/static/FrontStatic/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${jpath}/static/FrontStatic/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${jpath}/static/FrontStatic/css/bootstrap.min.css"/>
<link href="${jpath}/static/FrontStatic/css/main.css" rel="stylesheet" type="text/css" />
<link href="${jpath}/static/FrontStatic/css/zcztbank.css" rel="stylesheet" type="text/css" />
<script>
    $(function(){
        $(".nav_s span").click(function(){
            var _this=$(this);
            $(".nav_s span").each(function(index,e){
                $(e).removeClass("nav_s_o");
            });
            _this.addClass("nav_s_o");
        });
    });
</script>
<style type="text/css">
.title img{
	margin:0px;
}
</style>
<title>无标题文档</title>
</head>

<body>
	<div class="bg">
        <div class="row title">
            <div class="col-2" align="center" id="back">
                <img src="${jpath}/static/FrontStatic/image/back_1.png" />
            </div>
            <div class="col-8" align="center">注册状态</div>
            <div class="col-2" align="center">
            </div>
        </div>
        <div class="row">
            <div class="col-12 nav_s">
                <span>我的</span>
                <span class="nav_s_o" Shangchuan="">所有</span>
            </div>
        </div>

        <div class="row roll">
            <div class="col-12">
                <div id="demo" class="carousel slide" data-ride="carousel">
                  <!-- 指示符 -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                    </ul>
                 
                  <!-- 轮播图片 -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="${jpath}/static/FrontStatic/image/1.png"/>
                            <div class="carousel-caption">
                                <p>描述文字!</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="${jpath}/static/FrontStatic/image/1.png"/>
                            <div class="carousel-caption">
                                <p>描述文字!</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="${jpath}/static/FrontStatic/image/1.png" />
                            <div class="carousel-caption">
                                <p>描述文字!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        <div id="dada">
        	
        </div>
        
    </div>
     <script src="${jpath}/js/system_plugins.js"></script>
    <script type="text/javascript">
    
    var jpath="${jpath}/";
    $(function(){
		$("#back").click(function(){
			location.href="${jpath}/qianduan_front/index";
		});
		$(function(){
	   		var cl=[
	   		        {
	   		        	name:'img'
	   		        },{
	   		        	name:'suoshugongsiname'
	   		        },{
	   		        	name:'gongsijianjie'
	   		        },{
	   		        	name:'createtime'
	   		        },{
	   		        	name:'userId'
	   		        }	
	   		        ];
	   		
	    		$("#back").click(function(){
	    			location.href="${jpath}/qianduan_front/index";
	    		});
	    	
	   		$(".nav_s span").eq(0).click(function(){
	   			console.log("点击当前");
	   			$("#dada").html("");
	   			$.post("${jpath}/qianduan_ZhuCeZhuangTaiController/findmin",{},
	   					function(data){
	   						data = eval("(" + data + ")");
	   						var ji= data.obj[0];
	   						console.log(ji);
	   						var shuju="";
	   						shuju+="<div>";
	   						shuju+="<div>我的头像：<img src='"+jpath+ji.img+"' style='width:8rem;height:8rem;'/></div>";
	   						shuju+="<div>我的姓名："+ji.userName+"</div>" ;
	   						shuju+="<div>我的电话："+ji.phone+"</div>";
	   						shuju+="<div>我的公司："+ji.suoshugongsiname+"</div>";
	   						shuju+="<div>我的积分："+ji.userJifen+"</div>";
	   						shuju+="<div>我的角色定位："+ji.fenleimingcheng+"</div>";
	   						shuju+="<div>账号创建时间："+ji.createtime+"</div>";
	   						shuju+="</div>";
	   						$("#dada").append(shuju);
	   			});
	   		});

	   		var action_a=$(".nav_s").find("span[class='nav_s_o']");
	   		var action_a_id=action_a.attr("Shangchuan");
	   		var query = window.location.search;
	   		var page={};
	   		if(query!=""){
	   			 page={pageNum:1,pageSize:5,id:3};
	   		}else{
	   			 page={pageNum:1,pageSize:5,id:action_a_id};
	   		}
	   		$("#dada").loadNews("${jpath}/qianduan_ZhuCeZhuangTaiController/findshuju",page,cl);
	   		
			$(".nav_s span").eq(1).click(function(){
				$("#dada").html("");
				$("#dada").loadNews("${jpath}/qianduan_ZhuCeZhuangTaiController/findshuju",page,cl);
	   		});
	   		
	   	});
		
	});
    </script>
</body>
</html>
 