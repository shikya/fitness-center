<%-- 
    Document   : Signup
    Created on : Feb 16, 2013, 1:37:06 PM
    Author     : SHRI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>New Member Registration Form - Fitness Center</title>
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
    <script language="JavaScript" src="js/validate.js" type="text/javascript"></script>	
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
<style>
label,a, body 
{
	font-family : Arial, Helvetica, sans-serif;
	font-size : 12px; 
}
.err
{
	font-family : Verdana, Helvetica, sans-serif;
	font-size : 12px;
	color: red;
}
</style>	
<!-- a helper script for vaidating the form-->

<style type="text/css">

#form_table{
	
	background:#FFF;
	width:450px;
	margin: 1px;
	font-family: arial;
	color:#000000;
	}
#form_table th {
	text-align: right;
	color: #000;
	font-size: 12px;
	}
#form_table td {
	position: relative;
	width: 40%;
	}
#form_table caption {
	background:url(images/caption.png) center left;
	height: 58px;
	 line-height: 58px;
	 width: 450px;
	 font-size: 21px;
	 font-weight: bolder;
	 }
#form_table input, #form_table textarea {
	width: 300px;
	background-color: #fdfdfd;
	display: inline;
	color: #000;
	border:1px solid #01a5ca;
	margin:1px 3px;
	font-family: arial;
	height: 10px;
	font-size: 12px;
	border-radius:6px;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
}
#form_table input[type="submit"], #form_table input[type="reset"] {
	width: 120px;
	padding-bottom:22px;
	table-layout:auto;
	}
#form_table input:focus, #form_table textarea:focus{
	background:#F0F0F0;
	}
	
#h3
{
	text-decoration:blink;
	color: #F00;
	font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
}

#form_table input + span, #form_table textarea + span {
	display: none;
	background:url(images/message.png) no-repeat center left;
	line-height: 32px;
	font-size: 12px;
	font-weight: bold;
	color: #000;
	padding:0px 20px;
	position: absolute;
	width: 180px;
	z-index:99;
	}
 
</style>

</head>
<body>
<div class="main">
	<div class="bg-img"></div>
<!--==============================header=================================-->
<header>
  <h1><a href="index.html">Fitness <strong>Club.</strong></a></h1>
  <nav>
    <div class="social-icons"> <a href="#" class="con-2"></a> <a href="#" class="con-1"></a></div>
    <ul class="menu">
      <li><a href="index.jsp">About</a></li>
      <li><a href="trainers.html">Trainers</a></li>
      <li><a href="event.jsp">Event</a></li>
      <li><a href="products.jsp">Products</a></li>
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
                    	<h2><span class="color-1">Find</span> us</h2>
                        <div class="map img-border">
                          <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
                        </div>
                        <dl>
                            <dt class="color-1"><strong>8901 Marmora Road,<br>Glasgow, D04 89GR.</strong></dt>
                            <dd><span>Freephone:</span>+1 800 559 6580</dd>
                            <dd><span>Telephone:</span>+1 800 603 6035</dd>
                            <dd><span>Fax:</span>+1 800 889 9898</dd>
                            <dd><span>E-mail:</span><a href="#" class="link">sandeshbogawat</a></dd>
                        </dl>
                    </div>
                    <div class="col-4">
                    	<h2><span class="color-1">Registration</span> form</h2>
                        <form id="form" method="post" action="SignupConfirmation">
                            <fieldset>
                             
                             <body class="oneColElsCtr">

<table border="0" id="form_table">

  <tr>
    <th width="25%">First Name &#8250;</th>
  		<td>
        	<input type="text" name="fname" value='' id="fname">
<br><br>    
		</td>
  </tr>
    <th width="25%">Middle Name &#8250;</th>
  		<td><input type="text" name="mname" value='' id="mname">
  		  <br><br>    
		</td>
  </tr>

  <tr>
    <th>Last Name &#8250;</th>
	    <td>
			<input type="text" name="lname" value='' id="lname">
            <br><br>    

	    </td>
  </tr>
<tr>
    <th>Gender &#8250;</th>
	    <td>
	      &nbsp;&nbsp;
	        <select name="sex" id="sex">
	          <option value="1" selected>Select</option>
	          <option value="2">Male</option>
	          <option value="3">Female</option>
	 		</select>
        </td>
    </tr>
  <tr>
    <th>Date of Birth &#8250;</th>
	    <td>
	      &nbsp;&nbsp;
	        <select name="dd" id="dd">
	          <option value="0" selected>Day</option>
	          <option value="1">1</option>
	          <option value="2">2</option>
	          <option value="3">3</option>
	          <option value="4">4</option>
	          <option value="5">5</option>
	          <option value="6">6</option>
	          <option value="7">7</option>
	          <option value="8">8</option>
	          <option value="9">9</option>
	          <option value="10">10</option>
	          <option value="11">11</option>
	          <option value="12">12</option>
	          <option value="13">13</option>
	          <option value="14">14</option>
	          <option value="15">15</option>
	          <option value="16">16</option>
	          <option value="17">17</option>
	          <option value="18">18</option>
	          <option value="19">19</option>
	          <option value="20">20</option>
	          <option value="21">21</option>
	          <option value="22">22</option>
	          <option value="23">23</option>
	          <option value="24">24</option>
	          <option value="25">25</option>
	          <option value="26">26</option>
	          <option value="27">27</option>
	          <option value="28">28</option>
	          <option value="29">29</option>
	          <option value="30">30</option>
	          <option value="31">31</option>
	          <option value="0">Day</option>
            </select>
              
              &nbsp;&nbsp;

	      
	        <select name="mm" id="mm">
   	          <option value="0" selected>Month</option>
	          <option value="1">January</option>
	          <option value="2">February</option>
	          <option value="3">March</option>
	          <option value="4">April</option>
	          <option value="5">May</option>
	          <option value="6">June</option>
	          <option value="7">July</option>
	          <option value="8">August</option>
	          <option value="9">September</option>
	          <option value="10">October</option>
	          <option value="11">November</option>
	          <option value="12">December</option>
            </select>
	        &nbsp;&nbsp;
	      
	        <select name="yy" id="yy">
            <option value="0" selected>Year</option>
