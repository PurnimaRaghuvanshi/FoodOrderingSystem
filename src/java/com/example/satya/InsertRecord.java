/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.satya;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Satya Prakash
 */
@WebServlet(name = "InsertRecord", urlPatterns = {"/InsertRecord"})
public class InsertRecord extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            try {
                    DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                    Connection con = Connector.getConnection();
                    
                    HttpSession hs = request.getSession(false);
                    
                    
                    int ptwo,pthree;
                    String ftwo,fthree;
                    
                    String fone = request.getParameter("fone");
                    int pone = Integer.parseInt(request.getParameter("pone"));
                   
                    
                    if(request.getParameter("ftwo") == ""){
                       ftwo = null;
                    }else{
                        ftwo = request.getParameter("ftwo");
                    }
                    
                    if(request.getParameter("ptwo") == ""){
                        ptwo = 0;
                    }else{
                        ptwo = Integer.parseInt(request.getParameter("ptwo"));
                    }
                    
                    
                    
                    
                    
                    
                    if(request.getParameter("fthree") == ""){
                        fthree = null;
                    }else{
                        fthree = request.getParameter("fthree");
                    }
                    
                    if(request.getParameter("pthree") == ""){
                        pthree = 0;
                    }else{
                        pthree = Integer.parseInt(request.getParameter("pthree"));
                    }
                   
                    
                    int total = pone+ptwo+pthree;
                    
                    String cname = request.getParameter("cname");
                    String mob = request.getParameter("mob");
                    
                    
                    
                    
                    
                    PreparedStatement pst = con.prepareStatement("insert into fordering values(default,?,?,?,?,?,?,?,?,?,now(),now())");
                    pst.setString(1, fone);
                    pst.setInt(4,pone);
                    
                    pst.setString(2, ftwo);
                    pst.setInt(5,ptwo);
                    
                    pst.setString(3, fthree);
                    pst.setInt(6,pthree);
                    
                    pst.setInt(7,total);
                    
                    pst.setString(8, cname);
                    pst.setString(9, mob);
                    
                    int i=pst.executeUpdate();
                    
                    if(i>0){
                        out.println("<font color=green><h1>Data inserted!</h1></font>");
                        
                        
                        RequestDispatcher rd = request.getRequestDispatcher("insertRecord.jsp");
                        rd.include(request, response);
                    }else{
                        out.println("<font color=red><h1>Data didn't inserted!</h1></font>");
                        RequestDispatcher rd = request.getRequestDispatcher("insertRecord.jsp");
                        rd.include(request, response);
                    }

                    

                    
                    
                    
                } catch (Exception e) {
                    out.println(e);
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
