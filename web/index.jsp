<%-- 
    Document   : index
    Created on : Feb 13, 2013, 12:22:00 PM
    Author     : SHRI
--%>

<%@page import="java.util.Date"%>
<%@page import="java.sql.Time"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>About - Fitness Club</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/signin.css">
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/tms-0.3.js"></script>
	<script src="js/tms_presets.js"></script>
    <script src="js/cufon-yui.js"></script>
    <script src="js/Asap_400.font.js"></script>
    <script src="js/Coolvetica_400.font.js"></script>
	<script src="js/Kozuka_M_500.font.js"></script>
    <script src="js/cufon-replace.js"></script>
    <script src="js/FF-cash.js"></script>
    <script>
		$(window).load(function(){
			$('.slider')._TMS({
			prevBu:'.prev',
			nextBu:'.next',
			pauseOnHover:true,
			pagNums:false,
			duration:250,
			easing:'easeOutQuad',
			preset:'Fade',
			slideshow:7000,
			pagination:'.pagination',
			waitBannerAnimation:false,
			banners:'fade'
			})
		}) 	
    </script>
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
                    <%!int i;%>
                    <%
                    try{
                        i=Integer.parseInt(session.getAttribute("id").toString());
                       }
                    catch(Exception e){
                       i=0; 
                    }
                    finally{
                        if(i!=0)
                        {%>
                        <%=session.getAttribute("name")%> | <a herf="/MemberSignout">Signout</a>
                        <%}
                    }
                    %>
            </div>
            <ul class="menu">
                <li class="current"><a href="index.html">About</a></li>
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
            <div class="slider">
              <ul class="items">
                 <li><img src="images/slider-1.jpg" alt="">
                    <div class="banner">
                        <p class="font-1">Special<span>Events</span></p>
                        <p class="font-2">Waves Club organizes several events each year to encourage members to lose weight and gain fitness & confidence.</p>
                        
                    </div>
                </li>
                <li><img src="images/slider-2.jpg" alt="">
                    <div class="banner">
                        <p class="font-1">Three Days<span>Guest Pass</span></p>
                        <p class="font-2">Benefits include:<br>
								Meet the Team.<br>
								Have a Health check.<br>
								View the location.<br>									Check out the Facilities.<br></p>

                    </div>
                </li>
                <li><img src="images/slider-3.jpg" alt="">
                    <div class="banner">
                        <p class="font-1">Sports<span>Facilities</span></p>
                        <p class="font-2">Explore the various Sports Facilities that Waves Club offers to you and your family. The flexibility of time, budget & location.</p>
                        
                    </div>
                </li>
              </ul>
              <div class="pagination">
                  <ul>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                  </ul>
              </div>  
            </div>
          </div>
            <%
            if(i==0)
            {
            %>
          <div class="grid_12 top-1">
              <form method="get" action="MemberLogin">
          	<div class="block-1 box-shadow">
           	  <div class="login">
    <table width="920" border="0" id="form_table" align="center" height="20px">
   <tr>
       <td>        <p class="font-3"><strong>Sign In</strong></p>
       <th width="12%">Member ID &#8250;</th>
  		<td width="17%"><input type="text" name="mid" value='' id="mid"><br>    
		</td>
  
    <th width="12%">Password &#8250;</th>
  		<td width="17%"><input type="password" name="password" value='' id="password"><br>    
		</td>
		<td width="10%" align="center"><input id="signin_submit" value="Sign in" tabindex="6" type="submit">
                
        </td>         
        <td width="25%" align="center">
                 <a href="Signup.html"><img src="images/Newreg.png" width="196" height="37"></a>
               
               </td>
  </tr></table>
           	  </div>
            </div>
           </form>
          </div>
          <% }%>
          <div class="grid_12 top-1">
          	<div class="box-shadow">
          	  <div class="wrap block-2">
<%
        try{
            Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fitdb","root","tiger");
            java.sql.Statement st=con.createStatement();

            java.util.Date today=new Date();
            st.execute("SELECT * FROM fitdb.event where edate>='"+today.getYear()+"-"+today.getMonth()+1+"-"+today.getDate()+"' order by edate asc limit 0,2");
            ResultSet rs;
            rs=st.getResultSet();
            int i;
            int bid;
            Time t;
        %>
 

                      <div class="col-1">
          	      <h2 class="p3"><span class="color-1">Special</span> Events</h2>

     <% while(rs.next()){ 
         %>
                    <div class="extra-wrap"><br>
                                <p class="p2"><strong><% out.print(rs.getString("name")); %></strong></p>
                                <p>On <% out.print(rs.getString("edate")); %></p>
                                <p><% out.print(rs.getString("desc")); %></p>
                                <p>&nbsp;</p>
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

       	        </div>
          	    <div class="col-2">
          	      <h2 class="p3"><span class="color-1">Services</span> list</h2>
          	      <ul class="list-1">
          	        <li><a href="#">Lorem ipsum dolor sit amet</a></li>
          	        <li><a href="#">Consetetur sadipscing elitr sed</a></li>
          	        <li><a href="#">Diam nonumy eirmod tempor</a></li>
          	        <li><a href="#">Invidunt ut labore dolore</a></li>
          	        <li><a href="#">Magna aliquyam erat sed</a></li>
       	          </ul>
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
  <p><a href="Adminlogin.html">Admin Login</a>
</footer>	
</div>    
<script>
	Cufon.now();
</script>
</body>
</html>