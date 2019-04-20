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

<title>无标题文档</title>

<style type="text/css">
.title img{
margin:0px;
}
.title{
background-color:#f86941;
}
.nav_s_o{
background-color:#f86941;
}
.carousel-indicators .active{
background-color:#f86941;
}
</style>
</head>

<body>
	<div class="bg">
        <div class="row title">
            <div class="col-2" align="center" id="back">
                <img src="${jpath}/static/FrontStatic/image/back_1.png" />
            </div>
            <div class="col-8" align="center">新闻资讯</div>
            <div class="col-2" align="center">
            </div>
        </div>
        <div class="row">
            <div class="col-12 nav_s">
           		 <c:forEach var="s" items="${zx}" varStatus="szhi">
                	<c:if test="${szhi.index==0}"><span class="nav_s_o" Shangchuan="${s.id}">${s.lanmumingcheng}</span></c:if>
              		 <c:if test="${szhi.index!=0}"><span Shangchuan="${s.id}">${s.lanmumingcheng}</span></c:if>
               	</c:forEach>
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
   		var cl=[
   		        {
   		        	name:'fengmiantupian'
   		        },{
   		        	name:'biaoti'
   		        },{
   		        	name:'xinwenneirong'
   		        },{
   		        	name:'fabushijian'
   		        },{
   		        	name:'id'
   		        }
   		        ];
   		
    		$("#back").click(function(){
    			location.href="${jpath}/qianduan_front/index";
    		});
    	
   		$(".nav_s span").click(function(){
   			var id=$(this).attr("Shangchuan");
   			$("#dada").html("");
   			var page={pageNum:1,pageSize:5,xinwenlanmuid:id};
   			$("#dada").loadNews("${jpath}/qianduan_xwzuController/findpage",page,cl);
   		});
   		var action_a=$(".nav_s").find("span[class='nav_s_o']");
   		var action_a_id=action_a.attr("Shangchuan");
   		var page={pageNum:1,pageSize:5,xinwenlanmuid:action_a_id};
   		$("#dada").loadNews("${jpath}/qianduan_xwzuController/findpage",page,cl);
   		
   		
   		$("body").on("click",".news_con",function(){
   			console.log("进入获取的id方法");
   			var zhiid=$(this).attr("huoquid");
   			location.href="${jpath}/qianduan_front/newdetails?id="+zhiid;
   		});
   		
   	});
   	
   	
   </script>
</body>
</html>
 