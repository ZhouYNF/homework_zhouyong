package com.product.servlet;

import com.product.dao.PhoneDAO;
import com.product.dao.PhoneInMemoryDAO;
import com.product.entity.Phone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/PhoneUpdate")
public class PhoneUpdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");

        PhoneDAO phoneDAO = new PhoneInMemoryDAO();
        Phone phone = phoneDAO.getPhoneById(Integer.parseInt(req.getParameter("id")));

        String requ = "{\"id\":" + phone.getId() + ",\"name\":\"" + phone.getName() + "\",\"price\":\"" + phone.getPrice() + "\",\"number\":\"" + phone.getNumber() + "\",\"manufacturer\":\"" + phone.getManufacturer() + "\",\"picture\":\""+phone.getPicture()+"\"}";

        resp.getWriter().print(requ);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        float price = Float.parseFloat(req.getParameter("price"));
        int number = Integer.parseInt(req.getParameter("number"));
        String manufacturer = req.getParameter("manufacturer");
        String picture=req.getParameter("picture");

        Phone phone=new Phone(id,name,price,number,manufacturer,picture);

        PhoneDAO phoneDAO=new PhoneInMemoryDAO();
        phoneDAO.update(phone);

        HttpSession session = req.getSession();
        session.setAttribute("msg", "更新成功！");

        resp.sendRedirect("/phones");
    }
}
