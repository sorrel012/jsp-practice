package com.sorrel012.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class Sorrel extends HttpServlet{
  @Override
  protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");
    
    PrintWriter out = response.getWriter();
    
    String cnt_ = request.getParameter("cnt"); //임시변수 뒤에 _ 붙임.
    
    int cnt = 100;
    if(cnt_ != null && !cnt_.equals("")) {
      cnt = Integer.parseInt(cnt_);
    }
    
    for(int i=0; i<cnt; i++) {
      out.println((i+1) + "안녕!<br>");
    }
  }
}