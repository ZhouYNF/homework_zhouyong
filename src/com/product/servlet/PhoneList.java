package com.product.servlet;

import com.google.gson.Gson;
import com.product.dao.PhoneDAO;
import com.product.dao.PhoneInMemoryDAO;
import com.product.entity.Phone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
@WebServlet("/phones")
public class PhoneList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PhoneDAO phoneDAO =new PhoneInMemoryDAO();
        List<Phone> phones = phoneDAO.listAll();
        req.setAttribute("phones", phones);
        req.getRequestDispatcher("/Phone_list.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
