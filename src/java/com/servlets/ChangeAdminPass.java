/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author prana
 */
public class ChangeAdminPass extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
            //String sql = "update adminLogin set password=? where email=?";
            PreparedStatement pt = con.prepareStatement("select * from adminLogin");
            ResultSet rs = pt.executeQuery();
            String em = "";
            String pw = "";
            //out.println("Account not found");
            while (rs.next()) {
                em = rs.getString(2);
                //out.println(em);
                if (em.equals(email)) {
                    pw = password;
                    //out.println(pw);
                    flag = true;
                    break;
                }

            }
            if (!flag) {
                out.println("Account not found");
                return;
            }
            //out.println("Account  found");
            String sql = "update adminLogin set password=? where email=?";
            //out.println("Account fghj found");
            PreparedStatement ptt = con.prepareStatement(sql);
            //out.println("Account  found");
            ptt.setString(2, email);
            ptt.setString(1, pw);
           int i= ptt.executeUpdate();
            out.println(i+" records updated");
            con.close();

            //out.println(em+" "+p);
            out.print("<h1> Thank you You are sucessfully change Password </h1>");
            response.sendRedirect("Admin_Page/thankyou.jsp");
            //con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println(e);
        }
    }
}

