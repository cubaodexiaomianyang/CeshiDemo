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
<link href="${jpath}/static/FrontStatic/css/newdetails.css" rel="stylesheet" type="text/css" />
<script>
</script>

<title>无标题文档</title>
</head>

<body>
	<div class="bg">
        <div class="row title">
            <div class="col-2" align="center" id="back">
                <img src="${jpath}/static/FrontStatic/image/back_2.png" />
            </div>
            <div class="col-8" align="center">新闻详情</div>
            <div class="col-2" align="center">
                <img src="${jpath}/static/FrontStatic/image/collect.png" />
            </div>
        </div>
        <div class="row row_all">
            <div class="col-6 nav" >
                <img src="${jpath}/static/FrontStatic/image/icon_4.png" />
            </div>
            <div class="col-6 nav_tex" style="text-align: right">
                ${zx.fabushijian}
            </div>
        </div>
        <div class="row row_all">
            <div class="col-12 content" >
                <h5>${zx.biaoti}</h5>
               	${zx.xinwenneirong}
            </div>
        </div>

        <div class="row row_all">
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
                        </div>
                        <div class="carousel-item">
                            <img src="${jpath}/static/FrontStatic/image/1.png"/>
                        </div>
                        <div class="carousel-item">
                            <img src="${jpath}/static/FrontStatic/image/1.png" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row row_all">
            <div class="col-12 content" >
            		${zx.xinwenneirong}
                <p align="right">文/	${zx.faburen}</p>
            </div>
        </div>
        <div class="row foot_height">
            <div class="col-1" ></div>
                <div class="col-10">
                    <div class="row foot">
                        <div class="col-4 foot_img1" >点赞</div>
                        <div class="col-4 foot_img2 foot_border" >留言</div>
                        <div class="col-4 foot_img3 " >分享</div>
                    </div>
                </div>
            <div class="col-1" ></div>
        </div>
    </div>
    
    <script type="text/javascript">
    	$(function(){
    		$("#back").click(function(){
    			location.href="${jpath}/qianduan_front/index";
    		});
    	});
    </script>
</body>
</html>
 