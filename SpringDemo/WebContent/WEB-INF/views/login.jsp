
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="jpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>login</title>

<%@ include file="charu/top.jsp"%><!-- 引入js script css 等 -->
	
		<link href="${jpath}/static/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace.min.css" /> 
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace-rtl.min.css" />
  </head>
  
  <body>
    
		<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container" style="margin-top:140px;">
							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="icon-coffee green"></i>
												请登录你的账号
											</h4>

											<div class="space-6"></div>

											<form id="formid" action="" method="post" role="form" >
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" id="dengluid" name="dengluid" class="form-control" placeholder="Username" />
															<i class="icon-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" id="PASSWORD" name="PASSWORD" class="form-control" placeholder="Password" />
															<i class="icon-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace" />
															<span class="lbl"> 记住密码</span>
														</label>

														<button type="button" id="tijiao"
														 class="width-35 pull-right btn btn-sm btn-primary">
															<i class="icon-key"></i>
															登陆
														</button>
														
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>


											<div class="social-or-login center">
												<span class="bigger-110">其他登陆方式</span>
											</div>

											<div class="social-login center">
												<a class="btn btn-primary">
													<i class="icon-facebook"></i>
												</a>

												<a class="btn btn-info">
													<i class="icon-twitter"></i>
												</a>

												<a class="btn btn-danger">
													<i class="icon-google-plus"></i>
												</a>
											</div>
										</div><!-- /widget-main -->
<!-- =========================================================================================================== -->
										<div class="toolbar clearfix"><!-- 隐藏了申请账号和找回密码 -->
											<div>
												<a href="#" onclick="show_box('forgot-box'); return false;" class="forgot-password-link">
													<i class="icon-arrow-left"></i>
													忘记密码
												</a>
											</div>

											<div>
												<a href="#" onclick="show_box('signup-box'); return false;" class="user-signup-link">
													申请账号
													<i class="icon-arrow-right"></i>
												</a>
											</div>
										</div>
									</div><!-- /widget-body -->
								</div><!-- /login-box -->

								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="icon-key"></i>
												Retrieve Password
											</h4>

											<div class="space-6"></div>
											<p>
												Enter your email and to receive instructions
											</p>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="Email" />
															<i class="icon-envelope"></i>
														</span>
													</label>

													<div class="clearfix">
														<button type="button" class="width-35 pull-right btn btn-sm btn-danger">
															<i class="icon-lightbulb"></i>
															Send Me!
														</button>
													</div>
												</fieldset>
											</form>
										</div><!-- /widget-main -->

										<div class="toolbar center">
											<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
												Back to login
												<i class="icon-arrow-right"></i>
											</a>
										</div>
									</div><!-- /widget-body -->
								</div><!-- /forgot-box -->

								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="icon-group blue"></i>
												创建新用户
											</h4>

											<div class="space-6"></div>
											<p> 输入你的新账号信息: </p>

											<form id="formtj" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" id="email" name="email" class="form-control" placeholder="Email" />
															<i class="icon-envelope"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" id="dengluid" name="dengluid" class="form-control" placeholder="Username" />
															<i class="icon-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" id="PASSWORD" name="PASSWORD" class="form-control" placeholder="Password" />
															<i class="icon-lock"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="Repeat password" />
															<i class="icon-retweet"></i>
														</span>
													</label>
													<label class="block">
														<input type="checkbox" class="ace" />
														<span class="lbl">
															我已阅读
															<a href="#">相关信息</a>
														</span>
													</label>

													<div class="space-24"></div>

													<div class="clearfix">
														<button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="icon-refresh"></i>
															刷新
														</button>

														<button type="button" id="zhuce" class="width-65 pull-right btn btn-sm btn-success">
															提交信息
															<i class="icon-arrow-right icon-on-right"></i>
														</button>
													</div>
												</fieldset>
											</form>
										</div>

										<div class="toolbar center">
											<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
												<i class="icon-arrow-left"></i>
												Back to login
											</a>
										</div>
									</div><!-- /widget-body -->
								</div><!-- /signup-box -->
							</div><!-- /position-relative -->
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div>
		</div>
		<%@ include file="charu/button.jsp" %>
		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
		
		var jpath="${jpath}";
		
			function show_box(id) {
			 jQuery('.widget-box.visible').removeClass('visible');
			 jQuery('#'+id).addClass('visible');
			}
			
			$(function(){
				$("#tijiao").click(function(){
					var sblimt =$("#formid");
					$.post("${jpath}/LoginController/chaxun",chuanzhi(sblimt),function(data){
						console.log(data);	
						var json=$.parseJSON(data);
							if(json.resMsg!=null || json.resMsg!=""){
								alert(json.resMsg);
							}
							location.href="${jpath}/indexpage";
						}
					);
				});
				
					$("#zhuce").click(function(){
						var sblimt =$("#formtj");
						console.log(sblimt);
						console.log(chuanzhi(sblimt));
						$.post("${jpath}/LoginController/registered",chuanzhi(sblimt),function(data){
							console.log(data);
							var json=$.parseJSON(data);
								if(json.resMsg!=null || json.resMsg!=""){
									alert(json.resMsg);
								}
								location.href="${jpath}/indexpage";
							}
					);
				});
			
			});
			
			
		
				
		
		</script>
  </body>
</html>
