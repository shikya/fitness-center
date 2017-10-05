<%-- 
    Document   : AdminPanel
    Created on : Feb 15, 2013, 5:05:44 AM
    Author     : SHRI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--
        <%
        try{
            if(session.getValue("user").equals(null))
                response.sendRedirect("AdminLogin.jsp");
        }catch(Exception e){
            response.sendRedirect("AdminLogin.jsp");
        }
        %>
--%>
<html lang="en">
<head>
    <title>Administrator Login - Fitness Club</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/cufon-yui.js"></script>
    <script src="js/Asap_400.font.js"></script>
    <script src="js/Coolvetica_400.font.js"></script>
	<script src="js/Kozuka_M_500.font.js"></script>
    <script src="js/cufon-replace.js"></script>
    <script src="js/FF-cash.js"></script>
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
    	<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
	<![endif]-->
</head>
<body>
           <%
        try{
            %>
            <%!Connection con;%>
            <% Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fitdb","root","tiger");%>
            <%!java.sql.Statement st;%>
            <%!ResultSet rs;%>
            <%
            st=con.createStatement();
            }catch(Exception e){
            out.print("Error Ocoured as "+e.toString()+"<hr><b>Strack Trace</b><br>");
            //e.printStackTrace(out);
            e.printStackTrace();
            out.print("<br>Cause as<br>"+e.getCause()+"<hr><b>Message Return as</b><br>"+e.getMessage());

        }
        %>
<div class="main">
	<div class="bg-img"></div>
<!--==============================header=================================-->
    <header>
        <h1><a href="index.jsp">Fitness <strong>Club</strong></a></h1>
        <nav>
        	<div class="social-icons">
            	<a href="#" class="con-2"></a>
            	<a href="#" class="con-1"></a>
            </div>
            <ul class="menu">
                <li><a href="index.jsp">About</a></li>
                <li><a href="trainers.html">Trainers</a></li>
                <li><a href="Events.jsp">Events</a></li>
                <li><a href="Products.jsp">Products</a></li>
                <li><a href="gallery.html">Gallery</a></li>
                <li><a href="contacts.html">Contacts</a></li>
            </ul>
        </nav>
    </header>   
<!--==============================content================================-->
    <section id="content">
        <div class="container_12">
          <div class="grid_12">
          	<div class="box-shadow">
            	<div class="wrap block-2">
                    <div class="acol-1">
                      <h2 class="p3" align="center"><span class="color-1">Welcome</span> <% out.print(session.getValue("user")); %> </h2>
                      <p align="center">&nbsp;</p><hr>
                      <p align="center">&nbsp;</p>
                      <p align="center"><br><strong>
                      Trainer Information</strong></p>
                      <p align="center">&nbsp;</p>
                      <div class="login">
                        <table width="880" id="form_table" align="center" height="80" border="0">
            <tr valign="middle">          
                <th width="7%">TrainerID</th>
                <th width="25%">Name</th>
                <th width="13%">DOB</th>
                <th width="15%">Ph.No.</th>
                <th width="12%">Joined Date</th>
                <th width="10%">Experience</th>
                <th width="15%">View Details</th>
           </tr>
            <%
            rs=st.executeQuery("SELECT * FROM fitdb.person,fitdb.trainer where fitdb.person.pid=fitdb.trainer.fk_pid;");
            while(rs.next())
            {
            %>
           <tr align="center" valign="middle">
               <td align="center"><%=rs.getString("tid")%> </td>
               <td><%=rs.getString("fname")%> <%=rs.getString("lname")%></td>
                <td><%=rs.getDate("dob")%></td>
                <td><%=rs.getString("phno")%></td>
                <td><%=rs.getDate("jd")%></td>
                <td><%=rs.getInt("wexp")%></td>
                <td><form action="TrainersProfile.jsp" method="get"><input type="hidden" name="tid" value="<%=rs.getString("tid")%>"><input id="signin_submit" value="View" tabindex="6" type="submit"></form></td>
           </tr> 
           <tr><td> </td></tr>
           <%
            }
           %>

                 </table>
                 <br>
<hr>
                      <p align="center">&nbsp;</p>

                      <p align="center">&nbsp;</p>
                      <center>
                          <a href="AdminLogout">Logout</a>
                      </center>














<div class="pagination">
<span class="disable"></span></div>                       
                    </div>
            	</div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
    </section> 
<!--==============================footer=================================-->
    <footer>
  <p>© 2012 Fitness Club</p>
</footer>	
</div>    
<script>
	Cufon.now();
</script>
</body>
</html>