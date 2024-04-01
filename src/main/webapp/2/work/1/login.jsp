<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
    function refreshImage() {
    	document.querySelector("img").src="cokeImg.jsp?" + new Date().getTime();
    }
</script>
</head>
<body>
    验证码:<img id="captchaImg" src="cokeImg.jsp" onclick="refreshImage()"><br>
</form>
</body>
</html>