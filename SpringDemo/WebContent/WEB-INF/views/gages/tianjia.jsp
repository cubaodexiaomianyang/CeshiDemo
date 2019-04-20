<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="jpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>	
<meta charset="utf-8" />

<title>页面API中文抽离版</title>
<%@ include file="../charu/top.jsp"%>
</head>

<body style="background-color:#fff;">
					<div class="page-header">
						<h1>
							添加学生用户 <small> <i class="icon-double-angle-right"></i> 查看
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

				
	<form class="form-horizontal" id="formid" action="" method="post">
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"  for="form-field-1">姓名 </label>

				<div class="col-sm-9">
					<input type="text" name="userName" id="userName" placeholder="姓名" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 电话 </label>

				<div class="col-sm-9">
					<input type="text" name="phone" id="phone" placeholder="电话" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户类型 </label>

				<div class="col-sm-9">
					<select name="userTypeId">
  						<c:forEach items="${usertypename}"  var="s">
  							<option value="${s.id}">${s.fenleimingcheng}</option>
  						</c:forEach>
					</select>
				</div>
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">公司编号 </label>

				<div class="col-sm-9">
					<input type="text" name="gongsiId" id="gongsiId" placeholder="公司编号" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户积分 </label>

				<div class="col-sm-9">
					<input type="text" name="userJifen" id="userJifen" placeholder="用户积分 " class="col-xs-10 col-sm-5" />
				</div>
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">登陆名 </label>

				<div class="col-sm-9">
					<input type="text" name="dengluId" id="dengluId" placeholder="登陆名" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			
			<div class="clearfix form-actions">
					<div class="col-md-offset-3 col-md-9">
						<button class="btn btn-info" id="tijiao" name="0" value="0"  type="button">
							<i class="icon-ok bigger-110"></i>
							添加
						</button>

						&nbsp; &nbsp; &nbsp;
						<button class="btn" id="qingchu" name="0" value="0" type="reset">
							<i class="icon-undo bigger-110"></i>
							清除
						</button>
					</div>
				</div>
	</form>
<%@ include file="../charu/button.jsp"%>
<script type="text/javascript">
$(function(){
	$("#tijiao").click(function(){
		var sblimt =$("#formid");
		console.log("点击了提交按钮");
		$.post("${jpath}/UserController/add",chuanzhi(sblimt),
		function(data){
				var json=$.parseJSON(data);
				if(json.resMsg!=null || json.resMsg!=""){
					$("#qingchu").click();
				}
				alert(json.resMsg);
			}
		);
	});


});
</script>

</body>
</html>