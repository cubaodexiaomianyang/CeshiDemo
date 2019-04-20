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
<link href="${jpath}/static/FrontStatic/css/related.css" rel="stylesheet" type="text/css" />
<script>
</script>

<title>产品详情</title>
</head>

<body>
	<div class="">
        <div class="row title">
            <div class="col-2" align="center" id="back">
                <img src="${jpath}/static/FrontStatic/image/back_3.png" />
            </div>
            <div class="col-8" align="center">详情</div>
            <div class="col-2" align="center">
                <img src="${jpath}/static/FrontStatic/image/collect_1.png" />
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <img class="image" src="${jpath}/${zx.img}" />
            </div>
        </div>
        <div class="row con">
            <div class="col-12">
                <h5 align="right">贷款倒计时: 30天: 23小时: 48分: 29秒</h5>
            </div>
        </div>
        <div class="row">
            <div class="col-12 bg">
                <h3>融资限额: ${zx.jine}元</h3>
                <h4>产品名称:${zx.biaoti }</h4>
            </div>
        </div>
        <div class="row row_all">
            <div class="col-12">
                <h5>办理条件</h5>
                <p>${zx.tiaojian}</p>
            </div>
        </div>
        <div class="row row_all">
            <div class="col-12">
                <h5>办理流程</h5>
				<p>${zx.liucheng}</p>
            </div>
        </div>
        <div class="row row_all">
            <div class="col-12">
                <h5>产品简介</h5>
				<p>${zx.jianjie}</p>
            </div>
        </div>
        <div class="row row_all">
            <div class="col-12" style="border-top: #d9d9d9 solid 1px; margin: 0.5rem 0;"></div>
        </div>
        <div class="row row_all">
            <div class="col-12">
                <h5>关于我们</h5>
                <ul>
                    <li>公司规模:<span>${zx.gongsiguimo}</span></li>
                    <li>融资周期:<span>${zx.rongzizhouqi}</span></li>
                    <li>联系部门:<span>${zx.lianxibumen}</span></li>
                    <li>联系电话:<span style="color: #f86941">${zx.lianxiwomen}</span></ul>
                </ul>
            </div>
        </div>
        <div class="row row_all" >
            <div class="col-12" style="margin: 1rem 0;">
                <button class="btn">对接</button>
            </div>
        </div>
        <div class="row">
            <div class="col-12" style="border-top: #d9d9d9 solid 1px; margin: 0.5rem 0;"></div>
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
