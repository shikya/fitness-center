<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Member Profile - Fitness Club</title>
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
                <li class="current"><a href="Products.jsp">Products</a></li>
                <li><a href="gallery.html">Gallery</a></li>
                <li><a href="contacts.html">Contacts</a></li>
            </ul>
        </nav>
    </header>  
           <%
        try{
            %>
            <%!Connection con;%>
            <% Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fitdb","root","tiger");%>
            <%!java.sql.Statement st;%>
            <%!ResultSet rs;%>
            <%!int i;%>
            <%
            st=con.createStatement();
            String str="8";
            i=1;
            //str=request.getParameter("pid");
            rs=st.executeQuery("SELECT * FROM fitdb.person,fitdb.member where fitdb.person.pid=fitdb.member.fk_mem_pid and fitdb.person.pid="+str+";");
            if(!rs.next())
            {
                rs=st.executeQuery("SELECT * FROM fitdb.person where pid='"+str+"';");
                rs.next();
                i=0;
            }
            }catch(Exception e){
            out.print("Error Ocoured as "+e.toString()+"<hr><b>Strack Trace</b><br>");
            //e.printStackTrace(out);
            e.printStackTrace();
            out.print("<br>Cause as<br>"+e.getCause()+"<hr><b>Message Return as</b><br>"+e.getMessage());

        }
        %>
<!--==============================content================================-->
    <section id="content">
        <div class="container_12">
          <div class="grid_12">
          	<div class="box-shadow">
            	<div class="wrap block-2">
                  <div class="col-1">
                    	<h2 class="p3"><span class="color-1"><%=rs.getString("fname") %> <%=rs.getString("mname") %> <%=rs.getString("lname") %></span></h2>
                    	<p>&nbsp; </p>
                    	<div class="wrap box-1">
                          <div class="extra-wrap">
                            <div class="extra-wrap">
                          <p><strong>Personal Details</strong></p><hr>
                          <p><strong>Date of Birth : </strong><%=rs.getDate("dob") %></p>
                          <p><strong>Age : </strong><%=rs.getInt("age") %></p>
                          <p><strong>Address : </strong><%=rs.getString("address") %></p>
                          <p><strong>Weight : </strong><%=rs.getInt("weight") %></p>
                                  <p><strong>Height : </strong><%=rs.getInt("height") %></p>
                                  <p><strong>Contact No. : </strong><%=rs.getString("phno") %></p>
                                  <p><strong>Emergency No. : </strong><%=rs.getString("ephno") %></p>
                                  <%
                                  if(i==1)
                                  {
                                  %>
                                  <p><strong>Batch :</strong><%=rs.getInt("bid") %> on <%=rs.getString("bt") %></p>
                              <p>&nbsp;</p>
                              <p>&nbsp;</p>
                              <p><strong>Registraion Details</strong></p>
                      <hr>

                                  <p><strong>Approval Date : </strong><%=rs.getDate("appdate") %></p>
                                  <p><strong>Expiry Date : </strong><%=rs.getDate("expdate") %></p>
                                  <p><strong>Subscription Period : </strong><%=rs.getInt("sub") %></p>
                                  <% } %>
                                  <p>&nbsp;</p>
                                  <p>&nbsp;</p>
                                  <p align="right"><input id="signin_submit" value="Approve" tabindex="10" type="submit">
                                  <input id="signin_submit" value="Renew" tabindex="6" type="submit">
                                  <input id="signin_submit" value="Delete" tabindex="12" type="submit"></p>
                            </div></div>
                        </div>
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