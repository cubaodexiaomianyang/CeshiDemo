<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

	
	<script src='${jpath}/static/assets/js/jquery-2.0.3.min.js'></script>
	
	<script src="${jpath}/static/assets/js/bootstrap.min.js"></script>
	<script src="${jpath}/static/assets/js/typeahead-bs2.min.js"></script>
	<script src="${jpath}/static/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="${jpath}/static/assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="${jpath}/static/assets/js/jquery.slimscroll.min.js"></script>
	<script src="${jpath}/static/assets/js/jquery-ui-1.10.3.full.min.js"></script>
	<script src="${jpath}/static/assets/js/jquery.easy-pie-chart.min.js"></script>
	<script src="${jpath}/static/assets/js/jquery.sparkline.min.js"></script>
	<script src="${jpath}/static/assets/js/flot/jquery.flot.min.js"></script>
	<script src="${jpath}/static/assets/js/flot/jquery.flot.pie.min.js"></script>
	<script src="${jpath}/static/assets/js/flot/jquery.flot.resize.min.js"></script>
	<script src="${jpath}/static/assets/js/ace-elements.min.js"></script>
	<script src="${jpath}/static/assets/js/ace.min.js"></script>
	<script src="${jpath}/js/system_plugins.js"></script>
  <script type="text/javascript">
  		
	function chuanzhi(zhi){
		var chuan="{";
		var shuzu=[];
		zhi.find(":input").each(function(index,t){
				
				if($(t).attr("type")=="radio"){
					if($(t).is(":checked")){
						var rado=$(t).attr("name");
						if(rado != null && rado!=""){
							shuzu.push(rado+":'"+$(t).val()+"'");
						}
					}
				}else{
					var zhiduan=$(t).attr("name");
					var zhi=$(t).val();
					shuzu.push(zhiduan+':"'+zhi+'"');
				}
			
		});
		chuan+=shuzu;
		chuan+="}";
		var jsonData = eval("("+chuan+")");
		return jsonData;
	}
  </script>
