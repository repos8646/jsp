package com.jboard.controller.user;

import java.io.IOException;

import com.jboard.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/user/delete.do")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserService service = UserService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 데이터 수신
		String uid = req.getParameter("uid");
		
		// 데이터 삭제
		service.deleteUser(uid);
		
		// 리다이렉트
		resp.sendRedirect("/jboard/user/login.do");
	
	}
}
