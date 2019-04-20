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
										<th>标题</th>
										<th class="hidden-480">电话</th>
										<th class="hidden-480">产品类型</th>
										<th class="hidden-480">发布人</th>
										<th class="hidden-480">产品发布时间</th>
										<th class="hidden-480">审核状态</th>
										<th class="hidden-480">审核次数</th>
										<th class="hidden-480">驳回原因</th>
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
			location.href="${jpath}/CpController/shanchu?id="+nowId;
		}
		function xiugai(nowId){
			console.log("进入修改该方法");
			location.href="${jpath}/CpController/xiugai?id="+nowId;
		}
		function tianjiashuju(){
			location.href="${jpath}/CpController/tianjia";
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
			location.href="${jpath}/CpController/plshanchu?zz="+zhi;
		}
	$(function(){
		var colm=[
		          {
					name:'chanpinId',
					cl:function(index,val){
						return "<label><input type='checkbox' name='xiaobox' value='"+val+"' class='ace' /><span class='lbl'></span></label>";
					}
				  },{
					  name:'biaoti'
				  },{
					  name:'lianxiwomen'
				  },{
					  name:'chanpingfenlei',
						  cl:function(index,val){
							  return "<span class='label label-warning'>"+val+"</span>";
						  }
				  },{
					  name:'faburen'
				  },{
					  name:'chanpinfabushijian'
				  },{
					  name:'shenhezhuangtai',
					  cl:function(index,val){
						  if(val==0){
						  return "<span class='label label-success'>审核通过</span>";
						  }else if(val==1){
							  return "<span class='label label-sm label-danger'>审核未通过</span>";
						  }else{
							  return "<span class='label'>未审核</span>";
						  }
					  }
				  },{
					  name:'shenhecishu'
				  },{
					  name:'bohuiyuanyin'
				  },{
					  name:'chanpinId',
					  cl:function(index,val){
						  return "<div class='visible-md visible-lg  btn-group'><button class='btn btn-xs btn-info' onclick='xiugai(\""+val+"\")'><i class='icon-edit bigger-120'></i><tton> <button class='btn btn-xs btn-danger' onclick='shanchu(\""+val+"\")'><i class='icon-trash bigger-120'></i><tton></div>";
					  }
				  }];
		var parmens={pageNum:1,pageSize:3};
		$("#sample-table-1").loadTabl(colm,parmens,"${jpath}/CpController/chaxun",true);
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
