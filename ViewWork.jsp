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
<title>View Work</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript"
	src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #0000FF
}

.style2 {
	color: #00FF00
}
.style3 {font-size: 24px}
.style4 {color: #FF0000; font-size: 24px; }
.style5 {color: #FF0000}
.style6 {font-size: 24px;
	color: #FF0000;
	font-style: italic;
}
.style10 {font-size: 16px; color: #FFFF00; font-weight: bold; }
.style11 {color: #FF0000; font-weight: bold; }
-->
</style>


 <script language="javascript" type='text/javascript'>
function populateCustomerId()
{
	var selectBox = document.getElementById("tran");

	var selectedcustomerid = selectBox.options[selectBox.selectedIndex].value;
		document.getElementById("tran").value = selectedcustomerid;
	
}

</script>
</head>
<body>
<div class="main">
<div class="header">
<div class="header_resize">
<div class="logo">
<h1><a href="index.html" class="style6">EFPB Efficient Fair Payment Based on Blockchain for Outsourcing Services in Cloud Computing</a><a href="index.html"></a><a href="index.html"></a></h1>
</div>
<div class="clr"></div>
<div class="menu_nav">
<ul>
	<li><a href="index.html"><span>Home Page</span></a></li>
	
</ul>
</div>
<div class="clr"></div>
<div class="slider">
<div id="coin-slider"><a href="#"><img src="images/slide1.jpg"
	width="960" height="313" alt="" /> </a> <a href="#"><img
	src="images/slide2.jpg" width="960" height="313" alt="" /> </a> <a
	href="#"><img src="images/slide3.jpg" width="960" height="313"
	alt="" /> </a></div>
<div class="clr"></div>
</div>
<div class="clr"></div>
</div>
</div>
<div class="content">
<div class="content_resize">
<div class="article">

<div class="clr"></div>
<div class="img"></div>
<div>
<h1 align="center" class="style1">Work Load</h1>



<p class="infopost"><span class="style3 style2">Resources </span>&nbsp;&nbsp;|<span
	class="style1">&nbsp;&nbsp;Details</span></p>
<div class="clr"></div>
<div class="img"></div>
<div>
<form id="form1" name="form1" method="post" action="ViewWork.jsp">
<table width="598" border="0" align="center">
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<tr>
	<%
	try{
	Statement st5=connection.createStatement();
    ResultSet rs5=st5.executeQuery("select name from owner ");
	
	%>
		<td class="style5">Select User Name :-</td>
		<td><select id="s1" name="tran" class="text" >
			<%while(rs5.next()){ %>
		
			<option>--Select UserName--</option>
			<option><%=rs5.getString("name") %></option>
			<%} %>
		</select></td>
	</tr>


	<tr>
		<td>&nbsp;</td>
		<tr>
			<td height="26">
			<div align="right"></div>
			</td>
			<td><input type="submit" name="Submit" value="Get" /></td>
		</tr>
		<%}catch(Exception e){
			e.printStackTrace();
			out.print(e.getMessage());
		}	%>
		
</table>
</form>
<br />
  <p align="center" class="infopost style6"><span class="style4">Work Load Details</span><br />
</p>
<h1 align="center" class="style1">Work Load Details</h1>
<table width="965" border="1" align="center">
	<tr>

		<td width="293" bgcolor="#FF0000">
		<div align="center" class="style10">File Name </div>		</td>
		<td width="140" height="32" bgcolor="#FF0000">
		<div align="center" class="style10">Owner Name </div>		</td>
		<td width="293" bgcolor="#FF0000">
		<div align="center" class="style10">Cloud Name </div>		</td>
				<td width="293" bgcolor="#FF0000">
		<div align="center" class="style10">VM Name </div>		</td>
		<td width="293" bgcolor="#FF0000">
		<div align="center" class="style10">MAC</div>		</td>
		<td width="293" bgcolor="#FF0000">
		<div align="center" class="style10">Secret Key</div>		</td>
		<td width="115" bgcolor="#FF0000">
		<div align="center" class="style10">Rank</div>		</td>
		<td width="115" bgcolor="#FF0000">
		<div align="center" class="style10">Date </div>		</td>
	</tr>

	<%

String transaction=request.getParameter("tran");


            String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          
      		 
      		
      		String query="select * from cloudserver where ownername='"+transaction+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
           while ( rs.next() )
	   {    
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
		s9=rs.getString(9);
		s10=rs.getString(10);
	

		%>
	<tr>
		<td height="29">
		<div align="center" class="style11"><%=s2%></div>		</td>

		<td>
		<div align="center" class="style11"><%=s4%></div>		</td>
		<td>
		<div align="center" class="style11"><%=s5%></div>		</td>
		<td>
		<div align="center" class="style11"><%=s6%></div>		</td>
		<td>
		<div align="center" class="style11"><%=s7%></div>		</td>
		<td>
		<div align="center" class="style11"><%=s8%></div>		</td>
		<td>
		<div align="center" class="style11"><%=s9%></div>		</td>
		<td>
		<div align="center" class="style11"><%=s10%></div>		</td>
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
<h4><a href="ProxyServerMain.jsp">Back</a></h4>
</div>
<div class="clr"></div>
</div>
</div>

<div class="clr"></div>
</div>
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
<div style="clear: both;"></div>
</div>
</div>
</div>
<div align=center></div>
</body>
</html>
