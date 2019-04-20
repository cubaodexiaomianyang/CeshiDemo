
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="jpath" value="${pageContext.request.contextPath}"/>
	
	
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <%@ include file="../charu/top.jsp"%>
  <script type="text/javascript">
  	var jpath="${jpath}";
  </script>
  
<link rel="stylesheet" href="${jpath}/static/plugins/webuploader/css/webuploader.css" />
<link rel="stylesheet" href="${jpath}/static/plugins/webuploader/style.css" />
  
  </head>
  
  <body>
  <c:if test="${pd==1}">
     <body style="background-color:#fff;">
					<div class="page-header">
						<h1>
							修改用户信息 <small> <i class="icon-double-angle-right"></i> 查看
							</small>
						</h1>
					</div>
					<!-- /.page-header -->
	<form class="form-horizontal" id="formid" action="" method="post" role="form">
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"  for="form-field-1">用户编号 </label>

				<div class="col-sm-9">
					<input type="text" name="userId" id="userId" value="${ujbzhi.userId}" disabled="disabled" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户过往头像附件 </label>
				
				
				<div class="col-sm-9">
					
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
												<th>附件名称</th>
												<th>上传时间</th>
												<th class="hidden-480">下载次数</th>
												<th></th>
											</tr>
										</thead>
			
										<tbody id="charudian">
										
										</tbody>
									</table>
								</div><!-- /.table-responsive -->
							</div><!-- /span -->
						</div><!-- /row -->
					
				</div>
				
			</div>
			
			<div class="space-4"></div>
				<input type="hidden" name="fjid" id="fjid" />
				<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">新头像附件上传 </label>
				<div class="col-sm-9">
					<div id="wrapper" style="width:400px;">
				        <div id="container">
				            <!--头部，相册选择和格式选择-->
				            <div id="uploader">
				                <div class="queueList">
				                    <div id="dndArea" class="placeholder">
				                        <div id="filePicker"></div>
				                        <p>或将照片拖到这里，单次最多可选300张</p>
				                    </div>
				                </div>
				                <div class="statusBar" style="display:none;">
				                    <div class="progress">
				                        <span class="text">0%</span>
				                        <span class="percentage"></span>
				                    </div><div class="info"></div>
				                    <div class="btns">
				                        <div id="filePicker2"></div><div class="uploadBtn">开始上传</div>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </div>
					
				</div>
			</div>
			
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户名称 </label>
				
				
				<div class="col-sm-9">
					<input type="text" name="userName" id="userName" value="${ujbzhi.userName} " class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户电话 </label>

				<div class="col-sm-9">
					<input type="text" name="phone" id="phone" value="${ujbzhi.phone}" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户类型ID</label>
				
				<div class="col-sm-9">
					<input type="hidden"  name="userfenleiid"
					on_type="comboxyi"  
					on_name="fenleimingcheng"
					 id="id"
					  on_id="yi"
					 value="${ugx.userfenleiid}" 
					 loadUrl="${jpath}/UserController/type"
					 />
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">公司id</label>
				
				
				<div class="col-sm-9">
					<input type="hidden" 
					on_type="comboxer" 
					name="userhangyeid"
					on_name="jobmingzi"
					 id="id" 
					 on_id="er"
					 value="${ugx.userhangyeid}" 
					 loadUrl="${jpath}/UserController/job"
					 />
					 <!-- type:用于隐藏，on_type：确定是那个input标签,
					  name:用于返回给后台接收数据，对应实体获取对应的数据
					  on_name：插件显示的option中的值是那个名字，对应相应实体的字段名字
					 id: 插件显示的option中value的值是那个id，对应相应实体的字段id
					 on_id：用于确定是那个select
					 value:用于设置默认值，方便修改的时候、可以接受数据
					 loadUrl:设置调用的是那个控制器的具体的那个方法 -->
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户积分</label>
				
				
				<div class="col-sm-9">
					<input type="text" name="userJifen" id="userJifen"  value="${ujbzhi.userJifen} " class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">登陆id</label>
				
				
				<div class="col-sm-9">
					<input type="text" name="dengluId" id="dengluId"  value="${ujbzhi.dengluId} " class="col-xs-10 col-sm-5" />
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
							添加新用户 <small> <i class="icon-double-angle-right"></i> 查看
							</small>
						</h1>
					</div>
					<!-- /.page-header -->
	<form class="form-horizontal" id="formid" action="" method="post">
			<div class="form-group" style="display:none;">
				<label class="col-sm-3 control-label no-padding-right"  for="form-field-1">用户编号 </label>

				<div class="col-sm-9">
					<input type="text" name="userId" id="userId" value="${ujbzhi.userId}" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			
			<div class="space-4"></div>
			<input type="hidden" name="fjid" id="fjid" />
				<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">头像上传 </label>
				<div class="col-sm-9">
					<div id="wrapper" style="width:400px;">
				        <div id="container">
				            <!--头部，相册选择和格式选择-->
				            <div id="uploader">
				                <div class="queueList">
				                    <div id="dndArea" class="placeholder">
				                        <div id="filePicker"></div>
				                        <p>或将照片拖到这里，单次最多可选300张</p>
				                    </div>
				                </div>
				                <div class="statusBar" style="display:none;">
				                    <div class="progress">
				                        <span class="text">0%</span>
				                        <span class="percentage"></span>
				                    </div><div class="info"></div>
				                    <div class="btns">
				                        <div id="filePicker2"></div><div class="uploadBtn">开始上传</div>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </div>
					
				</div>
			</div>
			
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户名称 </label>
				
				
				<div class="col-sm-9">
					<input type="text" name="userName" id="userName" value="${ujbzhi.userName} " class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户电话 </label>

				<div class="col-sm-9">
					<input type="text" name="phone" id="phone" value="${ujbzhi.phone}" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户类型ID</label>
				<div class="col-sm-9">
					<input type="hidden"  name="userfenleiid"
					on_type="comboxyi"  
					on_name="fenleimingcheng"
					 id="id"
					  on_id="yi"
					 value="" 
					 loadUrl="${jpath}/UserController/type"
					 />
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">公司id</label>
				<div class="col-sm-9">
					<input type="hidden"  
					on_type="comboxer" 
					name="userhangyeid"
					on_name="jobmingzi"
					 id="id" 
					 on_id="er"
					 value="" 
					 loadUrl="${jpath}/UserController/job"/>
					 
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
 
