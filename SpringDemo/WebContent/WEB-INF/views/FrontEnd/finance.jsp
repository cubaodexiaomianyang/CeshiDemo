<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="jpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html >
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0,user-scalable=0" />
<link rel="stylesheet" type="text/css" href="${jpath}/static/FrontStatic/css/bootstrap.min.css"/>
<link href="${jpath}/static/FrontStatic/css/main.css" rel="stylesheet" type="text/css" />
<link href="${jpath}/static/FrontStatic/css/finance.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${jpath}/static/FrontStatic/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${jpath}/static/FrontStatic/js/bootstrap.min.js"></script>
<script>
    $(function(){
        $(".list").click(function(){
            var _this=$(this);
            $(".list").each(function(index,e){
                $(e).removeClass("list_o");
            });
            _this.addClass("list_o");
        });
    });
</script>

<title>无标题文档</title>
</head>

<body>
	<div class="">
        <div class="row title">
            <div class="col-2" align="center">
                <img src="${jpath}/static/FrontStatic/image/back_3.png" />
            </div>
            <div class="col-8" align="center">融资产品</div>
            <div class="col-2" align="center">
                <img src="${jpath}/static/FrontStatic/image/add.png" />
            </div>
        </div>
        <div class="row con">
            <div class="col-3">
                <div class="col-12 list list_o">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
                <div class="col-12 list">农业类</div>
            </div>
            <div class="col-9">
                <div class="row con_n" >
                    <div class="col-1"></div>
                    <div class="col-10 shadows">
                        <div class="row">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-6 special">
                                        <h3>500万元</h3>
                                        <h5>土地融资贷款</h5>
                                    </div>
                                    <div class="col-6 text">
                                        <p>公司规模: 小微企业</p>
                                        <p>融资周期: 短期</p>
                                        <p>联系电话: 6248115</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 " style="margin: 0.3rem 0 0.3rem 0.5rem"><p>贷款倒计时：30天：23小时：48分：29秒</p></div>
                        </div>
                    </div>
                </div>
                <div class="row con_n" >
                    <div class="col-1"></div>
                    <div class="col-10 shadows">
                        <div class="row">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-6 special">
                                        <h3>500万元</h3>
                                        <h5>土地融资贷款</h5>
                                    </div>
                                    <div class="col-6 text">
                                        <p>公司规模: 小微企业</p>
                                        <p>融资周期: 短期</p>
                                        <p>联系电话: 6248115</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 " style="margin: 0.3rem 0 0.3rem 0.5rem"><p>贷款倒计时：30天：23小时：48分：29秒</p></div>
                        </div>
                    </div>
                </div>
                <div class="row con_n" >
                    <div class="col-1"></div>
                    <div class="col-10 shadows">
                        <div class="row">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-6 special">
                                        <h3>500万元</h3>
                                        <h5>土地融资贷款</h5>
                                    </div>
                                    <div class="col-6 text">
                                        <p>公司规模: 小微企业</p>
                                        <p>融资周期: 短期</p>
                                        <p>联系电话: 6248115</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 " style="margin: 0.3rem 0 0.3rem 0.5rem"><p>贷款倒计时：30天：23小时：48分：29秒</p></div>
                        </div>
                    </div>
                </div>
                <div class="row con_n" >
                    <div class="col-1"></div>
                    <div class="col-10 shadows">
                        <div class="row">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-6 special">
                                        <h3>500万元</h3>
                                        <h5>土地融资贷款</h5>
                                    </div>
                                    <div class="col-6 text">
                                        <p>公司规模: 小微企业</p>
                                        <p>融资周期: 短期</p>
                                        <p>联系电话: 6248115</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 " style="margin: 0.3rem 0 0.3rem 0.5rem"><p>贷款倒计时：30天：23小时：48分：29秒</p></div>
                        </div>
                    </div>
                </div>
                <div class="row con_n" >
                    <div class="col-1"></div>
                    <div class="col-10 shadows">
                        <div class="row">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-6 special">
                                        <h3>500万元</h3>
                                        <h5>土地融资贷款</h5>
                                    </div>
                                    <div class="col-6 text">
                                        <p>公司规模: 小微企业</p>
                                        <p>融资周期: 短期</p>
                                        <p>联系电话: 6248115</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 " style="margin: 0.3rem 0 0.3rem 0.5rem"><p>贷款倒计时：30天：23小时：48分：29秒</p></div>
                        </div>
                    </div>
                </div>
                <div class="row con_n" >
                    <div class="col-1"></div>
                    <div class="col-10 shadows">
                        <div class="row">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-6 special">
                                        <h3>500万元</h3>
                                        <h5>土地融资贷款</h5>
                                    </div>
                                    <div class="col-6 text">
                                        <p>公司规模: 小微企业</p>
                                        <p>融资周期: 短期</p>
                                        <p>联系电话: 6248115</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 " style="margin: 0.3rem 0 0.3rem 0.5rem"><p>贷款倒计时：30天：23小时：48分：29秒</p></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</body>
</html>
