/**
 * 初始化
 */
var demo = {
    id: "coupon-table",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1,
    ctx : Feng.ctxPath,
    
    // 初始化表格的列
    initColumn : function(){
    	var columns = [
			{field: 'selectItem', radio: true},
			{title: '主键ID', field: 'couponId', visible: false, align: 'center', valign: 'middle'},
			{title: '优惠券名称', field: 'couponName', visible: true, align: 'center', valign: 'middle'},
			{title: '优惠券类型', field: 'couponType', visible: true, align: 'center', valign: 'middle'},
			{title: '开始时间', field: 'startTime', visible: true, align: 'center', valign: 'middle'},
			{title: '过期时间', field: 'endTime', visible: true, align: 'center', valign: 'middle'},
			{title: '操作人', field: 'operatorId', visible: true, align: 'center', valign: 'middle'},
			{title: '创建时间', field: 'gmtCreate', visible: true, align: 'center', valign: 'middle'},
			{title: '是否有效', field: 'couponStatus', visible: true, align: 'center', valign: 'middle'},
			{title: '操作', 
          	  field: 'A', 
          	  visible: true, 
          	  events:operateEvents, 
          	  formatter: demo.operateButton
      	  	}
        ];
    	
    	return columns;
    },
    
	/**
	 * 绑定按钮服务
	 */
	operateButton : function(value , row , index){
		var html_ = '<div style="text-align:center">'
							+ '<a id="coupon-detail" type="button" class="">详情</a> | '  
		        			+ '<a id="coupon-edit" type="button" class="">编辑</a> </div>';
		return html_;
	},
	
	
	// 检查是否选中
	check : function(){
		var selected = $('#' + demo.id).bootstrapTable('getSelections');
	    if(selected.length == 0){
	        Feng.info("请先选中表格中的某一记录！");
	        return false;
	    }else{
	    	demo.seItem = selected[0];
	        return true;
	    }
	},

	// 插叙按钮  		
	search : function(){
		var queryData = {};
	    queryData['couponName'] = $("#coupon-name").val();
	    queryData['couponStatus'] = $("#coupon-status").val(); 
	    queryData['beginTime'] = $("#begin-time").val(); 
	    queryData['endTime'] = $("#end-time").val(); 
	    demo.table.refresh({query : queryData});
	},
    
	// 请求服务器
	ajaxMessage : function(url , data_){
		$.ajax({
			type: 'POST',
			url: demo.ctx+url,
			dataType: 'json',
			data: data_,
			success: function(res) {
				demo.search();
				return res;
			},
			error:function(e){
				return 'error';
			}
		});
	},
    
    
};
 
$(function () {
    var colunms = demo.initColumn();
    var table = new BSTable(demo.id, "/coupon/coupon/ajax_coupon_list", colunms);
    table.setPaginationType("client");  // server 
    demo.table = table.init();
});


window.operateEvents = {
		"click #coupon-detail" : function(e , value , row , index){
			
		},
		"click #coupon-edit" : function(e , value , row , index){
			
		}
}






















