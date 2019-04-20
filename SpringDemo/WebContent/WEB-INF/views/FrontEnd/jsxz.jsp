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
<link href="${jpath}/static/FrontStatic/css/jsxz.css" rel="stylesheet" type="text/css" />
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
</head>

<body>
    <div class="bg">
        <div class="row title">
            <div class="col-2" align="center">
                <img src="${jpath}/static/FrontStatic/image/back.png" />
            </div>
            <div class="col-8" align="center">选择</div>
            <div class="col-2" align="center">
            </div>
        </div>
        <div class="row row_all ">
            <div class="col-12">
                <div class="row con_bg bg_img1">
                    <div class="col-12">
                        <div class="col-12 text1">
                            <span class="col-12 bg_img3">￥</span>
                        </div>
                        <div class="text2 border_color_1"><span>我有融资需求</span></div>
                    </div>
                </div>
                <div class="row con_bg bg_img2">
                    <div class="col-12">
                        <div class="col-12 text1">
                            <span class="col-12 bg_img4">&nbsp;</span>
                        </div>
                        <div class="text2 border_color_2"><span>我是融资机构</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
 