<%-- 
    Document   : Events
    Created on : Feb 15, 2013, 3:03:56 AM
    Author     : SHRI
--%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Time"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Event - Fitness Club</title>
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
<div class="main">
	<div class="bg-img"></div>
<!--==============================header=================================-->
    <header>
        <h1><a href="index.html">Fitness <strong>Club.</strong></a></h1>
        <nav>
        	<div class="social-icons">
            	<a href="#" class="con-2"></a>
            	<a href="#" class="con-1"></a>
            </div>
            <ul class="menu">
                <li><a href="index.html">About</a></li>
                <li><a href="trainers.html">Trainers</a></li>
                <li class="current"><a href="event.html">Event</a></li>
                <li><a href="nutrition.html">Nutrition</a></li>
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
                    <div class="col-1">
                        <h2 class="p3"><span class="color-1">Our</span> Event</h2><br>

       <%
        try{
            Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fitdb","root","tiger");
            java.sql.Statement st=con.createStatement();

            st.execute("SELECT * FROM fitdb.event;");
            ResultSet rs;
            rs=st.getResultSet();
            int i;
            int bid;
            Time t;
        %>
 
     <% while(rs.next()){ 
         %>
                    <div class="extra-wrap">
                                <p class="p2"><strong><% out.print(rs.getString("name")); %></strong></p>
                                <p>On <% out.print(rs.getString("edate")); %></p>
                                <p><% out.print(rs.getString("desc")); %></p>
                                <p>&nbsp;</p>
                                <p>
                                  <input id="add_cart" value="I am Going!" tabindex="7" type="submit">
                                </p>
                      </div>
     <hr>
       <%}
            }
        catch(Exception e){
            out.print("Error Ocoured as "+e.toString()+"<hr><b>Strack Trace</b><br>");
            //e.printStackTrace(out);
            e.printStackTrace();
            out.print("<br>Cause as<br>"+e.getCause()+"<hr><b>Message Return as</b><br>"+e.getMessage());

        }
        %>
 
<br><br><br>
<div class="pagination">
  <span class="disable"></span><span class="current"><strong>Page</strong> 1</span><a href="Adminlogin.html">  2  >></a>
</div>


                       
                    </div>
                    <div class="col-2">
                        <h2 class="p3"><span class="color-1">Welcome, </span>FirstName</h2>
                        <p class="p2"><strong>FirstName MiddleName LastName</strong></p>
                        <table>
                            <tr>
                                <td>Ph No</td>
                                <td>XXXXXXXXXX</td>
                            </tr>
                            <tr>
                                <td>E Ph No</td>
                                <td>XXXXXXXXXX</td>
                            </tr>
                            <tr>
                                <td>Date of Birth</td>
                                <td>YYYY-MM-DD</td>
                            </tr>
                            <tr>
                                <td>Weight</td>
                                <td>XXX</td>
                            </tr>
                            <tr>
                                <td>Height</td>
                                <td>XXX</td>
                            </tr>
                        </table>
                        <a href="#" class="button top-5">Edit Information</a>
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
