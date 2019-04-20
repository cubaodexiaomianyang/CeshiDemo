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
<link href="${jpath}/static/FrontStatic/css/about.css" rel="stylesheet" type="text/css" />
<title>无标题文档</title>

<style>
	.title img{
		margin:0;
	}
</style>
<script>
	$(function(){

		$(".nav_con span").click(function(){
            var _this=$(this);
            $(".nav_con span").each(function(index,e){
                $(e).parent().next().removeClass("nav_icon1");
            });
            _this.parent().next().addClass("nav_icon1");
        });
	});
</script>
</head>

<body>
	<div>
		<div class="row title">
			<div class="col-1" id="back">
				<img src="${jpath}/static/FrontStatic/image/back.png" />
			</div>
			<div class="col-10" >关于我们</div>
			<div class="col-1" >
				<img src="${jpath}/static/FrontStatic/image/add2.png" />
        	</div>
		</div>
		<div class="row">
			<div class="col-3" >
                <div class="row nav">
                    <div class="col-8 nav_con" >
                    	<span class="nav_img1" chuan="jianjie">简介</span>
                    </div>
                    <div class="col-4 nav_icon nav_icon1" ></div>
                </div>
                <div class="row nav">
                    <div class="col-8 nav_con" >
                    	<span class="nav_img2" chuan="zhidu">制度</span>
                    </div>
                    <div class="col-4 nav_icon" ></div>
                </div>
                <div class="row nav">
                    <div class="col-8 nav_con" >
                    	<span class="nav_img3" chuan="tuandui">团队</span>
                    </div>
                    <div class="col-4 nav_icon" ></div>
                </div>
                <div class="row nav">
                    <div class="col-8 nav_con" >
                    	<span class="nav_img4" chuan="goujia">构架</span>
                    </div>
                    <div class="col-4 nav_icon" ></div>
                </div>
                <div class="row nav">
                    <div class="col-8 nav_con" >
                    	<span class="nav_img5" chuan="lianxi">联系</span>
                    </div>
                    <div class="col-4 nav_icon" ></div>
                </div>
                <div class="row nav">
                    <div class="col-8 nav_con"  style="height: 3rem">
                    </div>
                    <div class="col-4" ></div>
                </div>
                
            </div>
            <c:forEach var="s" items="${gywms}">
            			<input type="hidden" id="jianjie" value="${s.jianjie}">
            			<input type="hidden" id="lianxi" value="${s.lianxi}">
            			<input type="hidden" id="zhidu" value="${s.zhidu}">
            			<input type="hidden" id="tuandui" value="${s.tuandui}">
            			<input type="hidden" id="goujia" value="${s.goujia}">
            </c:forEach>
			<div class="col-8 con" >
            	<div class="con_1 con_div" id="zhi">
            		
                </div>
                
            </div>
			<div class="col-1" ></div>
        </div>
       	<div class="row">
        	<div class="col-3"></div>
        	<div class="col-8">
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
        	<div class="col-1" ></div>
        </div>
    </div>
    <script type="text/javascript">
    	
    	$(function(){
    		$(".nav_con span").click(function(){
    			var namezhi=$(this).attr("chuan");
    			$("#zhi").html("");
    			$("#zhi").append($("#"+namezhi).val());
    		});
    		
        		$("#back").click(function(){
        			location.href="${jpath}/qianduan_front/index";
        		});
        	
    		$("#zhi").append($("#jianjie").val());
    	});
    	
    </script>
</body>
</html>
