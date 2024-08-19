<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>customer::list</title>
</head>
<body>
	<h3>고객목록</h3>
	
	<a href="/ch11/">처음으로</a>
	<a href="/ch11/customer/register.do">등록</a>

	<table border="1">
		<tr>
			<td>고객아이디</td>
			<td>고객명</td>
			<td>휴대폰</td>
			<td>주소</td>
			<td>가입일</td>
			<td>관리</td>
		</tr>
		<c:forEach var="customer" items="${customers}">
		<tr>
			<td>${customer.custId}</td>
			<td>${customer.name}</td>
			<td>${customer.hp}</td>
			<td>${customer.addr}</td>
			<td>${customer.rdate}</td>
			<td>
				<a href="/ch11/customer/modify.do?custId=${customer.custId}">수정</a>
				<a href="/ch11/customer/delete.do?custId=${customer.custId}">삭제</a>
			</td>
		</tr>
		</c:forEach>
	</table>	
</body>
</html>