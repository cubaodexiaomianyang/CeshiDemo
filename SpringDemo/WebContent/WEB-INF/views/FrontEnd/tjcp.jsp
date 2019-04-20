<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="jpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html >
<html >

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0,user-scalable=0" />
<link rel="stylesheet" type="text/css" href="${jpath}/static/FrontStatic/css/bootstrap.min.css"/>
<link href="${jpath}/static/FrontStatic/css/main.css" rel="stylesheet" type="text/css" />
<link href="${jpath}/static/FrontStatic/css/rzzt.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${jpath}/static/FrontStatic/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${jpath}/static/FrontStatic/js/bootstrap.min.js"></script>
<script>
    $(function(){
        $(".list").click(function(){
            var _this=$(this);
            $(".list").each(function(index,e){
                $(e).removeClass("list_o");
            });
            _this.addClass("list_o");
        });
    });
</script>
<style>
	.title img{
		margin:0;
	}
</style>
<title>推荐产品</title>
</head>

<body>
	<div class="">
        <div class="row title">
            <div class="col-2" align="center" id="back">
                <img src="${jpath}/static/FrontStatic/image/back_3.png" />
            </div>
            <div class="col-8" align="center">推荐产品</div>
            <div class="col-2" align="center">
                <img src="${jpath}/static/FrontStatic/image/add.png" />
            </div>
        </div>
        <div class="row con">
            <div class="col-3" id="xuanze">
            	<c:forEach var="s" items="${tjcp}" varStatus="szhi">
            		<c:if test="${szhi.index==0}"><div class="col-12 list list_o" scid="${s.id}">${s.jobmingzi}</div></c:if>
            		<c:if test="${szhi.index!=0}"><div class="col-12 list" scid="${s.id}">${s.jobmingzi}</div></c:if>
            	</c:forEach>
            </div>
            <div class="col-9" id="kuang">
                       
            </div>
        </div>

    </div>
    <script src="${jpath}/js/system_plugins.js"></script>
    <script type="text/javascript">
    	var jpath="${jpath}/";
    
    	$(function(){
    		
    		var cl=[{
    			name:'jine'
    		},{
    			name:'biaoti'
    		},{
    			name:'gongsiguimo'
    		},{
    			name:'rongzizhouqi'
    		},{
    			name:'lianxiwomen'
    		}
    		];
    		
        		$("#back").click(function(){
        			location.href="${jpath}/qianduan_front/index";
        		});
        	
    		$("#xuanze>div").click(function(){
    			$("#kuang").html("");
    			var id=$(this).attr("scid");
    			var parmens={pageNum:1,pageSize:20,chanpingfenleiid:id};
    			$("#kuang").loadNewzt("${jpath}/qianduan_CpShangChuanController/tuijian",parmens,cl);
    		});
    		var parmens={pageNum:1,pageSize:20,chanpingfenleiid:1};
    		$("#kuang").loadNewzt("${jpath}/qianduan_CpShangChuanController/tuijian",parmens,cl);
    	});
    </script>
    
</body>
</html>
