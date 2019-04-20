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
<link href="${jpath}/static/FrontStatic/css/fwpj.css" rel="stylesheet" type="text/css" />
<script>
    $(function(){
        $(".con_img img").click(function(){
            var _this=$(this);
            _this.attr('src',"${jpath}/static/FrontStatic/image/icon_2.png");
            _this.prevAll().attr('src',"${jpath}/static/FrontStatic/image/icon_2.png");
            _this.nextAll().attr('src',"${jpath}/static/FrontStatic/image/icon_3.png");
        });


        $(".judge span").click(function(){
            var _this=$(this);
            if($(_this).is('.judge_span')){
                _this.removeClass("judge_span");
            }else{
                _this.addClass("judge_span");
            }
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
            <div class="col-8" align="center">服务评级</div>
            <div class="col-2" align="center">
            </div>
        </div>
        <div class="row row_all">
            <div class="col-12">
                <div class="row con">
                    <div class="col-4">
                        <img src="${jpath}/static/FrontStatic/image/news_1.png" />
                    </div>
                    <div class="col-8">
                        <h6 class="con_title">标题</h6>
                        <p class="con_p">内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row line">
            <div class="col-12">
            </div>
        </div>
        <div class="row row_all">
            <div class="col-12">
                <div class="row con">
                    <div class="col-12">
                        <h6 class="con_p" align="center">
                            服务评级
                        </h6>
                        <div class="con_img">
                            <img src="${jpath}/static/FrontStatic/image/icon_2.png" />
                            <img src="${jpath}/static/FrontStatic/image/icon_2.png" />
                            <img src="${jpath}/static/FrontStatic/image/icon_2.png" />
                            <img src="${jpath}/static/FrontStatic/image/icon_2.png" />
                            <img src="${jpath}/static/FrontStatic/image/icon_3.png" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row line">
            <div class="col-12">
            </div>
        </div>

        <div class="row row_all">
            <div class="col-12 judge">
                <div class="row">
                    <div class="col-4" align="left">
                        <span class="judge_span">态度良好</span>
                    </div>
                    <div class="col-4" align="center">
                        <span>态度良好</span>
                    </div>
                    <div class="col-4" align="right">
                        <span>态度良好</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row row_all">
            <div class="col-12 judge">
                <div class="row">
                    <div class="col-4" align="left">
                        <span>态度良好</span>
                    </div>
                    <div class="col-4" align="center">
                        <span>态度良好</span>
                    </div>
                    <div class="col-4" align="right">
                        <span>态度良好</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="row line">
            <div class="col-12">
            </div>
        </div>

        <div class="row row_all">
            <div class="col-12 foot">
                <form accept="" method="">
                    <textarea rows="8" placeholder="请输入您的评价"></textarea>
                    <button>提交</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
 