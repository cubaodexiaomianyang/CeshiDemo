
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="jpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <%@ include file="../charu/top.jsp"%>
  </head>
  
  <body>
  <c:if test="${pd==1}">
     <body style="background-color:#fff;">
					<div class="page-header">
						<h1>
							修改工种 <small> <i class="icon-double-angle-right"></i> 查看
							</small>
						</h1>
					</div>
					<!-- /.page-header -->
	<form class="form-horizontal" id="formid" action="" method="post">
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"  for="form-field-1">行业编号 </label>

				<div class="col-sm-9">
					<input type="text" name="id" id="id" value="${ujbzhi.id}" disabled="disabled" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">行业名称 </label>
				
				
				<div class="col-sm-9">
					<input type="text" name="jobmingzi" id="jobmingzi" value="${ujbzhi.jobmingzi} " class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">上级行业 </label>

				<div class="col-sm-9">
					<input type="text" name="shangjihangye" id="shangjihangye" value="${ujbzhi.shangjihangye}" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">行业状态</label>
				
				
				<div class="col-sm-9">
					<input type="text" name="jobstate" id="jobstate"  value="${ujbzhi.jobstate} " class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			
			<div class="space-4"></div>
			
			<div class="clearfix form-actions">
					<div class="col-md-offset-3 col-md-9">
							<button class="btn btn-info" id="tijiao" name="0" value="0"  type="button">
								<i class="icon-ok bigger-110"></i>
								修改完成
							</button>
						&nbsp; &nbsp; &nbsp;
						<button class="btn" id="qingchu" name="0" value="0" type="reset">
							<i class="icon-undo bigger-110"></i>
							清除
						</button>
					</div>
				</div>
	</form>
</c:if>
<c:if test="${pd==2}">
     <body style="background-color:#fff;">
					<div class="page-header">
						<h1>
							添加用户工种 <small> <i class="icon-double-angle-right"></i> 查看
							</small>
						</h1>
					</div>
					<!-- /.page-header -->
	<form class="form-horizontal" id="formid" action="" method="post">
			<div class="form-group" style="display:none;">
				<label class="col-sm-3 control-label no-padding-right"  for="form-field-1">行业编号 </label>

				<div class="col-sm-9">
					<input type="text" name="id" id="id" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">行业名称 </label>
				
				
				<div class="col-sm-9">
					<input type="text" name="jobmingzi" id="jobmingzi" class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">上级行业 </label>

				<div class="col-sm-9">
					<input type="text" name="shangjihangye" id="shangjihangye" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">行业状态</label>
				
				
				<div class="col-sm-9">
					<input type="text" name="jobstate" id="jobstate"  class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			
			<div class="space-4"></div>
			
			<div class="clearfix form-actions">
					<div class="col-md-offset-3 col-md-9">
							<button class="btn btn-info" id="tianjia" name="0" value="0"  type="button">
								<i class="icon-ok bigger-110"></i>
								保存
							</button>
						&nbsp; &nbsp; &nbsp;
						<button class="btn" id="qingchu" name="0" value="0" type="reset">
							<i class="icon-undo bigger-110"></i>
							清除
						</button>
					</div>
				</div>
	</form>
</c:if>
<%@ include file="../charu/button.jsp"%>

<script type="text/javascript">
$(function(){
	$("#tijiao").click(function(){
		var sblimt =$("#formid");
		console.log("点击了提交按钮");
		$.post("${jpath}/UserJobController/xiugaihuichuan",chuanzhi(sblimt),
		function(data){
				var json=$.parseJSON(data);
				if(json.resMsg!=null || json.resMsg!=""){
					$("#qingchu").click();
				}
				location.href="${jpath}/biaoge";
			}
		);
	});
	$("#tianjia").click(function(){
		var sblimt =$("#formid");
		console.log("点击了提交按钮");
		$.post("${jpath}/UserJobController/tianjiafanhui",chuanzhi(sblimt),
		function(data){
				var json=$.parseJSON(data);
				if(json.resMsg!=null || json.resMsg!=""){
					$("#qingchu").click();
				}
				location.href="${jpath}/biaoge";
			}
		);
	});

});
</script>
  </body>
</html>
