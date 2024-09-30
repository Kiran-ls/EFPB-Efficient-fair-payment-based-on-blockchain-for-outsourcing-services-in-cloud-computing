<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud Cost</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
-->
<link rel="stylesheet" type="text/css" href="http://cdn.webrupee.com/font">
.style4 {	font-size: 24px;
	color: #FF0000;
	font-style: italic;
}
.style4 {font-size: 24px;
	color: #FF0000;
	font-style: italic;
}
.style6 {color: #FFFF00; font-weight: bold; }
.style8 {color: #FF0000; font-weight: bold; }
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
   <h1><a href="index.html"></a><a href="index.html" class="style4">EFPB Efficient Fair Payment Based on Blockchain for Outsourcing Services in Cloud Computing</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li ><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="DataOwner.html"><span>Out Sourcer </span></a></li>
          <li><a href="ProxyServer.html"><span>PSA</span></a></li>
          <li><a href="CloudServer.html"><span>CloudServer</span></a></li>
          <li><a href="EndUser.html"><span>Worker</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="313" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="313" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="313" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
        <div class="article">
           <h1 align="center">Pricing through an Online Auction</h1>
</div>
<div id="bodymiddlePanj">

<%
String clo=(String)application.getAttribute("ocl");


%>

 <form id="form1" name="form1" method="post" action="GetCloudCost.jsp">
<table width="598" border="0" align="center">
<p>&nbsp;</p><p>&nbsp;</p>
	<tr>
	<td class="style4">Enter Cloud Name :-</td>
		<td><select id="s1"	name="cname" class="text">
		  <option>--Select Cloud Server--</option>
		    <option><%=clo %></option>
        </select></td>
	</tr>
		
	<tr>
		<td>&nbsp;</td>
	<tr>
		<td>
		<div align="right"></div>
		</td>
		<td><input type="submit" name="Submit" value="Get Vm Details" /></td>
	</tr>
</table>


</form>
<br/>
<br/><br/><br/>
<h2 align="center">Cloud Cost Details</h2>
  <table width="700" border="1" align="center">
  <tr>
  <td width="293" bgcolor="#FF0000"><div align="center" class="style6">Memory Size</div></td>     
   <td width="140" height="32" bgcolor="#FF0000"><div align="center" class="style6">Cloud Cost in <span class="WebRupee">&#x20B9;</span></div></td>
      
       <td width="293" bgcolor="#FF0000"><div align="center" class="style6">Cloud Name </div></td>
  </tr>

<%
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          
      		String cname=request.getParameter("cname");
      		String tbl = "";
      		if (cname.equalsIgnoreCase("Rackspace")) {
      			tbl = "rvmcost";
      		} else if (cname.equalsIgnoreCase("Amazon S3")) {
      			tbl = "Avmcost";
      		} else if (cname.equalsIgnoreCase("Windows Azure")) {
      			tbl = "Wvmcost";
      		} else if (cname.equalsIgnoreCase("Aliyun OSS")) {
      			tbl = "AOvmcost";
      		} 
      		
    
      		String query="select * from "+tbl+" where cname='"+clo+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);

           while( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		
		%>

     

<tr>
	<td height="29">
	<div align="center" class="style8"><%=s2%></div>	</td>
		<td>
	<div align="center" class="style8"><%=s3%></div>	</td>
	<td>
	<div align="center" class="style8"><%=s4%></div>	</td>
</tr>


<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
            e.printStackTrace();
          }
%>
</table>
<h4><a href="DataOwnerMain.jsp">back</a></h4>
<br/>
</div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div></body>
</html>
