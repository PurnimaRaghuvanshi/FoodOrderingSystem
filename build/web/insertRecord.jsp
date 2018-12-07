<%-- 
    Document   : insertRecord
    Created on : 2 Nov, 2018, 2:22:55 PM
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
        <title>Insert Record Here!</title>
    </head>
    <body class="bg-dark">
       <%-- <div class="container-fluid">
            
            
            <form action="InsertRecord" method="post">
                <center><h2><b>Insert Data Here!!</b></h2></center><hr>
                <h2><b>1st Food:&emsp;&emsp;</b><input style="background-color: #666666; border: 2px solid #0361A8; border-radius: 5px;" type="text" name="fone" placeholder="Enter food name" required>
                    <input style="background-color: #666666; border: 2px solid #0361A8; border-radius: 5px;" type="text" name="pone" placeholder="Enter price here!" required></h2><br>
                    
                <h2><b>2nd Food:&emsp;&emsp;</b><input style="background-color: #666666; border: 2px solid #0361A8; border-radius: 5px;" type="text" name="ftwo" placeholder="Enter food name">
                    <input style="background-color: #666666; border: 2px solid #0361A8; border-radius: 5px;" type="text" name="ptwo" placeholder="Enter price here!"></h2><br>
                    
                <h2><b>3rd Food:&emsp;&emsp;</b><input style="background-color: #666666; border: 2px solid #0361A8; border-radius: 5px;" type="text" name="fthree" placeholder="Enter food name">
                    <input style="background-color: #666666; border: 2px solid #0361A8; border-radius: 5px;" type="text" name="pthree" placeholder="Enter price here!"></h2><br>
                    
                    <h2><b>Customer name:</b><input style="background-color: #666666; border: 2px solid #0361A8; border-radius: 5px;" type="text" name="cname" placeholder="Customer name" required></h2>
                    <h2><b>Mobile no.:&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input style="background-color: #666666; border: 2px solid #0361A8; border-radius: 5px;" type="text" name="mob" placeholder="Customer mob no" required></h2>
                    
                    <button type="submit" style="background-color: #0361A8; border: 2px solid #0361A8; border-radius: 5px; "><h2><b>Submit</b></h2></button> <br><br>
            </form>
