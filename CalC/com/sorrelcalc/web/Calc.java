package com.sorrelcalc.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc")
public class Calc extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		int x = Integer.parseInt(request.getParameter("x")); 
		int y = Integer.parseInt(request.getParameter("y")); 
		String op = request.getParameter("operator");
		
		if(op.equals("덧셈")) 
			out.println("계산 결과는 = " + (x+y));
		else 
			out.println("계산 결과는 = " + (x-y));	
		
	}
}
