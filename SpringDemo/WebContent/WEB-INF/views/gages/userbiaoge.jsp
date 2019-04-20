<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="jpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
  </head>
  <%@ include file="../charu/top.jsp"%>
  <body style="background-color:#fff;">
  	<div class="page-header">
		<h1>
			用户信息表格 <small> <i class="icon-double-angle-right"></i> 查看
			</small>
		</h1>
	</div>
	<div class="page-content">
		<div class="page-header">
			<h1>
				Tables
				<small>
					<i class="icon-double-angle-right"></i>
					Static &amp; Dynamic Tables
				</small>
			</h1>
		</div><!-- /.page-header -->
	
		<div class="row">
			<div class="col-xs-12">
				<!-- PAGE CONTENT BEGINS -->
	
				<div class="row">
					<div class="col-xs-12">
						<div class="table-responsive">
							<table id="sample-table-1" class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th class="center">
											<label>
												<input type="checkbox" name="zuidabox" onclick="allck(this)" class="ace" />
												<span class="lbl"></span>
											</label>
										</th>
										<th>用户名称</th>
										<th class="hidden-480">电话</th>
										<th class="hidden-480">用户类型Id</th>
										<th class="hidden-480">公司Id</th>
										<th class="hidden-480">积分</th>
										<th class="hidden-480">登陆Id</th>
										<th></th>
									</tr>
								</thead>
	
								<tbody id="charudian">
								
								</tbody>
							</table>
						</div><!-- /.table-responsive -->
					</div><!-- /span -->
				</div><!-- /row -->
				
						</div><!-- /.modal-content -->
					</div><!-- /.modal-dialog -->
				</div><!-- PAGE CONTENT ENDS -->
		<%@ include file="../charu/button.jsp"%>
<script type="text/javascript">
		function shanchu(nowId){
			console.log("进入删除该方法");
			location.href="${jpath}/UserController/shanchu?id="+nowId;
		}
		function xiugai(nowId){
			console.log("进入修改该方法");
			location.href="${jpath}/UserController/xiugai?id="+nowId;
		}
		function tianjiashuju(){
			location.href="${jpath}/UserController/tianjia";
		}
		function plshanchu(){
			var listid=[];
			var kuang=$("input[name='xiaobox']");
			for(var i=0;i<kuang.length;i++){
				if($(kuang[i]).is(':checked')){
					listid[i]=$(kuang[i]).val();
				}
			}
			var zhi=listid.toString();
			location.href="${jpath}/UserController/plshanchu?zz="+zhi;
		}
	$(function(){
		var colm=[
		          {
					name:'userId',
					cl:function(index,val){
						return "<label><input type='checkbox' name='xiaobox' value='"+val+"' class='ace' /><span class='lbl'></span></label>";
					}
				  },{
					  name:'userName'
				  },{
					  name:'phone'
				  },{
					  name:'fenleimingcheng'
					  
				  },{
					  name:'jobmingzi'
				  },{
					  name:'userJifen'
				  },{
					  name:'dengluId'
				  },{
					  name:'userId',
					  cl:function(index,val){
						  return "<div class='visible-md visible-lg  btn-group'><button class='btn btn-xs btn-info' onclick='xiugai(\""+val+"\")'><i class='icon-edit bigger-120'></i><tton> <button class='btn btn-xs btn-danger' onclick='shanchu(\""+val+"\")'><i class='icon-trash bigger-120'></i><tton></div>";
					  }
				  }];
		var parmens={pageNum:1,pageSize:3};
		$("#sample-table-1").loadTabl(colm,parmens,"${jpath}/UserController/chaxun",true);
	});

	function allck(_this){
		var a=$("input[name='xiaobox']");
		console.log("未循环的a："+a.length);
		console.log("主复选框:"+$(_this).is(':checked'));
		for(var i=0;i<a.length;i++){
			if($(_this).is(':checked')){
				a[i].checked=true;
			}else{
				a[i].checked=false;
			}
		}
	}		
	
	
	
		</script>
</body>
</html>
