package com.sorrelcalc.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calculator")
public class Calculator extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		if(req.getMethod().equals("GET")) { // html <body> <form method>�� get? (�빮�� ��� �ʼ�)
			System.out.println("GET ��û�� �Խ��ϴ�.");
		}
		else if(req.getMethod().equals("POST")) {  // post? (�빮�� ��� �ʼ�)
			System.out.println("POST ��û�� �Խ��ϴ�.");
		}
		
//		super.service(req, resp);
	}
}
