package com.product.servlet;

import com.product.dao.PhoneDAO;
import com.product.dao.PhoneInMemoryDAO;
import com.product.entity.Phone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/PhoneDetail")
public class PhoneDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         int id= Integer.parseInt(req.getParameter("id"));
        PhoneDAO phone=new PhoneInMemoryDAO();
        Phone phone1=phone.getPhoneById(id);
        req.setAttribute("phone", phone1);
        req.getRequestDispatcher("/").forward(req,resp);
    }
}
