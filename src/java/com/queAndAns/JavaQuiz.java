/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.queAndAns;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author prana
 */
public class JavaQuiz extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JavaQuiz</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            String a1 = request.getParameter("JQ1");
            String a2 = request.getParameter("JQ2");
            String a3 = request.getParameter("JQ3");
            String a4 = request.getParameter("JQ4");
            String a5 = request.getParameter("JQ5");
            if(a1==null)
            {
                a1="X";
            }
            if(a2==null)
            {
                a2="X";
            }
            if(a3==null)
            {
                a3="X";
            }
            if(a4==null)
            {
                a4="X";
            }
            if(a5==null)
            {
                a5="X";
            }
            //out.println(a1+" "+a2+" "+a3+" "+a4+" "+a5+"<br>");
            ArrayList<String> jAnswer = new ArrayList<>();
            ArrayList<String> jcAnswer = new ArrayList<>();
            jAnswer.add(0, a1);
            jAnswer.add(1, a2);
            jAnswer.add(2, a3);
            jAnswer.add(3, a4);
            jAnswer.add(4, a5);

            int i = 0;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "root");
                String query = "select * from javaQuiz1";

                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                while (rs.next()) {
                    String ans = rs.getString("answer");
                    //out.println(ans+"<br>");
                    jcAnswer.add(i, ans);
                    i++;

                }
                con.close();
                request.setAttribute("youranswer", jAnswer);
                request.setAttribute("correctanswer", jcAnswer);

                RequestDispatcher rd= request.getRequestDispatcher("resultA.jsp");

                rd.forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }

            
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
