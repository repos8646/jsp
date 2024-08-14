<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 데이터 수신
	String seq = request.getParameter("seq");
	
	int rowCount = 0;
	
	try {
		// 1단계 - JNDI 서비스 객체 생성
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		
		// 2단계 - 커넥션 가져오기
		DataSource ds = (DataSource) ctx.lookup("jdbc/studydb");
		Connection conn = ds.getConnection();
		
		// SQL실행 객체 생성
		String sql = "delete from `user5` where `seq`=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, seq);
		
		// SQL실행
		rowCount = psmt.executeUpdate();
		
		// 5단계 - 데이터베이스 종료
		psmt.close();
		conn.close();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	// 목록 이동
	JsonObject json = new JsonObject();
	json.addProperty("result", rowCount);
	out.print(json.toString());


%>