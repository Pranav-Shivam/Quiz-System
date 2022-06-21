/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlets;

import com.dao.UserDao;
import com.entities.Message;
import com.entities.User;
import com.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AddAdmin extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        /* TODO output your page here. You may use following sample code. */

        String email = request.getParameter("user_email");
        String password = request.getParameter("user_password");
        boolean flag = false;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "root");
            String sql = "insert into adminLogin(email,password) values(?,?)";
            PreparedStatement pt = con.prepareStatement(sql);

            pt.setString(1, email);
            pt.setString(2, password);
            pt.executeUpdate();
            flag = true;
            //out.println(em+" "+p);
            out.print("<h1> Thank you You are sucessfully registered </h1>");
            response.sendRedirect("Admin_Page/thankyou.jsp");
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
