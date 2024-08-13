<%@ page contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// JSON 문자열 생성
	String jsonData = "{\"uid\": \"a101\", \"name\": \"홍길동\", \"age\": 23, \"addr\": \"부산\"}"; // 문자열 안의 문자열을 이스케이프(\) 처리

	// JSON 출력
	out.print(jsonData);
%>