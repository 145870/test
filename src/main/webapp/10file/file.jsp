<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h1>文件上传</h1>resp.getWriter().write("该手机号已被注册请重新<a herf='reg.jsp'>注册</a>");
	<form action="img" method="post" enctype="multipart/form-data">
		<input name='img' type="file"> <input name='desc'>
		 <inputtype="submit">
	</form>

	<img id='addimg' src="../images/${photo }">
	<button id='add'>下载</button>

	<script>
		document.getElementById('add').addEventListener('click', function() {
			var imageUrl = document.getElementById('addimg').src;
			var fileName = '文件名.jpg'; // 下载后保存的文件名

			var link = document.createElement('a');
			link.href = imageUrl;
			link.download = fileName;
			link.target = '_blank';
			document.body.appendChild(link);
			link.click();
			document.body.removeChild(link);
		});
	</script>
</body>
</html>