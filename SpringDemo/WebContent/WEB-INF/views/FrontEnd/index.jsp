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
<link href="${jpath}/static/FrontStatic/css/index.css" rel="stylesheet" type="text/css" />
<link href="${jpath}/static/FrontStatic/css/main.css" rel="stylesheet" type="text/css" />
<script>
	$(function(){
		$("#zc").click(function(){
			$("#zc").children().addClass("nav_tabs_a");
			$("#tj").children().removeClass("nav_tabs_a");
		});
		$("#tj").click(function(){
			$("#tj").children().addClass("nav_tabs_a");
			$("#zc").children().removeClass("nav_tabs_a");
		});
	});
</script>
<style>
	.title img{
		margin:0;
	}
</style>
<title>无标题文档</title>
</head>

<body>
	<div class="bj">
			<div class="row title">
                 <div class="col-3" align="center">
                 	<img src="${jpath}/static/FrontStatic/image/menu_hamburger.png" />
                 </div>
                 <div class="col-6" align="center">首页</div>
                 <div class="col-3" align="center" id="tianjia">
                 	<img src="${jpath}/static/FrontStatic/image/add.png" />
                 </div>
            </div>
			<div class="row">
                 <div class="col-12">
                    <div id="demo" class="carousel slide" data-ride="carousel">
                      
                      <!-- 指示符 -->
                      <ul class="carousel-indicators">
	                        <c:forEach var="s" items="${sytp}" varStatus="zhi">
	                        	<c:if test="${zhi.index==0}"><li data-target="#demo" data-slide-to="${zhi.index}" class="active"></li></c:if>
	                        	<c:if test="${zhi.index!=0}"><li data-target="#demo" data-slide-to="${zhi.index}"></li></c:if>
	                       </c:forEach>
                      </ul>
                     
                      <!-- 轮播图片 -->
                      <div class="carousel-inner">
                      	<c:forEach var="s" items="${sytp}" varStatus="szhi">
	                       <c:if test="${szhi.index==0}"> <div class="carousel-item active"><img src="${jpath}/${s.fujianlujing}"/></div></c:if>
                        	<c:if test="${szhi.index!=0}"> <div class="carousel-item"><img src="${jpath}/${s.fujianlujing}"/></div></c:if>
                        </c:forEach>
                      </div>
                      
                    </div>
                 </div>
			</div>
			<div class="row nav">
                 <div class="col-12">
                 	<div class="navall nav_1" id="gywm">关于我们</div>
                 	<div class="navall nav_2" id="xwzx">新闻资讯</div>
                 	<div class="navall nav_3" id="tjcp">推荐产品</div>
                 	<div class="navall nav_4" id="rzxq">融资需求</div>
                 	<div class="navall nav_5" id="bzzx">帮助中心</div>
                 </div>
            </div>
            <div class="row line"></div>
			<div class="row inform">
                 <div class="col-2 inform_div">
                 	<div class="line_title">通知</div>
                 	<div class="line_title">公告</div>
                 </div>
                 <div class="col-10">
                 	<marquee class="marquee" behavior="slide" direction="up">
                    	<ol>
                            <li><img src="${jpath}/static/FrontStatic/image/new.png"/>
                                关于印发《四川省钢铁行业化解过剩产能实现脱
                            </li>
                            <li><img src="${jpath}/static/FrontStatic/image/new.png"/>
                                国务院关于印发降低实体经济企业成本工作方案
                            </li>
                        </ol>
                 	</marquee>
                 </div>
            </div>
            
            <div class="row line"></div>
            
            <div class="row dock">
            	<div class="col-12">
                	<span>&nbsp;</span>对接查询<span>&nbsp;</span>
                </div>
            </div>
           	<div class="row">
            	<div class="col-12">
                	<div class="line_con float_left line_con1">
                    	<div class="line_nav">
                        	<span style="color:#2066b2">|</span>
                        	企业融资对接
                        </div>
                    	<ul>
                        	<li>
                            	<img src="${jpath}/static/FrontStatic/image/state.png"/>
                            	注册状态
                            </li>
                        	<li>
                            	<img src="${jpath}/static/FrontStatic/image/jf.png"/>
                            	信用积分
                            </li>
                        	<li id="jrjg">
                            	<img src="${jpath}/static/FrontStatic/image/jg.png"/>
                            	金融机构
                            </li>
                        	<li>
                            	<img src="${jpath}/static/FrontStatic/image/cp.png"/>
                            	融资产品
                            </li>
                        	<li id="shzt">
                            	<img src="${jpath}/static/FrontStatic/image/zt.png"/>
                            	审核状态
                            </li>
                        	<li>
                            	<img src="${jpath}/static/FrontStatic/image/cash-4.png"/>
                            	对接结果
                            </li>
                        </ul>
                    </div>
                    <div class="float_left" style="width:5%">&nbsp;</div>
                    <div class="line_con float_left line_con2">
                    	<div class="line_nav">
                        	<span style="color:#f86941">|</span>
                        	金融机构对接
                       </div>
                    	<ul>
                        	<li id="zczt">
                            	<img src="${jpath}/static/FrontStatic/image/clipboard.png"/>
                                注册状态
                       		</li>
                        	<li>
                            	<img src="${jpath}/static/FrontStatic/image/coin.png"/>
                                对接积分
                         	</li>
                        	<li>
                            	<img src="${jpath}/static/FrontStatic/image/zt.png"/>
                                审核状态
                         	</li>
                        	<li>
                            	<img src="${jpath}/static/FrontStatic/image/cash-3.png"/>
                                对接企业
                        	</li>
                        	<li>
                            	<img src="${jpath}/static/FrontStatic/image/cash-4.png"/>
                                对接结果
                        	</li>
                        </ul>
                    </div>
                    <br class="clear_float"/>
                </div>
            </div>
            <div class="row line"></div>
            <div class="row">
            	<div class="col-12">
                    <ul id="myTab" class="nav nav-tabs">
                        <li class="active" id="zc">
                            <a class="nav_tabs_a" href="#zxzc" data-toggle="tab">
                               		最新政策
                            </a>
                        </li>
                        <li id="tj"><a href="#rztj" data-toggle="tab">融资统计</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade in active" id="zxzc">        
            				<div class="row policy">
                            	<div class="col-4 policy_1">国家政策</div>
                            	<div class="col-4 policy_2">本地政策</div>
                            	<div class="col-4 policy_3">热门项目</div>
                            </div>
            				<div class="row policy">
                            	<div class="col-4 policy_4">金融政策</div>
                            	<div class="col-4 policy_5">金融知识</div>
                            	<div class="col-4"></div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="rztj">
                            <div class="row count">
                            	<div class="col-4 ">
                                	<p>1000<span>万元</span></p>
                                  	  累计融资金额
                                </div>
                            	<div class="col-4 ">
                                	<p>32<span>个</span></p>
                                   	 注册金融机构
                                </div>
                            	<div class="col-4 ">
                                	<p>299<span>人</span></p>
                                  	  注册企业会员
                                </div>
                            </div>
            				<div class="row count">
                            	<div class="col-4 ">
                                	<p>99<span>种</span></p>
                                    	融资产品服务
                                </div>
                            	<div class="col-4 ">
                                	<p>72<span>个</span></p>
                                   	 对接成功项目
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row line"></div>
            <div class="row foot" style="margin-top:0.8rem;">
            	<div class="col-6">
                	<img src="${jpath}/static/FrontStatic/image/foot_3.png"/>
                </div>
            	<div class="col-6" id="suqiu">
                	<img src="${jpath}/static/FrontStatic/image/foot_2.png"/>
                </div>
            </div> 
            <div class="row foot">
            	<div class="col-6">
                	<img src="${jpath}/static/FrontStatic/image/foot_4.png"/>
                </div>
            	<div class="col-6">
                	<img src="${jpath}/static/FrontStatic/image/foot_1.png"/>
                </div>
            </div>
            
	</div>
	<script type="text/javascript">
		$(function(){
			
			$("#gywm").click(function(){
				location.href="${jpath}/qianduan_front/about";
			});
			$("#xwzx").click(function(){
				location.href="${jpath}/qianduan_front/xwzx";
			});
			$("#tjcp").click(function(){
				location.href="${jpath}/qianduan_front/tjcp";
			});
			$("#rzxq").click(function(){
				location.href="${jpath}/qianduan_front/rzxq";
			});
			$("#bzzx").click(function(){
				location.href="${jpath}/qianduan_front/help";
			});
			$("#tianjia").click(function(){
				location.href="${jpath}/qianduan_front/cpsc";
			});
			$("#shzt").click(function(){
				location.href="${jpath}/qianduan_front/shzt";
			});
			$("#zczt").click(function(){
				location.href="${jpath}/qianduan_front/zcztbank";
			});
			$("#jrjg").click(function(){
				location.href="${jpath}/qianduan_front/zcztbank?id"+3;
			});
			$("#suqiu").click(function(){
				location.href="${jpath}/qianduan_front/sqjyall";
			});
		});
	</script>
	
</body>
</html>
 