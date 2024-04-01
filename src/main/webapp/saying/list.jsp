<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table {
	border-collapse: collapse;
	width: 400px;
	margin: 10px;
}

table tr td {
	width: 150px;
	padding: 10px;
}

table tr td:first-child {
	text-align: center;
}

}
table tr td:nth-child(3) {
	text-align: center;
}
</style>

<script src="jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		$('.delnow').click(function() {
			var sid = $(this).parent().parent().parent().parent().attr('sid');
			delSById(sid);
		})
		$('#delcheckbox').click(
				function() {
					var sids = [];
					$('table').each(
							function() {
								if ($(this).find('tr').eq(0).find('td').eq(0)
										.find('input[name="del"]').is(
												':checked')) {
									sids.push($(this).attr('sid'));
								}
							});
					for (var i = 0; i < sids.length; i++) {
						delSById(sids[i]);
					}
					
				})
		function delSById(id) {
			$.ajax({
				url : 'delById',
				type : 'post',
				data : {
					sid : id
				},
				dataType : 'text',
				success : function(txt) {
					location.reload();
				}
			})
		}
	})
</script>
</head>
<body>
	<h1>所有留言</h1>
	<a href="insert.jsp">去留言</a>
	<c:forEach items="${list}" var="s">
		<table border="1" sid='${s.sid}'>
			<tr>
				<td rowspan="2"><input name='del' type="checkbox"></td>
				<td >留言人</td>
				<t d>${s.suser }</td>
				<td>时间</td>
				<td><fmt:formatDate value="${s.stime}"
						pattern="yyyy-MM-dd HH:mm:ss" /></td>
				<td rowspan="2">
					<button class='delnow'>删除留言</button>
				</td>
			</tr>
			<tr>
				<td>内容</td>
				<td colspan="3"><input value='${s.scontent}'>
					<button>确认修改</button></td>
			</tr>
		</table>
	</c:forEach>

<br>
	<button id='delcheckbox'>删除选中</button>
	<button>查看统计</button>
</body>

</html>