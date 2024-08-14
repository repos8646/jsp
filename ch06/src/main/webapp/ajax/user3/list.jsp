<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ajax::user3</title>
	<script>
		
		window.onload = function() {

			const table = document.getElementsByTagName('table')[0];
			
			// 사용자 데이터 요청
			fetch('./proc/getUsers.jsp')
				.then(response=>response.json())
				.then(data => {
					console.log(data);
					
					for(const user of data){
						console.log(user.uid);
						
						const row = `<tr>
										<td>\${user.uid}</td>
										<td>\${user.name}</td>
										<td>\${user.birth}</td>
										<td>\${user.hp}</td>
										<td>\${user.addr}</td>
										<td>
											<a href='#' class='modify'>수정</a>
											<a href='#' class='delete'>삭제</a>
										</td>
									</tr>`;
						
						table.insertAdjacentHTML('beforeend', row);
					}
					
					
				})
				.catch(err => {
					console.log(err);
				});
			
			// 삭제 클릭 이벤트(동적 이벤트 연결을 위해 body태그에 이벤트 처리를 위임)
			document.body.addEventListener('click', function(e){
				
				
				if(e.target.classList.contains('delete')){
					e.preventDefault();
					const tr = e.target.closest('tr');
					const uid = tr.children[0].innerText;
					
					// 삭제 요청
					fetch('./proc/deleteProc.jsp?uid='+uid)
						.then(response=>response.json())
						.then(data => {
							console.log(data);
							if(data.result > 0){
								
								alert('삭제 했습니다.');
								tr.remove();
								
							}
						})
						.catch(err => {
							console.log(err);
						});
					
					
					
				}
				
				// 수정 클릭 이벤트
				if(e.target.classList.contains('modify')){
					e.preventDefault();
					const tr = e.target.closest('tr');
					const uid = tr.children[0].innerText;
					
					location.href = './modify.jsp?uid='+uid;
				}
				
				
			});
			

		}// onload end
	
	</script>
</head>
<body>
	<h3>user3</h3>
	
	<a href="./register.jsp">등록하기</a>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>생년월일</td>
			<td>휴대폰</td>
			<td>주소</td>
			<td>관리</td>
		</tr>
	</table>
</body>
</html>