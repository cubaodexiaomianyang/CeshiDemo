
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
			<div class="space-4"></div>
			<input type="hidden" name="fjid" id="fjid" />
			<c:if test="${not empty ugx.img}">
				<div class="space-4"></div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">原图片 </label>
					<div class="col-sm-9">
					<img src="${jpath}/${ugx.img}" style="width:200px;height:200px;margin-left:18px;">
					</div>
				</div>
			</c:if>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">添加新产品封面图片</label>
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
			
			<input type="hidden" name="chanpinId" id="chanpinId"  value="${ugx.chanpinId}"  class="col-xs-10 col-sm-5" />
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">标题 </label>
				<div class="col-sm-9">
						<input type="text" name="biaoti" id="biaoti"  value="${ugx.biaoti} "  class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品发布截至时间</label>
				
				<div class="col-sm-9">
					<input type="text" name="shixian" id="shixian" value="${ugx.shixian}" class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品发布时间</label>
				
				<div class="col-sm-9">
					<input type="text" name="chanpinfabushijian" id="chanpinfabushijian" value="${ugx.chanpinfabushijian}" class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品简介</label>
				
				<div class="col-sm-9">
					<textarea rows="5" cols="50" name="jianjie" id="jianjie" style="resize:none;">${ugx.jianjie}</textarea>
				</div>
				
			</div>
			
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品申请条件</label>
				
				<div class="col-sm-9">
					<textarea rows="5" cols="50" name="tiaojian" id="tiaojian" style="resize:none;">${ugx.tiaojian}</textarea>
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品申请流程</label>
				
				<div class="col-sm-9">
					<textarea rows="5" cols="50" name="liucheng" id="liucheng" style="resize:none;">${ugx.liucheng}</textarea>
				</div>
				
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">联系方式 </label>
				<div class="col-sm-9">
						<input type="text" name="lianxiwomen" id="lianxiwomen"  value="${ugx.lianxiwomen}"  class="col-xs-10 col-sm-5" />
				</div>
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品类型</label>
				
				<div class="col-sm-9">
					<input type="hidden"  name="id"
					on_type="comboxer"  
					on_name="jobmingzi"
					 id="id"
					  on_id="er"
					 value="${uj.id}" 
					 loadUrl="${jpath}/CpController/leixing"
					 />
				</div>
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">审核状态 </label>
				<div class="col-sm-9">
						<input type="radio" name="shenhezhaungtai" id="shenhezhaungtai" value="0" <c:if test="${ugx.shenhezhuangtai=='0'}">
						 	checked
						 </c:if> onclick="dianji(0)"/>审核通过
						 
						<input type="radio" name="shenhezhaungtai" id="shenhezhaungtai"  value="1"  <c:if test="${ugx.shenhezhuangtai=='1'}"> 
					 		checked
						 </c:if> onclick="dianji(1)"/>审核驳回
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group" id="bohuiyuanyins" style="display:none;">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">驳回原因</label>
				<div class="col-sm-9">
					<textarea rows="5" cols="50" name="bohuiyuanyin" id="bohuiyuanyin" style="resize:none;">${ugx.bohuiyuanyin}</textarea>
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
							添加产品 <small> <i class="icon-double-angle-right"></i> 查看
							</small>
						</h1>
					</div>
					<!-- /.page-header -->
	<form class="form-horizontal" id="formid" action="" method="post" role="form">
			<div class="space-4"></div>
			<input type="hidden" name="fjid" id="fjid" />
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品封面图片</label>
				
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
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">标题 </label>
				<div class="col-sm-9">
						<input type="text" name="biaoti" id="biaoti"  value="${ujbzhi.biaoti} "  class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品发布截至时间</label>
				
				<div class="col-sm-9">
					<input type="text" name="shixian" id="shixian" class="col-xs-10 col-sm-5" />
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品简介</label>
				
				<div class="col-sm-9">
					<textarea rows="5" cols="50" name="jianjie" id="jianjie" style="resize:none;"></textarea>
				</div>
				
			</div>
			
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品申请条件</label>
				
				<div class="col-sm-9">
					<textarea rows="5" cols="50" name="tiaojian" id="tiaojian" style="resize:none;"></textarea>
				</div>
				
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品申请流程</label>
				
				<div class="col-sm-9">
					<textarea rows="5" cols="50" name="liucheng" id="liucheng" style="resize:none;"></textarea>
				</div>
				
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">联系方式 </label>
				<div class="col-sm-9">
						<input type="text" name="lianxiwomen" id="lianxiwomen"  value="${ujbzhi.biaoti} "  class="col-xs-10 col-sm-5" />
				</div>
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品类型</label>
				
				<div class="col-sm-9">
					<input type="hidden"  name="id"
					on_type="comboxer"  
					on_name="jobmingzi"
					 id="id"
					  on_id="er"
					 value="" 
					 loadUrl="${jpath}/CpController/leixing"
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
	

	if($("input[value='1']").is(":checked")){
		$("#bohuiyuanyins").show();
	}else{
		$("#bohuiyuanyins").hide();
		$("#bohuiyuanyin").val("");
	}
	
});	
jQuery(function($) {
	
	$( "#shixian" ).datepicker({
		showOtherMonths: true,
		selectOtherMonths: false,
	});
	
	$( "#chanpinfabushijian" ).datepicker({
		showOtherMonths: true,
		selectOtherMonths: false,
	});
});

function dianji(_this){
	
	if(_this==0){
		$("#bohuiyuanyins").hide();
		$("#bohuiyuanyin").val("");
	}else{
		$("#bohuiyuanyins").show();
	}
}
$(function(){
	$("#tijiao").click(function(){
		var sblimt =$("#formid");
		$.post("${jpath}/CpController/xiugaihuichuan",chuanzhi(sblimt),
		function(data){
				var json=$.parseJSON(data);
				if(json.resMsg!=null || json.resMsg!=""){
					$("#qingchu").click();
				}
				location.href="${jpath}/CpController/tiaozhuan";
			}
		);
	});
	
	$("#tianjia").click(function(){
		var sblimt =$("#formid");
		$.post("${jpath}/CpController/tianjiafanhui",chuanzhi(sblimt),
		function(data){
				var json=$.parseJSON(data);
				if(json.resMsg!=null || json.resMsg!=""){
					$("#qingchu").click();
				}
				location.href="${jpath}/CpController/tiaozhuan";
			}
		);
	});

});
</script>
  </body>
</html>
