package com.product.servlet;

import com.product.dao.PhoneDAO;
import com.product.dao.PhoneInMemoryDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/PhoneDel")
public class PhoneDel extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("id"));
        PhoneDAO phoneDAO=new PhoneInMemoryDAO();
         if(phoneDAO.delete(id)){
             System.out.println("删除成功");
         }
         resp.sendRedirect("/phones");

    }
}
