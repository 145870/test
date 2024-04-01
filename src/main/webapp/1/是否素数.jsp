<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	public String isSuShu(int num){
	 	if (num <= 1) {
         	return num+"不是素数";
     	}
     
     	for (int i = 2; i <= Math.sqrt(num); i++) {
        	 if (num % i == 0) {
             	return num+"不是素数";
         	}
     	}
		return num+"是素数";
	}
%>
<%=isSuShu(123) %>
<br>
<%=isSuShu(23) %>


</body>
</html>