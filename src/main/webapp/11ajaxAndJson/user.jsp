<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='jquery-3.5.1.min.js'></script>
<script type="text/javascript">
	function refresh(){
		$.ajax({
			type:"post",
			url:"user",
			dataType:"json",
			success:function(data){
				console.log(data)
				 $("#box tbody").empty(); 
				for(var user of data){
					var td1=$("<td>").html(user.uname);
					var td2=$("<td>").html(user.uphone);
					var td3=$("<td>").html(user.uaddress);
					var td4=$("<td>").html("<button onclick='del("+user.uid+")' uid='"+user.uid+"'>删除</button>");
					
					var tr=$("<tr>").append(td1).append(td2).append(td3).append(td4)
					$("#box tbody").append(tr)
				}
			},
			error: function () {
                alert("请求失败")
            }
		})
	}
	refresh();
	//删除
	function del(id) {
   	 	$.ajax({
        	type: "post",
        	url: "del",
        	dataType: "text",
        	data:{uid:id},
        	success: function(txt) {
            	alert(txt);
            	refresh();
        	},
        	error: function() {
            	alert("请求失败");
        	}
    	})
	}
</script>
</head>
<body>
	<table border='1' id='box'>
		<tr>
		<thead>
			<td>名称</td>
			<td>手机号</td>
			<td>地址</td>
			<td>操作</td>
		</thead>
		</tr>
	</table>
</body>
</html>