/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.satya;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
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
@WebServlet(name = "LoginAuth", urlPatterns = {"/LoginAuth"})
public class LoginAuth extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        
        PrintWriter out = response.getWriter();
        
        try {
            
            String usr = request.getParameter("username");
            String pass = request.getParameter("password");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = Connector.getConnection();
            
            CallableStatement cst = con.prepareCall("{call sRecord(?)}");
            cst.setString(1, usr);
            
            ResultSet rs = cst.executeQuery();
            
            HttpSession hs;
            
            
            
          if(rs.next()){  
            
            if(usr.equals(rs.getString("uname"))&& pass.equals(rs.getString("password")) && rs.getString("type").equalsIgnoreCase("admin") ){

                hs = request.getSession();
                hs.setAttribute("role", rs.getString("type"));
                hs.setAttribute("username", usr);
                //out.println("<font color=green><h1>Welcome!!!</h1></font>"+usr);
                response.sendRedirect("adminDash.jsp");
                
                //RequestDispatcher rd = request.getRequestDispatcher("adminDash.jsp");
                //rd.forward(request, response);
                
            }else if(usr.equals(rs.getString("uname"))&& pass.equals(rs.getString("password")) && rs.getString("type").equalsIgnoreCase("employee")){
                hs = request.getSession();
                hs.setAttribute("role", rs.getString("type"));
                hs.setAttribute("username", usr);
                
                //RequestDispatcher rd = request.getRequestDispatcher("empDash.jsp");
                //rd.forward(request, response);
                response.sendRedirect("empDash.jsp");
            }else{
                out.println("<font color=red><h1>not valid user</h1></font>");
                RequestDispatcher rd = request.getRequestDispatcher("index.html");
                rd.include(request, response);
            } 
          }else{
              
                out.println("<font color=red><h1>not valid user</h1></font>");
                RequestDispatcher rd = request.getRequestDispatcher("index.html");
                rd.include(request, response);
          }
        }catch(Exception e){
            out.println("<font color=red><h1>"+e.getMessage()+"</h1></font>");
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
