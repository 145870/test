<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery-3.5.1.min.js"></script>
<script>
	$(function (){
		$("#f").submit(function(){
			if($('#a').val().trim().length>0)&&$('#b').val().trim().lenfth>0){
				return true;
		    }
			alert('6');
			return false;
		})
	})
</script>
</head>
<body>
	<h1>留言</h1>
	<form id='f' action="insert" method="post">
		<p>
			留言人: <input id='a' name='name' />
		</p>
		<p>
			内容:
			<textarea id='b' name='txt'></textarea>
		</p>
		<input type='submit'>
	</form>
</body>
</html>