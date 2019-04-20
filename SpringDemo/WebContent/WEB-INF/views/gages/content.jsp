<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
							控制台 <small> <i class="icon-double-angle-right"></i> 查看
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

				
	<form class="form-horizontal" id="formid" action="" method="post">
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"  for="form-field-1">姓名 </label>

				<div class="col-sm-9">
					<input type="text" name="name" id="name" placeholder="姓名" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 性别 </label>

				<div class="col-sm-9">
					<input type="text" name="sex" id="sex" placeholder="性别" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 年龄 </label>

				<div class="col-sm-9">
					<input type="text" name="age" id="age" placeholder="年龄" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="clearfix form-actions">
					<div class="col-md-offset-3 col-md-9">
						<button class="btn btn-info" id="tijiao" type="button">
							<i class="icon-ok bigger-110"></i>
							Submit
						</button>

						&nbsp; &nbsp; &nbsp;
						<button class="btn" type="reset">
							<i class="icon-undo bigger-110"></i>
							Reset
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
		$.post("${jpath}/StudentController/add",chuanzhi(sblimt),
		function(data){
				var json=$.parseJSON(data);
				
				alert(json.resMsg);
			}
		);
	});


});
</script>

</body>
</html>