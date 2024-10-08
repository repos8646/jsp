<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>User3::modify</title>
</head>
<body>
	<h3>User3 수정</h3>
	
	<a href="/ch10/">처음으로</a>
	<a href="/ch10/user3/list.do">등록</a>
	
	<form action="/ch10/user3/modify.do" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid" value="${requestScope.user.uid}" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="${user.name}"/></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="date" name="birth" value="${user.birth}"/></td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name="hp" value="${user.hp}"/></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="addr" value="${user.addr}"/></td>
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