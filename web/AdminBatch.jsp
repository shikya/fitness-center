<%-- 
    Document   : AdminBatch
    Created on : Feb 14, 2013, 5:15:20 PM
    Author     : SHRI
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Time"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page import="org.eclipse.persistence.jpa.internal.jpql.parser.ElseExpressionBNF"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Batch Timinigs of Fitness Club</title>
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
            	<a href="#" class="icon-2"></a>
            	<a href="#" class="icon-1"></a>
            </div>
            <ul class="menu">
                <li><a href="index.html">About</a></li>
                <li class="current"><a href="trainings.html">Trainings</a></li>
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
                    <div class="col-3">
                   	  <h2 class="p3"><span class="color-1">Select </span> Batch</h2>
                        <p class="p2"><strong>Select the batch timing suitable to you to check available trainers.</strong></p>
                      <h2 class="p3"></h2>
        <%
        try{
            Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fitdb","root","tiger");
            java.sql.Statement st=con.createStatement();

            st.execute("SELECT * FROM fitdb.batch limit 0,4;");
            ResultSet rs;
            rs=st.getResultSet();
            int i;
            int bid;
            Time t;
        %>
                        <p class="p2"><strong>Morning Batches (Each 1hour) :</strong>                        </p>
                        <ul class="list-2 p5">
                            <%
                            try{
                                bid=Integer.parseInt(request.getParameter("bid"));
                                
                            }
                            catch(Exception e){
                                bid=0;
                            }
                            while(rs.next())
                            {
                                i=rs.getInt("bid");
                                t=rs.getTime("bt");
                                
                                if(i==bid)
                                {
                                    out.print("<li>"+t+"AM</li>");
                                }
                                 else   
                                {
                            %>
                       	  <li><a href="AdminBatch.jsp?bid=<%out.print(i);%>"><%out.print(t+"AM");%></a></li>
                          <%
                                }
                            }
                        %>
                                                  <p class="p2"><strong>Evening Batches (Each 1hour):</strong></p>
                            <%            
            st.execute("SELECT * FROM fitdb.batch limit 4,8;");
            rs=st.getResultSet();
                            while(rs.next())
                            {
                                i=rs.getInt("bid");
                                t=rs.getTime("bt");
                                if(i==bid)
                                {
                                    out.print("<li>"+t+"PM</li>");
                                }
                                 else   
                                {

                            %>
                            <li><a href="AdminBatch.jsp?bid=<%out.print(i);%>"><%out.print(t+"PM");%></a></li>
                            <%
                                }
                            }
                            %>
                      </ul>
        <%
            }
        catch(Exception e){
            out.print("Error Ocoured as "+e.toString()+"<hr><b>Strack Trace</b><br>");
            //e.printStackTrace(out);
            e.printStackTrace();
            out.print("<br>Cause as<br>"+e.getCause()+"<hr><b>Message Return as</b><br>"+e.getMessage());

        }
        %>
                    </div>
        <%
        try{
            Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fitdb","root","tiger");
            java.sql.Statement st=con.createStatement();
            java.sql.Statement st1=con.createStatement();    
            
            st.execute("SELECT * FROM fitdb.trainer;");
            ResultSet rs,rs1;
            rs=st.getResultSet();
        %>

                    <div class="col-4">
                    	<h2 class="p3"><span class="color-1">Trainers</span>                        </h2>
                    	<div class="wrap box-1 top-4">
        <%
            while(rs.next())
                       {
                
                        st1.execute("SELECT * FROM fitdb.person where pid='"+rs.getInt("fk_pid")+"';");
                        rs1=st1.getResultSet();
                        rs1.next();
        %>
                            <div class="extra-wrap">
                              <p class="p2"><strong>ID : </strong><% out.print(rs.getInt("tid")); %></p>
                              <p class="p2"><strong>Name : </strong><% out.print(rs1.getString("fname")+" "+rs1.getString("mname")+" "+rs1.getString("lname")); %></p>
                              <p class="p2"><strong>Work Experience: </strong><% out.print(rs.getInt("wexp")); %></p>
                        <p class="p2"><strong>Joining Date: </strong><% out.print(rs.getInt("jd")); %></p>
                        <p><span class="p2"><strong>Details: </strong><% out.print(rs.getString("desc")); %></span></p>
                        <p class="p2"><a href="BatchChange?bid=<% out.print(request.getParameter("bid")); %>&tid=<% out.print(rs.getInt("tid")); %>">
                                <%
                                int bid;
                            try{
                                bid=Integer.parseInt(request.getParameter("bid"));
                                
                            }
                            catch(Exception e){
                                bid=0;
                            }
                                if(bid!=0)
                                    out.print("Assign to "+bid+" no. batch");
                        %></a></p>
                        <hr>
                            </div>
                          <%
                          rs1.close();
                        }
                          %>
                        </div>
                        <div class="wrap box-1 top-2">
                          <div class="extra-wrap"></div>
                        </div>
                    </div>
        <%
            }
        catch(Exception e){
            out.print("Error Ocoured as "+e.toString()+"<hr><b>Strack Trace</b><br>");
            //e.printStackTrace(out);
            e.printStackTrace();
            out.print("<br>Cause as<br>"+e.getCause()+"<hr><b>Message Return as</b><br>"+e.getMessage());

        }
        %>
                          
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
