package com.jsp.pattern;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        actionDo(req, resp);
    }

    private void actionDo(HttpServletRequest req, HttpServletResponse resp) {
        
        
        String path = req.getRequestURI().substring(9);
        
        if(path.equals("insert.do")) {
            //insert();
        } else if(path.equals("update.do")) {
            //update();
        } else if(path.equals("select.do")) {
            //select();
        } else if(path.equals("delete.do")) {
            //delete();
        }
        
    }
    
}
