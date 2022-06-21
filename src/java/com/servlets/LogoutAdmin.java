/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author prana
 */
public class LogoutAdmin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        session.removeAttribute("adminUser");
        session.invalidate();
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setHeader("Pragma","no-cache" );
        response.sendRedirect("index.jsp");
        
        
//     response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
//     response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
//     response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
//     response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
//
//     //can check userId or something likes this.In this sample, i checked with userName.
//     String adminUser = (String) session.getAttribute("adminUser");
//     if (null == adminUser) {
//         request.setAttribute("Error", "Session has ended.  Please login.");
//         RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//         rd.forward(request, response);
//    }
        
        
        
    }

}
