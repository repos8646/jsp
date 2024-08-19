<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>product::list</title>
</head>
<body>
	<h3>고객목록</h3>
	
	<a href="/ch11/">처음으로</a>
	<a href="/ch11/product/register.do">등록</a>

	<table border="1">
		<tr>
			<td>상품번호</td>
			<td>상품명</td>
			<td>재고수</td>
			<td>가격</td>
			<td>회사명</td>
			<td>관리</td>
		</tr>
		<c:forEach var="product" items="${products}">
		<tr>
			<td>${product.prodNo}</td>
			<td>${product.prodName}</td>
			<td>${product.stock}</td>
			<td>${product.price}</td>
			<td>${product.company}</td>
			<td>
				<a href="/ch11/product/modify.do?prodNo=${product.prodNo}">수정</a>
				<a href="/ch11/product/delete.do?prodNo=${product.prodNo}">삭제</a>
			</td>
		</tr>
		</c:forEach>
	</table>	
</body>
</html>