<script type="text/javascript" src="${jpath}/static/plugins/webuploader/dist/webuploader.js"></script>
<script type="text/javascript" src="${jpath}/static/plugins/webuploader/upload.js"></script>

<script type="text/javascript">

$(function(){
	$("#formid").loadCombox("comboxyi");
	$.loadComboxDOM("formid","comboxer");
});	

function shanchu(nowId){
	console.log("进入删除该方法");
	location.href="${jpath}/FuJianController/shanchu?id="+nowId;
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
	location.href="${jpath}/FuJianController/plshanchu?zz="+zhi;
}
$(function(){
var colm=[
          {
			name:'id',
			cl:function(index,val){
				return "<label><input type='checkbox' name='xiaobox' value='"+val+"' class='ace' /><span class='lbl'></span></label>";
			}
		  },{
			  name:'fujianmingcheng'
		  },{
			  name:'shangchuanshijian'
		  },{
			  name:'xiazhaicishu',
			  cl:function(index,val){
				  if(val==null || val==""){
					  return "0";
				  }
			  }
		  },{
			  name:'id',
			  cl:function(index,val){
				  return "<tton> <button class='btn btn-xs btn-danger' onclick='shanchu(\""+val+"\")'><i class='icon-trash bigger-120'></i><tton></div>";
			  }
		  }];
		 var yhid=$("#userId").val();
var parmens={pageNum:1,pageSize:3,id:yhid};
$("#sample-table-1").a(colm,parmens,"${jpath}/UserController/chaxunfj",true);
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


$(function(){
	$("#tijiao").click(function(){
		var sblimt =$("#formid");
		console.log("点击了提交按钮");
		console.log(chuanzhi(sblimt));
		$.post("${jpath}/UserController/xiugaihuichuan",chuanzhi(sblimt),
		function(data){
				var json=$.parseJSON(data);
				if(json.resMsg!=null || json.resMsg!=""){
					$("#qingchu").click();
				}
				location.href="${jpath}/userbiaoge";
			}
		);
	});
	
	$("#tianjia").click(function(){
		var sblimt =$("#formid");
		console.log("点击了提交按钮");
		$.post("${jpath}/UserController/tianjiafanhui",chuanzhi(sblimt),
		function(data){
				var json=$.parseJSON(data);
				if(json.resMsg!=null || json.resMsg!=""){
					$("#qingchu").click();
				}
				location.href="${jpath}/userbiaoge";
			}
		);
	});

});
</script>
  </body>
</html>
