<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="jpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0,user-scalable=0" />
<script type="text/javascript" src="${jpath}/static/FrontStatic/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${jpath}/static/FrontStatic/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${jpath}/static/FrontStatic/css/bootstrap.min.css"/>
<link href="${jpath}/static/FrontStatic/css/main.css" rel="stylesheet" type="text/css" />
<link href="${jpath}/static/FrontStatic/css/djcg.css" rel="stylesheet" type="text/css" />
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
                <img src="${jpath}/static/FrontStatic/image/back_1.png" />
            </div>
            <div class="col-8" align="center">对接成功项目</div>
            <div class="col-2" align="center">
            </div>
        </div>
        <div class="row">
            <div class="col-12 nav_s">
                <span class="nav_s_o">项目</span>
                <span>项目</span>
                <span>项目</span>
                <span>项目</span>
                <span>项目</span>
            </div>
        </div>

        <div class="row row_all">
            <div class="col-12 content">
                <div class="row">
                    <div class="col-12">
                        <img src="${jpath}/static/FrontStatic/image/Card_1.png" />
                    </div>
                </div>
                <div class="row row_all content_text">
                    <div class="col-12 ">
                        <div>对接成功项目</div>
                        <div><span>231</span>个</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row news">
            <div class="col-12">
                <div class="row news_con">
                    <div class="col-4">
                        <img src="${jpath}/static/FrontStatic/image/news_1.png" />
                    </div>
                    <div class="col-8 text">
                        <div class="row">
                            <div class="col-12 font">
                                <h6>厉以宁:民企就怕算老账后任官员不认前任承诺</h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 font_ell">
                                12月21日，中国新闻社主办的“国是论坛2017年会”在京召开。会上，北大光华管理学院名誉院长厉以宁以“把发展方式转变进行到底”为题发表主旨演讲
                            </div>
                        </div>
                        <div class="row font">
                            <div class="col-12" align="right">2017-12- 2112:23:01</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row news">
            <div class="col-12">
                <div class="row news_con">
                    <div class="col-4">
                        <img src="${jpath}/static/FrontStatic/image/news_1.png" />
                    </div>
                    <div class="col-8 text">
                        <div class="row">
                            <div class="col-12 font">
                                <h6>厉以宁:民企就怕算老账后任官员不认前任承诺</h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 font_ell">
                                12月21日，中国新闻社主办的“国是论坛2017年会”在京召开。会上，北大光华管理学院名誉院长厉以宁以“把发展方式转变进行到底”为题发表主旨演讲
                            </div>
                        </div>
                        <div class="row font">
                            <div class="col-12" align="right">2017-12- 2112:23:01</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row news">
            <div class="col-12">
                <div class="row news_con">
                    <div class="col-4">
                        <img src="${jpath}/static/FrontStatic/image/news_1.png" />
                    </div>
                    <div class="col-8 text">
                        <div class="row">
                            <div class="col-12 font">
                                <h6>厉以宁:民企就怕算老账后任官员不认前任承诺</h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 font_ell">
                                12月21日，中国新闻社主办的“国是论坛2017年会”在京召开。会上，北大光华管理学院名誉院长厉以宁以“把发展方式转变进行到底”为题发表主旨演讲
                            </div>
                        </div>
                        <div class="row font">
                            <div class="col-12" align="right">2017-12- 2112:23:01</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row news">
            <div class="col-12">
                <div class="row news_con">
                    <div class="col-4">
                        <img src="${jpath}/static/FrontStatic/image/news_1.png" />
                    </div>
                    <div class="col-8 text">
                        <div class="row">
                            <div class="col-12 font">
                                <h6>厉以宁:民企就怕算老账后任官员不认前任承诺</h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 font_ell">
                                12月21日，中国新闻社主办的“国是论坛2017年会”在京召开。会上，北大光华管理学院名誉院长厉以宁以“把发展方式转变进行到底”为题发表主旨演讲
                            </div>
                        </div>
                        <div class="row font">
                            <div class="col-12" align="right">2017-12- 2112:23:01</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row news">
            <div class="col-12">
                <div class="row news_con">
                    <div class="col-4">
                        <img src="${jpath}/static/FrontStatic/image/news_1.png" />
                    </div>
                    <div class="col-8 text">
                        <div class="row">
                            <div class="col-12 font">
                                <h6>厉以宁:民企就怕算老账后任官员不认前任承诺</h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 font_ell">
                                12月21日，中国新闻社主办的“国是论坛2017年会”在京召开。会上，北大光华管理学院名誉院长厉以宁以“把发展方式转变进行到底”为题发表主旨演讲
                            </div>
                        </div>
                        <div class="row font">
                            <div class="col-12" align="right">2017-12- 2112:23:01</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
 