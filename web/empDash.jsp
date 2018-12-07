<%-- 
    Document   : empDash
    Created on : 6 Nov, 2018, 12:46:35 PM
    Author     : Satya Prakash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/fontawesome-free-5.5.0-web/css/all.css">
        <script src="js/bootstrap.js"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Page</title>
    </head>
    <body class="bg-dark">
        <%
            try {
                    HttpSession hs = request.getSession(false);
                    if(hs!=null){
                        if(hs.getAttribute("role").toString().equals("employee")){
                            %>
                                <div class="card" style="width: auto; max-width: 500px; height: auto;max-height: 500px; background: #58FAF4; margin: 50px auto auto">
                                    <div class="card-header">
                                         <div class="row">
                                <div class="col-sm-9">
                                    
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
                                <div class="col-sm-3">
                                    <form method="post">
                                        <button type="submit" name="logout" class="btn btn-danger">Logout</button>
                                    </form>
                                </div>
                             
                            </div>
                                    </div>
                                    
                                    <div class="card-body" style="background: #ffffff;">
                                       <a href="insertRecord.jsp" class="btn btn-primary  btn-block">Insert Record</a>
                                    </div>
                                    
                                    <div class="card-footer">
                                        <h5 style="font-family: initial" class="text-center">©satya</h5>
                                    </div>
                                </div>
                            <%
                        }
                    }
                } catch (Exception e) {
                }

        %>
        
    </body>
</html>
