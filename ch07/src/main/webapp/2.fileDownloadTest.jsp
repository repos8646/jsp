<%@page import="sub1.FileVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//데이터베이스 처리
	String host = "jdbc:mysql://127.0.0.1:3306/studydb";
	String user = "root";
	String pass = "1234";
	
	List<FileVO> files = new ArrayList<>();
	
	try{
		
		// 1단계 - 드라이버 로드
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		// 2단계
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		// 3단계
		Statement stmt = conn.createStatement();
		
		// 4단계
		String sql = "select * from `fileTest`";
		ResultSet rs = stmt.executeQuery(sql);
		
		// 5단계
		while(rs.next()){
			FileVO vo = new FileVO();
			vo.setNo(rs.getInt(1));
			vo.setUid(rs.getString(2));
			vo.setName(rs.getString(3));
			vo.setOname(rs.getString(4));
			vo.setSname(rs.getString(5));
			vo.setRdate(rs.getString(6));
			
			files.add(vo);
		}
		
		// 6단계 - 데이터베이스 종료
		rs.close();
		stmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}

%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>2.filedownloadTest</title>
	
	<!-- 
		날짜 : 2024/08/12
		이름 : 김보경
		내용 : 파일 다운로드 실습하기
	 -->
	 <script>
		window.onload = function() {
			const del = document.querySelectorAll('.del');
			
			// 목록에 '삭제' 링크가 여러개이기 때문에 문서객체 리스트를 반복하면서 이벤트 처리
			// 고전 문서객체 선택함수(getElement~)는 forEach 지원 안함
			del.forEach(function(item) {
				item.onclick = function (e) {
					const result = confirm('정말 삭제하시겠습니까?');
					
					if(!result){
						e.preventDefault();
					}
				}
			});
		}
		
	</script>
</head>
<body>
	<h3>2.파일 다운로드</h3>
	
	<table border="1">
		<tr>
			<th>파일번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>원본파일명</th>
			<th>저장파일명</th>
			<th>등록일</th>
			<th>다운로드</th>
		</tr>
		
		<% for(FileVO vo : files){ %>
		<tr>
			<td><%= vo.getNo() %></td>
			<td><%= vo.getUid() %></td>
			<td><%= vo.getName() %></td>
			<td><%= vo.getOname() %></td>
			<td><%= vo.getSname() %></td>
			<td><%= vo.getRdate().substring(0, 10) %></td>
			<td>
				<a href="./proc/fileDelete.jsp?no=<%= vo.getNo() %>" class="del">삭제</a>
				<a href="./proc/fileDownload.jsp?no=<%= vo.getNo() %>">다운로드</a>
			</td>
		</tr>
		<% } %>
	</table>

</body>
</html>