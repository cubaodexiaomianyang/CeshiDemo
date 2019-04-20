
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
							修改新闻相关内容 <small> <i class="icon-double-angle-right"></i> 查看
							</small>
						</h1>
					</div>
					<!-- /.page-header -->
	<form class="form-horizontal" id="formid" action="" method="post" role="form">
			<div class="form-group" sty>
				<label class="col-sm-3 control-label no-padding-right"  for="form-field-1">编号 </label>

				<div class="col-sm-9">
					<input type="text" name="id" id="id" value="${ujbzhi.id}" disabled="disabled" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			
			<div class="space-4"></div>
			
				
			
			
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">标题 </label>
				<div class="col-sm-9">
						<input type="text" name="biaoti" id="biaoti"  value="${ujbzhi.biaoti} "  class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			
			
			
			<div class="space-4"></div><!-- 预留部分，发布人是否可以进行修改 -->
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">发布人</label>
				
				<div class="col-sm-9">
					<input type="hidden"  name="faburen"
					on_type="comboxyi"  
					on_name="userName"
					 id="userId"
					  on_id="yi"
					 value="${ujbzhi.faburen}" 
					 loadUrl="${jpath}/XinWenzixunController/faburen"
					 />
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">新闻内容 </label>

				<div class="col-sm-9">
					
			    <script type="text/javascript" charset="utf-8" src="${jpath}/static/plugins/ueditor/ueditor.config.js"></script>
			    <script type="text/javascript" charset="utf-8" src="${jpath}/static/plugins/ueditor/ueditor.all.min.js"> </script>
			    <script type="text/javascript" charset="utf-8" src="${jpath}/static/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
    			
    			<script id="editor" type="text/plain" style="width:600px;height:500px;"></script>
				<script type="text/javascript">
					var ue = UE.getEditor('editor');
				</script>
				
				
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">新闻资讯过往附件 </label>
				
				
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
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">封面图片</label>
				<div class="col-sm-9">
				
					
								<div id="wrapper" style="width:500px;">
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
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">新闻栏目Id</label>
				
				<div class="col-sm-9">
					<input type="hidden"  name="xinwenlanmuid"
					on_type="comboxer"  
					on_name="lanmumingcheng"
					 id="id"
					  on_id="er"
					 value="${ujbzhi.xinwenlanmuid}" 
					 loadUrl="${jpath}/XinWenzixunController/lanmu"
					 />
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
							添加新新闻 <small> <i class="icon-double-angle-right"></i> 查看
							</small>
						</h1>
					</div>
					<!-- /.page-header -->
	<form class="form-horizontal" id="formid" action="" method="post" role="form">
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">标题 </label>
				<div class="col-sm-9">
						<input type="text" name="biaoti" id="biaoti"  value="${ujbzhi.biaoti} "  class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">发布人</label>
				
				<div class="col-sm-9">
					<input type="text" name="faburen" id="faburen"  value="" disabled="disabled" class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">新闻内容 </label>

				<div class="col-sm-9">
					
			    <script type="text/javascript" charset="utf-8" src="${jpath}/static/plugins/ueditor/ueditor.config.js"></script>
			    <script type="text/javascript" charset="utf-8" src="${jpath}/static/plugins/ueditor/ueditor.all.min.js"> </script>
			    <script type="text/javascript" charset="utf-8" src="${jpath}/static/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
    			
    			<script id="editor" type="text/plain" style="width:600px;height:500px;"></script>
				<script type="text/javascript">
					var ue = UE.getEditor('editor');
				</script>
				
				
				</div>
			</div>

			<div class="space-4"></div>
			<input type="hidden" name="fjid" id="fjid" />
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">封面图片</label>
				
				<div class="col-sm-9">
				
					
								<div id="wrapper" style="width:500px;">
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
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">新闻栏目Id</label>
				
				<div class="col-sm-9">
					<input type="hidden"  name="xinwenlanmuid"
					on_type="comboxer"  
					on_name="lanmumingcheng"
					 id="id"
					  on_id="er"
					 value="" 
					 loadUrl="${jpath}/XinWenzixunController/lanmu"
					 />
				</div>
				
			</div>
				
			
			<div class="space-4"></div>
			
			<div class="clearfix form-actions">
					<div class="col-md-offset-3 col-md-9">
							<button class="btn btn-info" id="tianjia" name="0" value="0"  type="button">
								<i class="icon-ok bigger-110"></i>
								添加完成
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
	$("#formid").loadCombox("comboxer");
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
		 var id=$("#id").val();
var parmens={pageNum:1,pageSize:3,id:id};
$("#sample-table-1").a(colm,parmens,"${jpath}/XinWenzixunController/chaxunfj",true);
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
		var hebing={};
		var context=UE.getEditor('editor').getContentTxt();
		hebing.context=context;
		var sblimt =$("#formid");
		var zhi=$.extend(hebing,chuanzhi(sblimt));
		$.post("${jpath}/XinWenzixunController/xiugaihuichuan",zhi,
		function(data){
				var json=$.parseJSON(data);
				if(json.resMsg!=null || json.resMsg!=""){
					$("#qingchu").click();
				}
				location.href="${jpath}/XinWenzixunController/tiaozhuan";
			}
		);
	});
	
	$("#tianjia").click(function(){
		var hebing={};
		var context=UE.getEditor('editor').getContentTxt();
		hebing.context=context;
		var sblimt =$("#formid");
		var zhi=$.extend(hebing,chuanzhi(sblimt));
		$.post("${jpath}/XinWenzixunController/tianjiafanhui",zhi,
		function(data){
				var json=$.parseJSON(data);
				if(json.resMsg!=null || json.resMsg!=""){
					$("#qingchu").click();
				}
				location.href="${jpath}/XinWenzixunController/tiaozhuan";
			}
		);
	});

});
</script>
  </body>
</html>
