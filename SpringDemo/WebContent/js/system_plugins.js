
	
	function prevBtn(tbl,cl,parmens,url,isfy,nowPageNum,nowPageSize){
		if(nowPageNum>1){
			parmens.pageNum=nowPageNum-1;
			parmens.pageSize=nowPageSize;
			tbl.loadTabl(tbl,cl,parmens,url,isfy);
		}
	}
	function pages(tbl,cl,parmens,url,isfy,i,nowPageSize){
		parmens.pageNum=i;
		parmens.pageSize=nowPageSize;
		tbl.loadTabl(tbl,cl,parmens,url,isfy);
	}
	function nextBtn(tbl,cl,parmens,url,isfy,nowPageNum,nowPageSize,totalRecord){
		if(nowPageNum<totalRecord){
			parmens.pageNum=nowPageNum+1;
			parmens.pageSize=nowPageSize;
			tbl.loadTabl(tbl,cl,parmens,url,isfy);
		}
	}
	
	$.fn.extend({
		loadCombox:function(inputzhi){
			this.find("input[on_type='"+inputzhi+"']").each(function(index,_this){
				
				
				var select_id=$(_this).attr("id");
				var select_on_id=$(_this).attr("on_id");
				var select_name=$(_this).attr("name");
				var select_value=$(_this).attr("value");
				var selectloadUrl=$(_this).attr("loadUrl");
				var select_on_name=$(_this).attr("on_name");
				
				var selectStr='<select id="'+select_on_id+'_selects" name="'+select_name+'" class="col-xs-10 col-sm-5"></select>';
				$(_this).after(selectStr);
				
				$.post(selectloadUrl,{},function(data){
					var json=$.parseJSON(data);
					var comboxJson=json.obj;
					var options='<option value="-1">请选择</option>';
					for(var i=0;i<comboxJson.length;i++){
						if(select_value=='' || select_value==null){
							options += '<option value="'+comboxJson[i][""+select_id+""]+'">'+comboxJson[i][""+select_on_name+""]+'</option>';
						}else{
							var selected="";
							if(select_value==comboxJson[i][""+select_id+""]){
								selected='selected="selected"';
							}
								options += '<option value="'+comboxJson[i][""+select_id+""]+'" '+selected+'>'+comboxJson[i][""+select_on_name+""]+'</option>';
						}
					}
					$("#"+select_on_id+"_selects").append(options);
				});
				$("#"+select_on_id+"_selects").change(function(){
					var onche=$(this).val();
					$(_this).attr("value",onche);
				});
			});
		},loadfy:function(json,cl,parmens,url){
			var tabl_this=this;
			$("#fy").remove();
			tabl_this.after('<div class="modal-footer no-margin-top" id="fy"></div>');
			$("#fy").append('<button class="btn btn-warning pull-left" onclick="tianjiashuju()">添加</button><button class="btn btn-danger pull-left" onclick="plshanchu()">批量删除</button><ul class="pagination pull-right no-margin"></ul>');
			var tr=json.obj.totalRecord;
			if(tr>0){
				$("#fy").show();
				var prevDisabled="";
				if(json.obj.pageNum==1){
					prevDisabled="disabled";
				}
				var fyli="<li class='prev "+prevDisabled+"' id='diyiye'><a style='height:3.2rem' href='javascript:void(0);' onclick=''>";
					fyli+="第一页</a></li>";
					fyli+="<li class='prev "+prevDisabled+"' id='shangyiye'><a style='height:3.2rem' href='javascript:void(0);' onclick=''>";
					fyli+="<i class='icon-double-angle-left'></i></a></li>";
				for(var i=1;i<=json.obj.totalPage;i++){
					var ac="";
					if(json.obj.pageNum==i){
						ac='active';
					}
						fyli+="<li class='dangqian "+ac+"' name='"+i+"'><a href='javascript:void(0);' onclick=''>"+i+"</a></li>";
				}
				var NextprevDisabled="";
				if(json.obj.pageNUm==json.obj.totalPage){
					NextprevDisabled="disabled";
				}
				fyli+="<li class='next "+NextprevDisabled+"' id='xiayiye'><a style='height:3.2rem' href='javascript:void(0);' onclick=''>";
				fyli+="<i class='icon-double-angle-right'></i></a></li>";
				fyli+="<li class='next "+NextprevDisabled+"' id='zuihouye'><a style='height:3.2rem' href='javascript:void(0);' onclick=''>";
				fyli+="最后一页</a></li>";
				
				$("#fy>ul").find("li").remove();
				$("#fy>ul").append(fyli);
				
				$("#diyiye").click(function(){
					parmens.pageNum=1;
					tabl_this.loadTabl(cl,parmens,url,true);
				});
				$("#shangyiye").click(function(){
					if(parmens.pageNum>1){
						parmens.pageNum=1;
						tabl_this.loadTabl(cl,parmens,url,true);
					}
				});
				$(".dangqian").click(function(){
					var i=$(this).attr("name");
					parmens.pageNum=i;
					tabl_this.loadTabl(cl,parmens,url,true);
				});
				
				$("#xiayiye").click(function(){
					if(json.obj.totalRecord>parmens.pageNum){
						parmens.pageNum=parmens.pageNum+1;
						tabl_this.loadTabl(cl,parmens,url,true);
					}
				});
				
				$("#zuihouye").click(function(){
						parmens.pageNum=json.obj.totalPage;
						tabl_this.loadTabl(cl,parmens,url,true);
					
				});
			}
		},
		loadTabl:function(cl,parmens,url,isfy){
		var tabl_this=this;
		$.post(url,parmens,function(data){
			var json=$.parseJSON(data);
			if(json.res=="1"){
				var result=json.obj.results;
				var tdStr='<tr>';
				for(var i=0;i<result.length;i++){
					for(var j=0;j<cl.length;j++){
						var clOne=cl[j].name;
						var clTow=cl[j].cl;
						var tabl_html="";
						if(typeof clTow=='function' && clTow!=null){
							 tabl_html=clTow(j,result[i][""+clOne+""]);
						}
						if(tabl_html!=""){
							tdStr+='<td>'+tabl_html+'</td>';
						}else{
							tdStr+='<td>'+result[i][""+clOne+""]+'</td>';
						}
					}
					tdStr+='</tr>';
				}
				tabl_this.children("tbody").eq(0).find("tr").remove();
				tabl_this.children("tbody").eq(0).append(tdStr);
				
				if(isfy){
					tabl_this.loadfy(json,cl,parmens,url);
				}
			}
		});
	},
	a:function(cl,parmens,url,isfy){
		var tabl_this=this;
		$.post(url,parmens,function(data){
			var json=$.parseJSON(data);
			if(json.res=="1"){
				var result=json.obj.results;
				var tdStr='<tr>';
				for(var i=0;i<result.length;i++){
					for(var j=0;j<cl.length;j++){
						var clOne=cl[j].name;
						var clTow=cl[j].cl;
						var tabl_html="";
						if(typeof clTow=='function' && clTow!=null){
							 tabl_html=clTow(j,result[i][""+clOne+""]);
						}
						if(tabl_html!=""){
							tdStr+='<td>'+tabl_html+'</td>';
						}else{
							tdStr+='<td>'+result[i][""+clOne+""]+'</td>';
						}
					}
					tdStr+='</tr>';
				}
				tabl_this.children("tbody").eq(0).find("tr").remove();
				tabl_this.children("tbody").eq(0).append(tdStr);
				
				if(isfy){
					tabl_this.b(json,cl,parmens,url);
				}
			}
		});
	},b:function(json,cl,parmens,url){
		var tabl_this=this;
		$("#fy").remove();
		tabl_this.after('<div class="modal-footer no-margin-top" id="fy"></div>');
		$("#fy").append('<button class="btn btn-danger pull-left" onclick="plshanchu()">批量删除</button><ul class="pagination pull-right no-margin"></ul>');
		var tr=json.obj.totalRecord;
		if(tr>0){
			$("#fy").show();
			var prevDisabled="";
			if(json.obj.pageNum==1){
				prevDisabled="disabled";
			}
			var fyli="<li class='prev "+prevDisabled+"' id='diyiye'><a href='javascript:void(0);' onclick=''>";
				fyli+="第一页</a></li>";
				fyli+="<li class='prev "+prevDisabled+"' id='shangyiye'><a href='javascript:void(0);' onclick='' style='height: 2.3rem;'>";
				fyli+="<i class='icon-double-angle-left'></i></a></li>";
			for(var i=1;i<=json.obj.totalPage;i++){
				var ac="";
				if(json.obj.pageNum==i){
					ac='active';
				}
					fyli+="<li class='dangqian "+ac+"' name='"+i+"'><a href='javascript:void(0);' onclick=''>"+i+"</a></li>";
			}
			var NextprevDisabled="";
			if(json.obj.pageNUm==json.obj.totalPage){
				NextprevDisabled="disabled";
			}
			fyli+="<li class='next "+NextprevDisabled+"' id='xiayiye'><a href='javascript:void(0);' onclick='' style='height: 2.3rem;'>";
			fyli+="<i class='icon-double-angle-right' ></i></a></li>";
			fyli+="<li class='next "+NextprevDisabled+"' id='zuihouye'><a href='javascript:void(0);' onclick=''>";
			fyli+="最后一页</a></li>";
			
			$("#fy>ul").find("li").remove();
			$("#fy>ul").append(fyli);
			
			$("#diyiye").click(function(){
				parmens.pageNum=1;
				tabl_this.a(cl,parmens,url,true);
			});
			$("#shangyiye").click(function(){
				if(parmens.pageNum>1){
					parmens.pageNum=1;
					tabl_this.a(cl,parmens,url,true);
				}
			});
			$(".dangqian").click(function(){
				var i=$(this).attr("name");
				parmens.pageNum=i;
				tabl_this.a(cl,parmens,url,true);
			});
			
			$("#xiayiye").click(function(){
				if(json.obj.totalRecord>parmens.pageNum){
					parmens.pageNum=parmens.pageNum+1;
					tabl_this.a(cl,parmens,url,true);
				}
			});
			
			$("#zuihouye").click(function(){
					parmens.pageNum=json.obj.totalPage;
					tabl_this.a(cl,parmens,url,true);
				
			});
		}
	},loadNews:function(lujing,page,cl){//用于展示前端页面小新闻列表的单条，条目。
		var _this=this;
		console.log(cl);
   		$.post(lujing,page,
   	   			function(data){
   	   					var jsonarr=$.parseJSON(data);
   	   					var json=jsonarr.obj.results;
   	   					var newhtmls="";
   	   					for(var i=0;i<json.length;i++){
   	   						newhtmls+="<div class='row news'>";
   	   						newhtmls+="<div class='col-12'>";
   	   						newhtmls+="<div class='row news_con' huoquid='"+json[i][''+cl[4].name+'']+"'>";
   	   						newhtmls+="<div class='col-4'><img src='"+jpath+json[i][''+cl[0].name+'']+"' /></div>";
   	   						newhtmls+="<div class='col-8 text'>";
   	   						newhtmls+="<div class='row'><div class='col-12 font'><h6>"+json[i][''+cl[1].name+'']+"</h6></div></div>";
   	   						newhtmls+="<div class='row'><div class='col-12 font_ell'>"+json[i][''+cl[2].name+'']+"</div></div>";
   	   						newhtmls+="<div class='row font'>";
   	   						if(cl.length<=5){
   	   						newhtmls+="<div class='col-12' align='right'>"+json[i][''+cl[3].name+'']+"</div>";
   	   						}else{
   	   						newhtmls+="<div class='col-6'>"+json[i][''+cl[3].name+'']+"</div>";
	   	   						if(json[i][''+cl[5].name+'']!="" && json[i][''+cl[5].name+'']!=null){
	   	   							newhtmls+="<div class='col-6' align='right'>"+json[i][''+cl[5].name+'']+"</div>";
	   	   						}else{
	   	   						newhtmls+="<div class='col-6' align='right'>来源:xxxxxxx</div>";
	   	   						}
   	   						}
   	   						newhtmls+="</div>";
   	   						newhtmls+="</div>";
   	   						newhtmls+="</div>";
   	   						newhtmls+="</div>";
   	   						newhtmls+="</div>";	
   	   					}
   	   					_this.append(newhtmls);
   	   				}
   	   			);
		},loadNewzt:function(url,parmens,cl){
			var _this=this;
			$.post(url,parmens,function(data){
				console.log("进入后台返回数据");
				var jsonarr=$.parseJSON(data);
					var json=jsonarr.obj.results;
					var shadows="";
					for(var i=0;i<json.length;i++){
						shadows+="<div class='row con_n'>";
						shadows+=" <div class='col-1'></div>";
   						if(cl.length<=5){
   							shadows+="<div class='col-10 shadows'>";
   						}else{
   							if(json[i].shenhezhuangtai!=null || json[i].shenhezhuangtai!=""){
   	   							if(json[i].shenhezhuangtai==0){
   	   								shadows+="<div class='col-10 shadows'>";
   	   							}else if(json[i].shenhezhuangtai==1){
   	   								shadows+="<div class='col-10 shadows bg_color'>";
   	   							}else{
   	   								shadows+="<div class='col-10 shadows'>";
   	   							}
   	   						}
   						}
						shadows+="<div class='row'>";
						shadows+="<div class='col-9'>";
						shadows+="<div class='row'>";
						shadows+="<div class='col-12'>";
						shadows+="<div class='row'>";
						shadows+="<div class='col-8 special'><h3>"+json[i][''+cl[0].name+'']+"万元</h3><h5>"+json[i][''+cl[1].name+'']+"</h5></div>";
						shadows+="<div class='col-4 text'><p>公司规模:"+json[i][''+cl[2].name+'']+"</p><p>融资周期:"+json[i][''+cl[3].name+'']+"</p><p>联系电话:"+json[i][''+cl[4].name+'']+"</p></div>";
						shadows+="</div>";
						shadows+="</div>";
						shadows+="</div>";
						shadows+="<div class='row'><div class='col-12' style='margin: 0.3rem 0 0.3rem 0.5rem'><p>贷款倒计时：30天：23小时：48分：29秒</p></div></div>";
						shadows+="</div>";
						if(cl.length<=5){
							shadows+="";
						}else{
							if(json[i].shenhezhuangtai!=null || json[i].shenhezhuangtai!=""){
								if(json[i].shenhezhuangtai==0){
									shadows+="<div class='col_3 icon'><img src='"+jpath+"static/FrontStatic/image/icon_5.png'/></div>";
								}else if(json[i].shenhezhuangtai==1){
									shadows+="<div class='col_3 icon'><img src='"+jpath+"static/FrontStatic/image/icon_6.png'/></div>";
								}else{
									shadows+="";
								};
							}
						}
						shadows+="</div>";
						shadows+="</div>";
						shadows+="</div>";
					};
					
					_this.append(shadows);
		});
		}
});
	
	
	$.extend({
		loadComboxDOM:function(formId,inputzhi){
				$("#"+formId).find("input[on_type='"+inputzhi+"']").each(function(index,_this){
				var select_id=$(_this).attr("id");
				var select_on_id=$(_this).attr("on_id");
				var select_name=$(_this).attr("name");
				var select_value=$(_this).attr("value");
				var selectloadUrl=$(_this).attr("loadUrl");
				var select_on_name=$(_this).attr("on_name");
				
				var selectStr='<select id="'+select_on_id+'_selects" name="'+select_name+'" class="col-xs-10 col-sm-5"></select>';
				$(_this).after(selectStr);
				
				$.post(selectloadUrl,{},function(data){
					var json=$.parseJSON(data);
					var comboxJson=json.obj;
					var options='<option value="-1">请选择</option>';
					for(var i=0;i<comboxJson.length;i++){
						if(select_value=='' || select_value==null){
							options += '<option value="'+comboxJson[i][""+select_id+""]+'">'+comboxJson[i][""+select_on_name+""]+'</option>';
						}else{
							var selected="";
							if(select_value==comboxJson[i][""+select_id+""]){
								selected='selected="selected"';
							}
								options += '<option value="'+comboxJson[i][""+select_id+""]+'" '+selected+'>'+comboxJson[i][""+select_on_name+""]+'</option>';
						}
					}
					$("#"+select_on_id+"_selects").append(options);
				});
				$("#"+select_on_id+"_selects").change(function(){
					var onche=$(this).val();
					$(_this).attr("value",onche);
				});
			});
		}
	});
	


