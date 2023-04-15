package com.sorrel012.web;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hi")
public class Sorrel extends HttpServlet {
    
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        
        PrintWriter out = response.getWriter();
        
        for(int i = 0; i < 100; i++) {
            out.println((i+1) + ": Hello Servlet!!");
        }
    }
}