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
public class PythonQuiz extends HttpServlet {

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
            out.println("<title>Servlet PythonQuiz</title>");            
            out.println("</head>");
            out.println("<body>");
            String a1 = request.getParameter("PQ1");
            String a2 = request.getParameter("PQ2");
            String a3 = request.getParameter("PQ3");
            String a4 = request.getParameter("PQ4");
            String a5 = request.getParameter("PQ5");
            String a6 = request.getParameter("PQ6");
            String a7 = request.getParameter("PQ7");
            String a8 = request.getParameter("PQ8");
            String a9 = request.getParameter("PQ9");
            String a10 = request.getParameter("PQ10");
            String a11 = request.getParameter("PQ11");
            String a12 = request.getParameter("PQ12");
            String a13 = request.getParameter("PQ13");
            String a14 = request.getParameter("PQ14");
            String a15 = request.getParameter("PQ15");
            String a16 = request.getParameter("PQ16");
            String a17 = request.getParameter("PQ17");
            String a18 = request.getParameter("PQ18");
            String a19 = request.getParameter("PQ19");
            String a20 = request.getParameter("PQ20");
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
            if(a6==null)
            {
                a6="X";
            }
            if(a7==null)
            {
                a7="X";
            }
            if(a8==null)
            {
                a8="X";
            }
            if(a9==null)
            {
                a9="X";
            }
            if(a10==null)
            {
                a10="X";
            }
            if(a11==null)
            {
                a11="X";
            }
            if(a12==null)
            {
                a12="X";
            }
            if(a13==null)
            {
                a13="X";
            }
            if(a14==null)
            {
                a14="X";
            }
            if(a15==null)
            {
                a15="X";
            }
            if(a16==null)
            {
                a16="X";
            }
            if(a17==null)
            {
                a17="X";
            }
            if(a18==null)
            {
                a18="X";
            }
            if(a19==null)
            { 
                a19="X";
            }
            if(a20==null)
            {
                a20="X";
            }
            out.println(a1+" "+a2+" "+a3+" "+a4+" "+a5+"<br>");
            out.println(a6+" "+a7+" "+a8+" "+a9+" "+a10+"<br>");
            out.println(a11+" "+a12+" "+a13+" "+a14+" "+a15+"<br>");
            out.println(a16+" "+a17+" "+a18+" "+a19+" "+a20+"<br>");
            ArrayList<String> cAnswer = new ArrayList<>();
            ArrayList<String> ccAnswer = new ArrayList<>();
            cAnswer.add(0, a1);
            cAnswer.add(1, a2);
            cAnswer.add(2, a3);
            cAnswer.add(3, a4);
            cAnswer.add(4, a5);
            cAnswer.add(5, a6);
            cAnswer.add(6, a7);
            cAnswer.add(7, a8);
            cAnswer.add(8, a9);
            cAnswer.add(9, a10);
            cAnswer.add(10, a11);
            cAnswer.add(11, a12);
            cAnswer.add(12, a13);
            cAnswer.add(13, a14);
            cAnswer.add(14, a15);
            cAnswer.add(15, a16);
            cAnswer.add(16, a17);
            cAnswer.add(17, a18);
            cAnswer.add(18, a19);
            cAnswer.add(19, a20);
            

            int i = 0;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "root");
                String query = "select * from pythonquiz1";

                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                while (rs.next()) {
                    String ans = rs.getString("answer");
                    //out.println(ans+"<br>");
                    ccAnswer.add(i, ans);
                    i++;

                }
                con.close();
                request.setAttribute("pythonanswer", cAnswer);
                request.setAttribute("pythoncanswer", ccAnswer);

                RequestDispatcher rd= request.getRequestDispatcher("resultP.jsp");

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
