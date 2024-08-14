<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ajax::User5</title>
	<script>
		
		window.onload = function() {
			
			const btnSubmit = document.getElementsByName('submit')[0];
			const formUser = document.getElementsByTagName('form')[0];
		
			btnSubmit.onclick = (e) => {
				e.preventDefault();
				
				const seq = formUser.seq.value;
				const name = formUser.name.value;
				const gender = formUser.gender.value;
				const age = formUser.age.value;
				const addr = formUser.addr.value;
				
				// json 데이터 생성
				const jsonData = {
					"seq": seq,
					"name": name,
					"gender": gender,
					"age": age,
					"addr": addr
				};
				
				console.log(jsonData);
				
				// 서버 전송
				fetch('./proc/registerProc.jsp', {
						method: 'POST',
						headers: {'content-Type': 'application/json'},
						body: JSON.stringify(jsonData)
					})
					.then(response => response.json())
					.then(data => {
						console.log(data);
						
						// 서버에서 결과 데이터 수신
						if(data.result > 0){
							alert('등록 성공!');
							
							// 목록 이동
							location.href = './list.jsp';
						}else{
							alert('등록 실패!');
						}
					})
					.catch(err => {
						console.log(err);
					});
				
			}
		}
	
	
	
	</script>
</head>
<body>
	<h3>User5 등록</h3>
	
	<a href="./list.jsp">목록이동</a>
	<form action="#" method="post">
		<table border="1">
			<tr>
				<td>번호</td>
				<td><input type="number" name="seq"/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="text" name="gender"/></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input type="number" name="age"/></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="addr"/></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" name="submit" value="등록하기"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>