<%-- 
    Document   : showRecord
    Created on : 2 Nov, 2018, 2:23:08 PM
    Author     : Satya Prakash
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.example.satya.Connector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/fontawesome-free-5.5.0-web/css/all.css">
        <script src="js/bootstrap.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Records</title>
    </head>
    <body class="bg-dark">
        <%
            try{
            
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection con = Connector.getConnection();
                Statement st = con.createStatement();
            
                ResultSet rs = st.executeQuery("select * from fordering");
            
                 %>
                 <div class="container card" style="margin: 40px auto auto; background: #848484;">
                    <div class="card-header ">
                        <h3 style="font-family: cursive;"><strong>All Sell Record till now</strong></h3>
                    </div>
                     <div class="card-deck " style="overflow: scroll; height: 450px;">
                         <table  width="100%" >
                             <tr bgcolor=#58ACFA align="center" >
                                <th>Id</th>
                                <th>1st food</th>
                                <th>1st price</th>
                                <th>2nd food</th>
                                <th>2nd price</th>
                                <th>3rd food</th>
                                <th>3rd price</th>
                                <th>Total Price</th>
                                <th>Customer name</th>
                                <th>Mobile no.</th>
                                <th>Date</th>
                                <th>Time</th>
                            </tr>
                        
                   
                    
                 <%
               
    
                
                int i = 0;
            
                while(rs.next()){
                    if(i%2 == 0){
                        out.println("<tr align=center bgcolor=#2ECCFA>"
                                + "<td>"+rs.getInt("id")+"</td>"
                                + "<td>"+rs.getString("fone")+"</td>"
                                + "<td>"+rs.getInt("pone")+"</td>"
                                + "<td>"+rs.getString("ftwo")+"</td>"
                                + "<td>"+rs.getInt("ptwo")+"</td>"
                                + "<td>"+rs.getString("fthree")+"</td>"
                                + "<td>"+rs.getInt("pthree")+"</td>"
                                + "<td>"+rs.getInt("total")+"</td>"
                                + "<td>"+rs.getString("cname")+"</td>"
                                + "<td>"+rs.getString("mob")+"</td>"
                                + "<td>"+rs.getString("dt")+"</td>"
                                + "<td>"+rs.getString("tm")+"</td></tr>");
                    }else{
                        out.println("<tr align=center bgcolor=#ffffff>"
                                + "<td>"+rs.getInt("id")+"</td>"
                                + "<td>"+rs.getString("fone")+"</td>"
                                + "<td>"+rs.getInt("pone")+"</td>"
                                + "<td>"+rs.getString("ftwo")+"</td>"
                                + "<td>"+rs.getInt("ptwo")+"</td>"
                                + "<td>"+rs.getString("fthree")+"</td>"
                                + "<td>"+rs.getInt("pthree")+"</td>"
                                + "<td>"+rs.getInt("total")+"</td>"
                                + "<td>"+rs.getString("cname")+"</td>"
                                + "<td>"+rs.getString("mob")+"</td>"
                                + "<td>"+rs.getString("dt")+"</td>"
                                + "<td>"+rs.getString("tm")+"</td></tr>");
                    }
                    i++;
                
                } %>
                    </table>
                    </div>
                    <div class="card-footer ">
                     
                        <%
                            HttpSession hs = request.getSession(false);
                            if(hs.getAttribute("role").toString().equals("admin")){
                                %>
                                <h3 class="text-center" style="font-family: cursive">To go to Dash board Click<a href="adminDash.jsp">Here!</a></h3>
                                <%
                            }
                        %>
                        
                    
            </div>
                 </div>
                </body>
                </html>
                 <%
                
            }catch(Exception e){
                out.println("<h1>"+e.getMessage()+"</h1>");
            }
        %>
        
    </body>
</html>
