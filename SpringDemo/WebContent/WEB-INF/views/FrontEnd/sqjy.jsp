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
<link href="${jpath}/static/FrontStatic/css/sqjy.css" rel="stylesheet" type="text/css" />
<script>
    $(function(){
        $(".con_l_img1").click(function(){
            var _this=$(this);
            console.log(_this.css("background-image"));
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
<style type="text/css">
.title img{
margin:0;
}

.btu{
width: 4rem;

background-color: #306aaf;

margin-left: 6rem;

margin-top: 1rem;

border-radius: 0.38rem;

text-align: center;}
.shibie{
	
}
.foot textarea{
	color:#000;
}
.bianhuanyi{
    	background-image:url(${jpath}/static/FrontStatic/image/view_1_2.png) !important;
    }
    .bianhuaner{
    	background-image:url(${jpath}/static/FrontStatic/image/view_2_2.png) !important;
    }
    .bianhuansan{
    	background-image:url(${jpath}/static/FrontStatic/image/view_3_2.png) !important;
    }
</style>
<title>无标题文档</title>
</head>

<body>
	<div class="bg">
        <div class="row title">
            <div class="col-2" align="center">
                <img src="${jpath}/static/FrontStatic/image/back_1.png" />
            </div>
            <div class="col-8" align="center">诉求建议</div>
            <div class="col-2" align="center">
            </div>
        </div>
        <div class="row row_all">
            <div class="col-12">
                <div class="row con">
                    <div class="col-4">
                        <img src="${jpath}/${us.img}" />
                    </div>
                    <div class="col-8">
                        <h6 class="con_title">${us.suoshugongsiname}</h6>
                        <p class="con_p">${us.gongsijianjie}</p>
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
                <div class="row con_l" id="xuanqu"><!--  style="background-image:url(${jpath}/static/FrontStatic/image/view_1_1.png);" -->
                    <div class="col-4"><span class="con_l_img1 div_span" zhi="3" >非常满意</span></div>
                    <div class="col-4 "><span class="con_l_img2" zhi="2" >满意</span></div>
                    <div class="col-4 "><span class="con_l_img3" zhi="1">不满意</span></div>
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
                <form>
                    <textarea id="yijian" rows="8" placeholder="请输入您的评价"></textarea>
                    <div class="btu">提交</div>
                </form>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
    	$("#xuanqu span").eq(0).click(function(){
    		console.log("获取的第一个span");
    		var classNameqi=$(this).attr("class");
    		if(classNameqi.indexOf("con_l_img1")!=-1){
    			$(this).removeClass("con_l_img1");
    			$(this).addClass("bianhuanyi shibie");
    			
    			if($("#xuanqu span").eq(2).attr("class").indexOf("bianhuansan")!=-1){
    				$("#xuanqu span").eq(2).removeClass("bianhuansan shibie");
    				$("#xuanqu span").eq(2).addClass("con_l_img3");
    			}
    			if($("#xuanqu span").eq(1).attr("class").indexOf("bianhuaner")!=-1){
    				$("#xuanqu span").eq(1).removeClass("bianhuaner shibie");
    				$("#xuanqu span").eq(1).addClass("con_l_img2");
    			}
    		}else{
    			$(this).removeClass("bianhuanyi shibie");
    			$(this).addClass("con_l_img1");
    		}
    	});
    	
    	$("#xuanqu span").eq(1).click(function(){
    		console.log("获取的第二个span");
    		var classNameqi=$(this).attr("class");
    		if(classNameqi.indexOf("con_l_img2")!=-1){
    			$(this).removeClass("con_l_img2");
    			$(this).addClass("bianhuaner shibie");
    			
    			if($("#xuanqu span").eq(2).attr("class").indexOf("bianhuansan")!=-1){
    				$("#xuanqu span").eq(2).removeClass("bianhuansan shibie");
    				$("#xuanqu span").eq(2).addClass("con_l_img3");
    			}
    			if($("#xuanqu span").eq(0).attr("class").indexOf("bianhuanyi")!=-1){
    				$("#xuanqu span").eq(0).removeClass("bianhuanyi shibie");
    				$("#xuanqu span").eq(0).addClass("con_l_img1");
    			}
    		}else{
    			$(this).removeClass("bianhuaner shibie");
    			$(this).addClass("con_l_img2");
    		}
		});
    	$("#xuanqu span").eq(2).click(function(){
    		console.log("获取的第三个span");
    		var classNameqi=$(this).attr("class");
    		if(classNameqi.indexOf("con_l_img3")!=-1){
    			$(this).removeClass("con_l_img3");
    			$(this).addClass("bianhuansan shibie");
    			if($("#xuanqu span").eq(1).attr("class").indexOf("bianhuaner")!=-1){
    				$("#xuanqu span").eq(1).removeClass("bianhuaner shibie");
    				$("#xuanqu span").eq(1).addClass("con_l_img2");
    			}
    			if($("#xuanqu span").eq(0).attr("class").indexOf("bianhuanyi")!=-1){
    				$("#xuanqu span").eq(0).removeClass("bianhuanyi shibie");
    				$("#xuanqu span").eq(0).addClass("con_l_img1");
    			}
    		}else{
    			$(this).removeClass("bianhuansan shibie");
    			$(this).addClass("con_l_img3");
    		}
		});
    	
    	$(".btu").click(function(){
    		console.log("进入添加方法");
    		console.log("获取到的指定的满意度");
    		var manyidu=$(".shibie").attr("zhi");
    		console.log(manyidu);
    		console.log("=====");
    		var zhi=$(".judge_span");
    		var pingjia="";
    		console.log(zhi.length);
    		for(var i=0;i<zhi.length;i++){
    			pingjia+=""+$('.judge_span').eq(i).text()+",";
    		}
    		console.log(pingjia);
    		console.log("============-");
    		var toushuneirong=$("#yijian").val();
    		
    		var names="${us.userName}";
    		
    		$.post("${jpath}/qianduan_TouShuController/inserts",{toushuneirong:toushuneirong,beitoushuren:names,pingjia:pingjia,pingfen:manyidu},
    				function(data){
    					console.log("进入反馈");
    						var json=$.parseJSON(data);
    						console.log(json);
    						if(json.resMsg!=null || json.resMsg!=""){
    							console.log(json.resMsg);
    							location.href="${jpath}/qianduan_front/index";
    						}
    					}
    		);
    		
    	});
    </script>
</body>
</html>
 