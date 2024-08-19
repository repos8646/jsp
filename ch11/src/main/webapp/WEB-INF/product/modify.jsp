<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>product::modify</title>
</head>
<body>
	<h3>product 수정</h3>
	
	<a href="/ch11/">처음으로</a>
	<a href="/ch11/product/list.do">등록</a>
	
	<form action="/ch11/product/modify.do" method="post">
		<table border="1">
			<tr>
				<td>상품번호</td>
				<td><input type="text" name="prodNo" value="${product.prodNo}" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><input type="text" name="prodName" value="${product.prodName}"/></td>
			</tr>
			<tr>
				<td>재고수</td>
				<td><input type="text" name="stock" value="${product.stock}"/></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" name="price" value="${product.price}"/></td>
			</tr>
			<tr>
				<td>회사명</td>
				<td><input type="text" name="company" value="${product.company}"/></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="수정하기"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>