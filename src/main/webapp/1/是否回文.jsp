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
	public String isHuiWen(String input){
		int left = 0;
    	int right = input.length() - 1;
    
   	 	while (left < right) {
        	if (input.charAt(left) != input.charAt(right)) {
           		return input+"不是回文";
        	}
        	left++;
            right--;
        }
    	return input+"是回文";
	}
%>

<%=isHuiWen("kdsjaw") %>
<br/>
<%=isHuiWen("12321") %>
</body>
</html>