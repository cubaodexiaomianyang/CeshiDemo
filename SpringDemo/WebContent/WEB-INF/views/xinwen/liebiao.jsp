<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="jpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
    <%@ include file="../charu/top.jsp"%>
  
	<link rel="stylesheet" href="${jpath}/static/plugins/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css">
	
  </head>
  
  <body style="background-color:#fff;">
  	<div class="page-header">
		<h1>
			新闻表格 <small> <i class="icon-double-angle-right"></i> 查看
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
					<div class="col-xs-2">
							<ul id="treeDemo" class="ztree"></ul><!-- 树形图 -->
					</div>
					<div class="col-xs-10">
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
										<th>编号</th>
										<th>标题</th>
										<th class="hidden-480">发布时间</th>
										<th class="hidden-480">封面图片名字</th>
										<th class="hidden-480">浏览数量</th>
										<th class="hidden-480">点赞数量</th>
										<th class="hidden-480">评论数量</th>
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
		
		<script type="text/javascript" src="${jpath}/static/plugins/ztree/js/jquery.ztree.all.min.js"></script>
<script type="text/javascript">

		function shanchu(nowId){
			location.href="${jpath}/XinWenzixunController/shanchu?id="+nowId;
		}
		function xiugai(nowId){
			location.href="${jpath}/XinWenzixunController/xiugai?id="+nowId;
		}
		function tianjiashuju(){
			location.href="${jpath}/XinWenzixunController/tianjia";
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
			location.href="${jpath}/XinWenzixunController/plshanchu?zz="+zhi;
		}
		
		var colm=[
		          {
					name:'id',
					cl:function(index,val){
						return "<label><input type='checkbox' name='xiaobox' value='"+val+"' class='ace' /><span class='lbl'></span></label>";
					}
				  },{
					  name:'id'
				  },{
					  name:'biaoti'
				  },{
					  name:'fabushijian'
				  },{
					  name:'fengmiantupian'
					  
				  },{
					  name:'liulancount'
				  },{
					  name:'dianzancount'
				  },{
					  name:'pingluncount'
				  },{
					  name:'id',
					  cl:function(index,val){
						  return "<div class='visible-md visible-lg  btn-group'><button class='btn btn-xs btn-info' onclick='xiugai(\""+val+"\")'><i class='icon-edit bigger-120'></i><tton> <button class='btn btn-xs btn-danger' onclick='shanchu(\""+val+"\")'><i class='icon-trash bigger-120'></i><tton></div>"
					  }
				  }];
		var parmens={pageNum:1,pageSize:3};
	$(function(){
		$("#sample-table-1").loadTabl(colm,parmens,"${jpath}/XinWenzixunController/chaxun",true);
	});

	function allck(_this){
		var a=$("input[name='xiaobox']");
		for(var i=0;i<a.length;i++){
			if($(_this).is(':checked')){
				a[i].checked=true;
			}else{
				a[i].checked=false;
			}
		}
	}
	</script>
<script type="text/javascript">
//

var setting = {
		async: {
			enable: true,
			url:"${jpath}/XinWenLanMuBiaoController/find",
			autoParam:["id", "name=n", "level=lv"],
			otherParam:{"otherParam":"zTreeAsyncTest"},
			dataFilter: filter
		},data:{
			key:{
				name:"lanmumingcheng"
			}
		},callback:{
			onClick:zTreeOnClick
		}
	};
function filter(treeId, parentNode, childNodes) {
	return childNodes.obj;
}

$(document).ready(function(){
	$.fn.zTree.init($("#treeDemo"), setting);
});

function zTreeOnClick(event, treeId, treeNode) {
	$("#sample-table-1").loadTabl(colm,parmens,"${jpath}/XinWenzixunController/dtchaxun?id="+treeNode.id,true);
};


</script>	
	
</body>
</html>
