<%-- 
    Document   : AdminLogin
    Created on : Feb 15, 2013, 4:56:44 AM
    Author     : SHRI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        try{
            if(session.getValue("user").equals("admin"))
                response.sendRedirect("AdminPanel.jsp");
        }catch(Exception e){
            //response.sendRedirect("HomeScreen.jsp");
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
        <h1><a href="index.html">Fitness <strong>Club.</strong></a></h1>
        <nav>
        	<div class="social-icons">
            	<a href="#" class="con-2"></a>
            	<a href="#" class="con-1"></a>
            </div>
            <ul class="menu">
                <li><a href="index.html">About</a></li>
                <li><a href="trainers.html">Trainers</a></li>
                <li><a href="event.html">Event</a></li>
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
                    <div class="acol-1">
                      <h2 class="p3" align="center"><span class="color-1">Administrator</span> Login&nbsp;&nbsp;     </h2>
                      <center>
                        
                        <table width="893px" height="300" cellpadding="0" cellspacing="0" border="0" style=" height:575px; margin-top:30px;">

        	

            

            <tr><td align="center" nowrap class="msg" style="padding-left:0px;"><?=$msg?></td></tr>

            <!--<tr><td>&nbsp;</td></tr>-->

            <tr>

            	<td align="center" nowrap>

                	<table width="30%" cellpadding="0" cellspacing="0" border="0">

                    	<form action="AdminLoginRedirection" name="loginform" id="loginform" method="post" onSubmit="return validateForm();">

                       	<tr>

                          	<td class="ad1">Username :</td>

                            <td>:</td>

                            <td><input type="text" name="uname" id="uname"  size="25"/></td>

                        </tr>

                        <tr><td>&nbsp;</td></tr>

                        <tr>

                           	<td class="ad1">Password :</td>

                            <td>:</td>

                            <td><input type="password" name="pass" id="pass" size="25" /></td>

                        </tr>

                        <tr><td>&nbsp;</td></tr>

                        <tr>

                           	<td>&nbsp;</td>

                            <td>&nbsp;</td>

                            <td><input id="signin_submit" value="Sign in" tabindex="6" type="submit">&nbsp;</td>

                        </tr>

                        </form>

                	</table>

                </td>

            </tr>

        </table>

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
