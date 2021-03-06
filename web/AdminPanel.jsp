<%-- 
    Document   : AdminPanel
    Created on : Feb 15, 2013, 5:05:44 AM
    Author     : SHRI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <%
        try{
            if(session.getValue("user").equals(null))
                response.sendRedirect("AdminLogin.jsp");
        }catch(Exception e){
            response.sendRedirect("AdminLogin.jsp");
        }
        %>
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
                      <div class="login">
                        <table width="880" border="3" id="form_table" align="center" height="89">
                          
                <th width="25%">
                       <ul class="list-2">
                        <li><a href="Signup.jsp">Add Member</a></li>
                        <li><a href="#">Add Trainer&nbsp;&nbsp;</a></li>
                       </ul></th>
                <th width="25%">
                      <ul class="list-2">
                        <li><a href="Admin_add_Event.jsp">Add Event&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                        <li><a href="Admin_add_prdct.jsp">Add Products</a>                      <br>
                 </li>
                    </ul></th>
               <th width="25%">
                        <ul class="list-2">
                        <li><a href="viewmbrs.jsp">View Members</a></li>
                        <li><a href="viewtrainers.jsp">View Trainers&nbsp;</a>&nbsp;<br>
                 </li>
                    </ul></th>
                 <th width="25%" align="center"><ul class="list-2">
                        <li><a href="#">View Events&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                        <li><a href="#">View Productss</a></li>
                      </ul></th>
                 </table>
                      </div>
                      <p align="center">&nbsp;     </p>
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