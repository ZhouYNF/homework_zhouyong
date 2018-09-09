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

@WebServlet("/PhoneSearch")
public class PhoneSearch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        String condition = req.getParameter("condition");
        System.out.println(condition);
        PhoneDAO phoneDAO=new PhoneInMemoryDAO();
        List<Phone> phones = phoneDAO.getPhonesByName(condition);

        req.setAttribute("phones", phones);

        req.getSession().setAttribute("msg", "当前查询条件为:[" + condition + "]");

        req.getRequestDispatcher("/Phone_list.jsp").forward(req,resp);
    }
}
