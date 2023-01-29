package com.sorrelcalc.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc2")
public class Calc2 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookies = request.getCookies(); 		
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String v_ = request.getParameter("v");
		String op = request.getParameter("operator");		
		
		int v = 0;
		if(!v_.equals("")) v = Integer.valueOf(v_);
		
		if(op.equals("=")) {
			
			int x = 0;
			int y = v;						
			
			for (Cookie c : cookies) { //쿠키 읽기
				if (c.getName().equals("value")) {
					x = Integer.valueOf(c.getValue());
					break;
				}
			}
			
			String operator = "";
			for (Cookie c : cookies) {
				if (c.getName().equals("op")) {
					operator = c.getValue();
					break;
				}
			}
			
			int result = 0;
			
			if(operator.equals("+")) 
				result = x+y;
			else 
				result = x-y;
			out.println("계산 결과는 = " + result);
			
		} else { //operator가 + 또는 -			
			Cookie valueCookie = new Cookie("value", String.valueOf(v));
			Cookie opCookie = new Cookie("op", op);
			valueCookie.setPath("/calc2");
			valueCookie.setMaxAge(60*60*24); 
			opCookie.setPath("/calc2");
			response.addCookie(valueCookie); //클라이언트에 전달
			response.addCookie(opCookie);
			
			response.sendRedirect("calc2.html");
		}		
	}
}
