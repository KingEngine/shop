/***
 * 项目通用js add by king  
 * 1.显示软键盘
 * 2.禁止键盘输入
 * 
 */
//显示软键盘
function showSoftkeyboard(id) {
	document.getElementById(id).value = '';
	password1 = document.getElementById(id);
	showkeyboard();
}
//禁止键盘输入
function noPermitInput(e) {
	var evt = window.event || e;
	if (isIE()) {
		evt.returnValue = false; //ie 禁止键盘输入  
	} else {
		evt.preventDefault(); //fire fox 禁止键盘输入  
	}
}

 /**
  * 公共easy-ui form查询方法
  * @param formId 表单id
  * @param url    请求url
  * @param tableList  显示列表table
  */
//点击表格行，变颜色
var messageTips ='对不起,暂无数据';
function ajaxFormSearch(formId,url,tableList,pageNumber){
   //存在错误提示 隐藏
   if($("#error").length > 0){
		$("#error").hide();
	}
	var options =$('#'+tableList).datagrid('getPager').data("pagination").options;   
	var page = 1;
	if(pageNumber)
		page=pageNumber;
 	var rows = options.pageSize;
 	$('#'+formId).form('submit', {
 		url: url+'?page='+page+'&rows='+rows,
 		onSubmit: function(){
 			var isValid = $(this).form('validate');
 			if (!isValid){
 				return false;
 			}
 			//显示载入状态
  		   $('#'+tableList).datagrid("loading");
 			return true;
 			
 		},
 		success: function(data){
 			//转换为json对象 
 			var data = eval("("+data+")");
 			//判断后台是否报错
 			if(null != data.error_msg){
 				//如果已存在报错div  刷新错误提示并显示
 				 if($("#error").length > 0){
 					$("#error").html("<font color=\"red\">操作失败:"+data.error_msg+"</font>");
 					$("#error").show();
 				  }else{//否则新建报错div 显示错误提示
 					 var errorDiv="<div id=\"error\"><font color=\"red\">操作失败:"+data.error_msg+"</font></div>";
 					 $('body').append(errorDiv);
 				  }
 				 //如果报错,则跳出方法
 				 return;
 			}
 			//处理查询结果
 			$('#'+tableList).datagrid('loadData',data.rows); 
 			//隐藏载入状态。
 			 $('#'+tableList).datagrid("loaded");
 			//重置分页组件
 			$($('#'+tableList).datagrid('getPager')).pagination({ 
 				total:data.total,
 				pageNumber:page,
 				pageSize:rows,
 				onSelectPage:function(pageNumber, pageSize){
 					$(this).pagination('loading');
 					//查询操作员列表
 					ajaxFormSearch(formId,url,tableList,pageNumber);
 					$(this).pagination('loaded');
 				}
 			}); 
 			//点击下一页
 			if(page > 1){
 				$(".datagrid-cell-rownumber").each(function(i,obj){
 					var curentIndex = (page-1)*rows + i + 1;
 					$(obj).text(curentIndex);
 				});
 			}
 			dRow = data.rows;
 			//查询无结果处理
 			if(dRow==0){
				var columns = $('#'+tableList).datagrid('getColumnFields');
				var fieldName = "";
				var colspanNums = 0;
				var isHidden = $('#'+tableList).datagrid('getColumnOption',columns[0]).hidden;
				if(isHidden){
					fieldName=columns[1];colspanNums=columns.length-1;
				}else{
					fieldName=columns[0];colspanNums=columns.length;
				}
				var msg = "{"+fieldName+":'"+messageTips+"'}";
				$('#'+tableList).datagrid("appendRow",eval("("+msg+")"));
				$('#'+tableList).datagrid("mergeCells",{index:0,field:fieldName,rowspan:null,colspan:colspanNums});
				$('#'+tableList).datagrid({});
			  }
 			}
 	});
}

//定义日期格式
Date.prototype.format = function(format){
	var o = {
	"M+" : this.getMonth()+1, //month
	"d+" : this.getDate(), //day
	"h+" : this.getHours(), //hour
	"m+" : this.getMinutes(), //minute
	"s+" : this.getSeconds(), //second
	"q+" : Math.floor((this.getMonth()+3)/3), //quarter
	"S" : this.getMilliseconds() //millisecond
	}; 

	if(/(y+)/.test(format)) {
		format = format.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
	} 

	for(var k in o) {
		if(new RegExp("("+ k +")").test(format)) {
			format = format.replace(RegExp.$1, RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length));
		}
	}
	return format;
};

//日期格式
var dateFmt = function(value, row, index) {
	if(!value)
		return "";
	
	var dfmt = new Date();
	dfmt.setTime(value);
	var df = dfmt.format("yyyy-MM-dd hh:mm:ss"); 
	return df;
};

//重写默认的formatter函数
$.fn.datebox.defaults.formatter = function(date){
	//alert("date=="+date);
	var y = date.getFullYear();
	var m = date.getMonth()+1;
	var d = date.getDate();
	return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
};

//重写默认的parser函数
$.fn.datebox.defaults.parser = function(s){
	//alert("s=="+s);
	var t = Date.parse(s);
	if (!isNaN(t)){
		return new Date(t);
	} else {
		return new Date();
	}
};
//内容显示长度限制
function contentFormatter(value,row,index){
	if(value==null)return;
	if(value.length>40){
	  value = value.replace(/\s+/g,'');
	  var c = value.match(/.{30}/g);
	  var v1="";
	  for(i in c){v1+=c[i]+"\n";}
	  v1 += value.substring(c.length*30,value.length);
	  return "<a href='#' title='"+v1+"' class='easyui-tooltip'>"+value.substr(0,20)+"............</a>";
	}else if(value.length>20){
		return "<a href='#' title='"+value+"' class='easyui-tooltip'>"+value.substr(0,20)+"............</a>";
	}else{
	   return value;
	}
}
//numberbox禁止输入"-"
function numberFilter(e){var kCode = String.fromCharCode(e.which);if(e.which==8){return true;}else if(/^\D$/.test(kCode)){return false;}}

//加载页面
$(function() {
	//阻止firefox自动记住密码
	/*$("form").each(function(i){
		$(this).attr("autocomplete","off");
		//alert(i +"====form======" +$(this).attr("autocomplete"));
	 });*/
	
});