<option value="1960">1960</option>
<option value="1961">1961</option>
<option value="1962">1962</option>
<option value="1963">1963</option>
<option value="1964">1964</option>
<option value="1965">1965</option>
<option value="1966">1966</option>
<option value="1967">1967</option>
<option value="1968">1968</option>
<option value="1969">1969</option>
<option value="1970">1970</option>
<option value="1971">1971</option>
<option value="1972">1972</option>
<option value="1973">1973</option>
<option value="1974">1974</option>
<option value="1975">1975</option>
<option value="1976">1976</option>
<option value="1977">1977</option>
<option value="1978">1978</option>
<option value="1979">1979</option>
<option value="1980">1980</option>
<option value="1981">1981</option>
<option value="1982">1982</option>
<option value="1983">1983</option>
<option value="1984">1984</option>
<option value="1985">1985</option>
<option value="1986">1986</option>
<option value="1987">1987</option>
<option value="1988">1988</option>
<option value="1989">1989</option>
<option value="1990">1990</option>
<option value="1991">1991</option>
<option value="1992">1992</option>
<option value="1993">1993</option>
<option value="1994">1994</option>
<option value="1995">1995</option>
<option value="1996">1996</option>
<option value="1997">1997</option>
<option value="1998">1998</option>
<option value="1999">1999</option>
<option value="2000">2000</option>
<option value="2001">2001</option>
<option value="2002">2002</option>
<option value="2003">2003</option>
<option value="2004">2004</option>
<option value="2005">2005</option>
<option value="2006">2006</option>
<option value="2007">2007</option>
<option value="2008">2008</option>
<option value="2009">2009</option>
<option value="2010">2010</option>
<option value="2011">2011</option>
<option value="2012">2012</option>
<option value="2013">2013</option>
	          </select><br><br>
          	        
          </td>
  </tr>

  
  <tr>
    <th valign="top">Address &#8250;</th>
	    <td><textarea name="address" cols="50" id="address" style="height:100px"></textarea>
	    <br><br>
        </td>
	</tr>
   
   <tr>
            <br><br>
        </td>
	</tr>
     
	<tr><br><br>
  		<th valign="top">Weight &#8250;</th>
			<td>
            	<input id="weight" name="weight" type="text">
<br><br>    
            </td>
	</tr>

	<tr>
  		<th valign="top">Height &#8250;</th>
			<td>
            	<input id="height" name="height" type="text">
<br><br>    
            </td>
	</tr>

	<tr>
  		<th valign="top">Contact No. &#8250;</th>
			<td>
            	<input id="phno" name="phno" type="text">
<br><br>    
            </td>
	</tr>

	<tr>
  		<th valign="top">Emergency Contact No. &#8250;</th>
			<td>
            	<input id="ephno" name="ephno" type="text">
<br><br>    
            </td>
	</tr>
	<tr>
  		<th valign="top">Batch &#8250;</th>
			<td>&nbsp;&nbsp;
                            <select name="batch">
                                <optgroup label="Morning Batch">
                                <option value="1">6:00 to 7:00</option>
                                <option value="2">7:00 to 8:00</option>
                                <option value="3">8:00 to 9:00</option>
                                <option value="4">9:00 to 10:00</option>
                                </optgroup>
                                <optgroup label="Evening Batch">
                                <option value="5" selected>20:00 to 21:00</option>
                                <option value="6">21:00 to 22:00</option>
                                <option value="7">22:00 to 23:00</option>
                                <option value="8">23:00 to 00:00</option>
                                </optgroup>
                            </select>
<br><br>    
            </td>
	</tr>
	<tr>
  		<th valign="top">Subscription &#8250;</th>
			<td>&nbsp;&nbsp;
                            <select name="sub">
                                <option value="0">Three day Pass</option>
                                <option value="1">1 month</option>
                                <option value="2">2 months</option>
                                <option value="3">3 months</option>
                                <option value="4">6 months</option>
                                <option value="5">1 year</option>
                            </select>
<br><br>
            </td>
	</tr>
	<tr>
  		<th valign="top">Password &#8250;</th>
                <td><input type="password" name="pass">
            </td>
	</tr>

	<tr>
  		<th valign="top">Important Note &#8250;</th>
			<td>
         <h3 id="h3">&nbsp;&nbsp;PASSWORD WILL WORK ONLY AFTER CONFIRMATION BY ADMIN.</h3>
<br><br>
            </td>
	</tr>
    <tr><h1>
	  <th> </th>
		<td>
        <br><br>
		    <input type="submit" name="submit" value="Sign Up">
		    <input type="reset" name="reset">
	    </td>
	</tr>
</table>
             </fieldset>  
                          </form> 
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