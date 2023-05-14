package com.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/formpost")
public class FormPost extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       resp.setContentType("text/html; charset=EUC-KR");
       req.setCharacterEncoding("UTF-8");
       
       String name = req.getParameter("name");
       String id = req.getParameter("id");
       String pw = req.getParameter("pw");
       
       String[] hobbies = req.getParameterValues("hobby");
       String subject = req.getParameter("subject");
       String protocol = req.getParameter("protocol");
       
       PrintWriter writer = resp.getWriter();
       
       writer.println("<html><head></head><body>");
       writer.println("이름 : " + name + "<br>");
       writer.println("아이디 : " + id + "<br>");
       writer.println("비밀번호 :" + pw + "<br>");
       writer.println("취미 : " + Arrays.toString(hobbies) + "<br>");
       writer.println("좋아하는 과목 : " + subject + "<br>");
       writer.println("프로토콜 : " + protocol + "<br>");
       writer.println("</body><html>");
       
       
        
    }
    
}
