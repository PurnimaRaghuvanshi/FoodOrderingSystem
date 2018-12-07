package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.example.satya.Connector;
import java.sql.Statement;
import java.sql.CallableStatement;
import java.sql.Connection;

public final class adminDash_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/fontawesome-free-5.5.0-web/css/all.css\">\n");
      out.write("        <script src=\"js/bootstrap.js\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin DashBoard</title>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"bg-dark\">\n");
      out.write("        ");

            try{
                
                HttpSession hs = request.getSession(false);
                String usr = hs.getAttribute("username").toString();
                
                if(hs.getAttribute("role").toString().equals("admin")){
                    //out.println("<center><font color=green><h1>Welcome "+usr+"</h1></font><br><hr></center>");
                    
      out.write("\n");
      out.write("                        ");
      out.write("\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        <div class=\"container card\" style=\"margin: 50px auto auto; background: #58FAF4\">\n");
      out.write("                            <div class=\"card-header\">\n");
      out.write("                                \n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-sm-11\">\n");
      out.write("                                    \n");
      out.write("                                    <h3 style=\"font-family: cursive\"><strong>Welcome ");
      out.print( hs.getAttribute("username"));
      out.write("</strong></h3>\n");
      out.write("                                \n");
      out.write("                                </div>\n");
      out.write("                               ");

                                   if(request.getParameter("logout")!=null){
                                       //RequestDispatcher rd  = request.getRequestDispatcher("index.html");
                                       //rd.include(request, response);
                                       hs.invalidate();
                                       response.sendRedirect("index.html");
                                   }
                               
      out.write("     \n");
      out.write("                                <div class=\"col-sm-1\">\n");
      out.write("                                    <form method=\"post\">\n");
      out.write("                                        <button type=\"submit\" name=\"logout\" class=\"btn btn-danger\">Logout</button>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                             \n");
      out.write("                            </div>        \n");
      out.write("                            </div>\n");
      out.write("                        \n");
      out.write("                                    <div class=\"row\" >\n");
      out.write("                            <div class=\"col-sm-12 col-md-5\" style=\"height: 350px\">\n");
      out.write("                                <div class=\"card\" style=\"height: 270px; margin: 20px auto auto\">\n");
      out.write("                                    <div class=\"card-header\">\n");
      out.write("                                        <h3 style=\"font-family: cursive\" class=\"text-center\"><strong>Utility Links</strong></h3>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"card-body\">\n");
      out.write("                                        <a href=\"showRecord.jsp\" class=\"btn btn-primary  btn-block\">Show All Records</a>\n");
      out.write("                                        <a href=\"insertRecord.jsp\" class=\"btn btn-primary  btn-block\">Insert Record</a>\n");
      out.write("                                        <a href=\"empControl.jsp\" class=\"btn btn-primary  btn-block\">Manage Employee Credentials</a><br>\n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-sm-12 col-md-7\" style=\"height: 350px\">\n");
      out.write("                                <div class=\"card\" style=\"height: 270px; margin: 20px auto auto\">\n");
      out.write("                                    <div class=\"card-header\">\n");
      out.write("                                        <h3 style=\"font-family: cursive\" class=\"text-center\"><strong>Register a new Employee!</strong></h3>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"card-body\">\n");
      out.write("                                        \n");
      out.write("                                        ");

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
            
                    
      out.write("\n");
      out.write("                        <font color=green><h1>Employee Registered!</h1></font>\n");
      out.write("                    ");

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
                                        
      out.write("\n");
      out.write("                                        <form  method=\"post\">\n");
      out.write("                                            <div class=\"row justify-content-center\">\n");
      out.write("                                            <div class=\"col-sm-12 col-md-8\">\n");
      out.write("                                            <div class=\"input-group input-group-sm mb-3\" >\n");
      out.write("                            \n");
      out.write("                                                <div class=\"input-group-prepend\">\n");
      out.write("                                \n");
      out.write("                                                    <h4 style=\"font-family: cursive\">Employee ID: </h4>&nbsp;<span class=\"input-group-text\" id=\"inputGroup-sizing-sm\"><i class=\"fa fa-user-circle\"></i></span>\n");
      out.write("                                                </div>\n");
      out.write("                                                <input type=\"text\" class=\"form-control  \" aria-label=\"Sizing example input\" aria-describedby=\"inputGroup-sizing-sm\" name=\"eid\" placeholder=\"Enter Employee id\" required>&emsp;\n");
      out.write("                                            </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            \n");
      out.write("                                            \n");
      out.write("                                            <div class=\"row justify-content-center\">\n");
      out.write("                                            <div class=\"col-sm-12 col-md-8\">\n");
      out.write("                                            <div class=\"input-group input-group-sm mb-3\" >\n");
      out.write("                            \n");
      out.write("                                                <div class=\"input-group-prepend\">\n");
      out.write("                                \n");
      out.write("                                                    <h4 style=\"font-family: cursive;margin-right: 37px\">Password: </h4>&nbsp;<span class=\"input-group-text\" id=\"inputGroup-sizing-sm\"><i class=\"fa fa-key\"></i></span>\n");
      out.write("                                                </div>\n");
      out.write("                                                <input type=\"text\" class=\"form-control  \" aria-label=\"Sizing example input\" aria-describedby=\"inputGroup-sizing-sm\"  name=\"password\" placeholder=\"Enter password\" required>&emsp;\n");
      out.write("                                            </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"row justify-content-end\">\n");
      out.write("                                            <div class=\"col-sm-12 col-md-5\">\n");
      out.write("                                                <button class=\"btn btn-primary text-center\"  type=\"submit\" name=\"register\">Register</button>\n");
      out.write("                                            </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            \n");
      out.write("                                        </form>\n");
      out.write("                                        \n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                                    <div class=\"card-footer\">\n");
      out.write("                                        <h5 style=\"font-family: initial\" class=\"text-center\">©satya</h5>\n");
      out.write("                                    </div>\n");
      out.write("                        </div>\n");
      out.write("                    ");

                    
                }
                
                
                
            }catch(Exception e){
                out.println(e);
            }
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
