<%-- 
    Document   : adminDash
    Created on : 3 Nov, 2018, 6:35:04 PM
    Author     : Satya Prakash
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.example.satya.Connector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/fontawesome-free-5.5.0-web/css/all.css">
        <script src="js/bootstrap.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin DashBoard</title>
    </head>
    <body class="bg-dark">
        <%
            try{
                
                HttpSession hs = request.getSession(false);
                String usr = hs.getAttribute("username").toString();
                
                if(hs.getAttribute("role").toString().equals("admin")){
                    //out.println("<center><font color=green><h1>Welcome "+usr+"</h1></font><br><hr></center>");
                    %>
                        <%--<font color="#ffffff">Show record <a href="showRecord.jsp">Here!</a><br><br></font>
                        <font color="#ffffff">Insert record <a href="insertRecord.jsp">Here!</a></font>--%>
                        
                        
                        <div class="container card" style="margin: 50px auto auto; background: #58FAF4">
                            <div class="card-header">
                                
                            <div class="row">
                                <div class="col-sm-11">
                                    
                                    <h3 style="font-family: cursive"><strong>Welcome <%= hs.getAttribute("username")%></strong></h3>
                                
                                </div>
                               <%
                                   if(request.getParameter("logout")!=null){
                                       //RequestDispatcher rd  = request.getRequestDispatcher("index.html");
                                       //rd.include(request, response);
                                       hs.invalidate();
                                       response.sendRedirect("index.html");
                                   }
                               %>     
                                <div class="col-sm-1">
                                    <form method="post">
                                        <button type="submit" name="logout" class="btn btn-danger">Logout</button>
                                    </form>
                                </div>
                             
                            </div>        
                            </div>
                        
                                    <div class="row" >
                            <div class="col-sm-12 col-md-5" style="height: 350px">
                                <div class="card" style="height: 270px; margin: 20px auto auto">
                                    <div class="card-header">
                                        <h3 style="font-family: cursive" class="text-center"><strong>Utility Links</strong></h3>
                                    </div>
                                    <div class="card-body">
                                        <a href="showRecord.jsp" class="btn btn-primary  btn-block">Show All Records</a>
                                        <a href="insertRecord.jsp" class="btn btn-primary  btn-block">Insert Record</a>
                                        <a href="empControl.jsp" class="btn btn-primary  btn-block">Manage Employee Credentials</a><br>
                                        
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-7" style="height: 350px">
                                <div class="card" style="height: 270px; margin: 20px auto auto">
                                    <div class="card-header">
                                        <h3 style="font-family: cursive" class="text-center"><strong>Register a new Employee!</strong></h3>
                                    </div>
                                    <div class="card-body">
                                        
                                        <%
                                            try {
            
            
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = Connector.getConnection();
            if(request.getParameter("register")!=null){
                String emp = request.getParameter("eid");
                String pass = request.getParameter("password");
                PreparedStatement pst = con.prepareStatement("insert into users (uname,password,type) values(?,?,?)");
                pst.setString(1, emp);
                pst.setString(2, pass);
                pst.setString(3, "employee");
                int i = pst.executeUpdate();
            
            
                if(i>0){  
            
                    %>
                        <font color=green><h1>Employee Registered!</h1></font>
                    <%
                    response.sendRedirect("adminDash.jsp");
                
                    //RequestDispatcher rd = request.getRequestDispatcher("adminDash.jsp");
                    //rd.forward(request, response);    
             
                }else{
              
                    out.println("<font color=red><h1>Employee didn't registered</h1></font>");
                    RequestDispatcher rd = request.getRequestDispatcher("adminDash.jsp");
                    rd.include(request, response);
          }
            }
            
        }catch(Exception e){
            out.println("<font color=red></h1>"+e.getMessage()+"</h1></font>");
        }
                                        %>
                                        <form  method="post">
                                            <div class="row justify-content-center">
                                            <div class="col-sm-12 col-md-8">
                                            <div class="input-group input-group-sm mb-3" >
                            
                                                <div class="input-group-prepend">
                                
                                                    <h4 style="font-family: cursive">Employee ID: </h4>&nbsp;<span class="input-group-text" id="inputGroup-sizing-sm"><i class="fa fa-user-circle"></i></span>
                                                </div>
                                                <input type="text" class="form-control  " aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="eid" placeholder="Enter Employee id" required>&emsp;
                                            </div>
                                            </div>
                                            </div>
                                            
                                            
                                            <div class="row justify-content-center">
                                            <div class="col-sm-12 col-md-8">
                                            <div class="input-group input-group-sm mb-3" >
                            
                                                <div class="input-group-prepend">
                                
                                                    <h4 style="font-family: cursive;margin-right: 37px">Password: </h4>&nbsp;<span class="input-group-text" id="inputGroup-sizing-sm"><i class="fa fa-key"></i></span>
                                                </div>
                                                <input type="text" class="form-control  " aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"  name="password" placeholder="Enter password" required>&emsp;
                                            </div>
                                            </div>
                                            </div>
                                            <div class="row justify-content-end">
                                            <div class="col-sm-12 col-md-5">
                                                <button class="btn btn-primary text-center"  type="submit" name="register">Register</button>
                                            </div>
                                            </div>
                                            
                                        </form>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                                    <div class="card-footer">
                                        <h5 style="font-family: initial" class="text-center">©satya</h5>
                                    </div>
                        </div>
                    <%
                    
                }
                
                
                
            }catch(Exception e){
                out.println(e);
            }
        %>
    </body>
</html>