</div>--%>
        
        
       <%--<div class="container-fluid">
            <div class="row">
                <div class="col col-md-5">
                    <form action="InsertRecord" method="post">
                        <div class="input-group input-group-sm mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-sm"><i class="fa fa-user-circle"></i></span>
                            </div>
                            <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                        </div>
                        
                        <div class="input-group input-group-sm mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-sm">Small</span>
                            </div>
                            <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                        </div>
                    </form>
                </div>
            </div>
        </div>--%>
       
       <%
           try {
                   HttpSession hs = request.getSession(false);
                   if(hs!=null){
                       %>
                       
                       <div class="container card " style="margin: 50px auto auto; background: #58FAF4;">
            <div class="card-header ">
                <h3 class="text-center" style="font-family: cursive"><strong>Welcome <%= hs.getAttribute("username")%></strong></h3>
            </div>
            <div class="card-body" style="background: #ffffff; margin-right: 100px; margin-left: 100px;">
                <form action="InsertRecord" method="post">
                <div class="row justify-content-center">
                    <%--<div class="col-12 col-md-6 bg-primary"> 
                        <h1><b>Hi</b></h1>
                    </div>
                    <div class="col-12 col-md-6 bg-secondary"> 
                        <h1><b>H</b></h1>
                    </div>--%>
                    <div class="col-sm-12 col-md-5 ">
                    <div class="input-group input-group-sm mb-3" >
                            
                            <div class="input-group-prepend">
                                
                                <h4 style="font-family: cursive; margin-right: 10px;">1st Food: </h4>&nbsp;<span class="input-group-text" id="inputGroup-sizing-sm"><i class="fa fa-utensils"></i></span>
                            </div>
                            <input type="text" class="form-control  " aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="fone" placeholder="Enter food name" required>&emsp;
                            
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4 ">
                        <div class="input-group input-group-sm mb-3">
                            <input type="text" class="form-control " aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" placeholder="Enter price here" name="pone" required>
                        </div>
                    </div>
                    
                </div>
                
                <div class="row justify-content-center">
                    
                    <div class="col-sm-12 col-md-5 ">
                    <div class="input-group input-group-sm mb-3" >
                            <div class="input-group-prepend">
                                <h4 style="font-family: cursive">2nd Food: </h4>&nbsp;<span class="input-group-text" id="inputGroup-sizing-sm"><i class="fa fa-utensils"></i></span>
                            </div>
                            <input type="text" class="form-control  " aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="ftwo" placeholder="Enter food name">&emsp;
                            
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4 ">
                        <div class="input-group input-group-sm mb-3">
                            <input type="text" class="form-control " aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" placeholder="Enter price here" name="ptwo">
                        </div>
                    </div>
                    
                </div>
                    
                <div class="row justify-content-center">
                    
                    <div class="col-sm-12 col-md-5 ">
                    <div class="input-group input-group-sm mb-3" >
                            <div class="input-group-prepend">
                                <h4 style="font-family: cursive">3rd Food: </h4> &nbsp;<span class="input-group-text" id="inputGroup-sizing-sm"><i class="fa fa-utensils"></i></span>
                            </div>
                            <input type="text" class="form-control  " aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="fthree" placeholder="Enter food name">&emsp;
                            
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4 ">
                        <div class="input-group input-group-sm mb-3">
                            <input type="text" class="form-control " aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" placeholder="Enter price here" name="pthree">
                        </div>
                    </div>
                    
                </div>
                
                <div class="row justify-content-center">
                    
                    <div class="col-sm-12 col-md-7 ">
                    <div class="input-group input-group-sm mb-3" >
                            <div class="input-group-prepend">
                                <h4 style="font-family: cursive; margin-right: 30px;"> Customer name: </h4>&nbsp;<span class="input-group-text" id="inputGroup-sizing-sm"><i class="fa fa-user-circle"></i></span>
                            </div>
                            <input type="text" class="form-control  " aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="cname" placeholder="Enter Customer name" required>&emsp;
                            
                        </div>
                    </div>
                    
                    
                </div>
                    
                <div class="row justify-content-center">
                    
                    <div class="col-sm-12 col-md-7 ">
                    <div class="input-group input-group-sm mb-3" >
                            <div class="input-group-prepend">
                                <h4 style="font-family: cursive"> Customer Mob no.: </h4>&nbsp;<span class="input-group-text" id="inputGroup-sizing-sm"><i class="fa fa-phone"></i></span>
                            </div>
                        <input type="text" class="form-control  " aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="mob" placeholder="Enter Customer mobile" maxlength="10" minlength="10" required>&emsp;
                            
                        </div>
                    </div>
                    
                    
                </div>
                
                <div class="row justify-content-center">
                    
                    <div class="col-sm-12 col-md-2 ">
                    <div class="input-group input-group-sm mb-3" >
                            
                        <input type="Submit" class="form-control  btn btn-primary" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" value="Submit">&emsp;
                            
                        </div>
                    </div>
                    
                    
                </div>
                    
                
 
                    
                </div>
                
            </form>
       
          <div class="card-footer ">
                     
                        <%
                            if(hs.getAttribute("role").toString().equals("admin")){
                                %>
                                <h3 class="text-center" style="font-family: cursive">To go to Dash board Click<a href="adminDash.jsp">Here!</a></h3>
                                <%
                            }else{
                                %>
                                <h3 class="text-center" style="font-family: cursive">To go to Dash board Click<a href="empDash.jsp">Here!</a></h3>
                                <%
                            }
                        %>
                        
                    
            </div>
        </div>
                       
                       <%
                   }else{
                        out.println("<font color=red><h1>First Login to insert Data</h1></font>");
                        RequestDispatcher rd = request.getRequestDispatcher("index.html");
                        rd.include(request, response);
                   }
               } catch (Exception e) {
               }
       %>
        
       
        
        

        
    </body>
</html>
