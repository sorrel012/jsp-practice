package com.servlet.ex;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lifecycle")
public class LifeCycleEx extends HttpServlet {
    

    @Override
    public void init() throws ServletException {
        System.out.println("init");
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doGet");
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doPost");
    }
    
    @Override
    public void destroy() {
        System.out.println("destroy");
    }
    
    @PostConstruct
    private void initPostConstruct() {
        System.out.println("PostConstruct");
    }
    
    @PreDestroy
    private void destroyPreDestroy() {
        System.out.println("PreDestroy");
    }
    
}
