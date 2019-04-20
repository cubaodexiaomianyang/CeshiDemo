<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="jpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0,user-scalable=0" />
<script type="text/javascript" src="${jpath}/static/FrontStatic/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${jpath}/static/FrontStatic/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${jpath}/static/FrontStatic/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="${jpath}/static/FrontStatic/css/cpsc.css"/>
<script>

	function del(_this) {
		var _this_img = $(_this);
		_this_img.parent().remove();
	}
	$(function() {
		var file = $("#file_btn");
		$("#file").click(function(){
			file[0].click();
		});
		file[0].addEventListener('change', function() {
			var file = this.files[0];
			var reader = new FileReader();
			reader.readAsDataURL(file);
			reader.onload = function(e){
				var newUrl = this.result;
				var img_str = '<div class="mainPic">';
				img_str += '<img class="hq" width="50px" src="' + newUrl + '" />';
				img_str += '<img onclick="del(this)" class="del_btn" src="${jpath}/static/FrontStatic/image/close.png" />';
				img_str += '</div>';
				$("#file").after(img_str);
			};
		});
	});
</script>
<style>
	.title div img{
	margin-top:0;
	}
</style>
<title>无标题文档</title>
</head>

<body>
	<div class="bj">
        <div class="container">
           <div class="row title">
              <div class="col-2" id="back">
                <img src="${jpath}/static/FrontStatic/image/back.png" />
              </div>
              <div class="col-8">产品上传</div>  
              <div class="col-2"></div>     
           </div>
        </div>
        <div class="content">
        	<form method="post" id="formid">
            	<div class="container">
                   <div class="row contitle">
                      <div class="col-12"><span class="contitle_color">|</span>产品介绍</div>   
                   </div>
                </div>
                <div class="contentOne">
                	<div class="container">
                       <div class="row contentOne_row">
                          <div class="col-4 contitle_color">产品名称：</div>
                          <div class="col-8">
                          	<input class="input" name="biaoti"  id="biaoti" type="text"  placeholder="请输入产品名称"/>
                          </div>     
                       </div>
                    </div>
                    <div class="container">
                       <div class="row contentOne_row">
                          <div class="col-4 contitle_color">产品金额：</div>
                          <div class="col-8">
                          	<input class="input" name="jine"  id="jine"  type="text"  placeholder="请输入产品金额"/>
                          </div>     
                       </div>
                    </div>
                    <div class="container">
                       <div class="row contentOne_row">
                          <div class="col-4 contitle_color">办理条件：</div>
                          <div class="col-8">
                          	<textarea class="input" rows="3" name="tiaojian"  id="tiaojian" style="resize:none;" placeholder="请输入办理条件"></textarea>
                          </div>     
                       </div>
                    </div>
                    <div class="container">
                       <div class="row contentOne_row">
                          <div class="col-4 contitle_color">办理流程：</div>
                          <div class="col-8">
                          	<textarea class="input" rows="3" name="liucheng"  id="liucheng" style="resize:none;" placeholder="请输入办理流程"></textarea>
                          </div>     
                       </div>
                    </div>
                    <div class="container">
                       <div class="row contentOne_row">
                          <div class="col-4 contitle_color">办理简介：</div>
                          <div class="col-8">
                          	<textarea class="input" rows="3" name="jianjie"  id="jianjie" style="resize:none;" placeholder="请输入办理简介"></textarea>
                          </div>     
                       </div>
                    </div>
                </div>
                <div class="container">
                   <div class="row contitle">    
                      <div class="col-12"><span class="contitle_color">|</span>关于我们</div> 
                   </div>
                </div>
                <div class="contentOne">
                	<div class="container">
                       <div class="row contentOne_row">
                          <div class="col-4 contitle_color">公司规模：</div>
                          <div class="col-8">
                          	<input class="input" name="gongsiguimo" id="gongsiguimo" type="text"  placeholder="请输入公司规模"/>
                          </div>     
                       </div>
                    </div>
                    <div class="container">
                       <div class="row contentOne_row">
                          <div class="col-4 contitle_color">融资周期：</div>
                          <div class="col-8">
                          	<input class="input" name="rongzizhouqi" id="rongzizhouqi" type="text"  placeholder="请输入融资周期(天)"/>
                          </div>     
                       </div>
                    </div>
                    <div class="container">
                       <div class="row contentOne_row">
                          <div class="col-4 contitle_color">联系部门：</div>
                          <div class="col-8">
                          	<input class="input" name="lianxibumen" id="lianxibumen"  type="text"  placeholder="请输入联系部门"/>
                          </div>     
                       </div>
                    </div>
                    <div class="container">
                       <div class="row contentOne_row">
                          <div class="col-4 contitle_color">联系电话：</div>
                          <div class="col-8">
                          	<input class="input" name="lianxiwomen" id="lianxiwomen"  type="text"  placeholder="请输入联系电话"/>
                          </div>     
                       </div>
                    </div>
                    <div class="container">
                       <div class="row contentOne_row">
                          <div class="col-4 contitle_color">发布时间:</div>
                          <div class="col-8">
                          	<input class="input" name="chanpinfabushijian" id="chanpinfabushijian" type="text"  placeholder="请输入发布时间"/>
                          </div>     
                       </div>
                    </div>
                    
                </div>
                <div class="container">
                   <div class="row contitle">
                      <div class="col-12"><span class="contitle_color">|</span>图片上传</div> 
                   </div>
                </div>
                <div class="contentOne">
                	<div class="container">
                       <div class="row contentOne_row">
                          <div class="col-4 contitle_color">上传图片：</div>
                          <div class="col-8">
                          	<div class="upload">
                             	<div class="upload_div" id="file">
                                  	<img class="upload_img" src="${jpath}/static/FrontStatic/image/add_photo.png" />
                      	  			<input id="file_btn" accept="image/*" style="display:none" type="file"  />
                            	</div>
                                <br style=" clear:both;"/>
                          	</div>
                          </div>     
                       </div>
                    </div>
                </div>
                <div class="container">
                   <div class="row end">
                      <div class="col-6">
                      	<div class="but" style="background-color:#2864a7;text-align: center;height: 30px;line-height: 30px;margin-left: 2rem;">保存预览</div>
                      </div>
                      <div class="col-6" >
                      	<div class="but" style="background-color:#f86941;height: 30px;line-height: 30px;" id="shangchuan"/>发布</div>
                      </div> 
                   </div>
                </div>
            </form>
        </div>
    </div>
    <%@ include file="../charu/button.jsp"%>
    <script type="text/javascript">
    $(function(){
		$("#back").click(function(){
			location.href="${jpath}/qianduan_front/index";
		});
		//$("#shangchuan").click(function(){
		//	console.log("==========");
			//	console.log($(".hq").attr("src"));
		//});
		
		$("#shangchuan").click(function(){
			//var weizhi=$(".hq").attr("src");
			
			var sblimt =$("#formid");
			$.post("${jpath}/qianduan_CpShangChuanController/inserts",chuanzhi(sblimt),
			function(data){
					var json=$.parseJSON(data);
					if(json.resMsg!=null || json.resMsg!=""){
						$("#qingchu").click();
					}
					location.href="${jpath}/qianduan_front/related?chanpinId="+json.obj.chanpinId;
				}
			);
		});
	});
    </script>
</body>
</html>
 