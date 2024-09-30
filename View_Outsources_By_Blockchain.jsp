<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View_Outsources_By_Blockchain</title>
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
.style4 {font-size: 24px;
	color: #FF0000;
	font-style: italic;
}
.style6 {color: #FF0000; font-weight: bold; }
.style7 {color: #FFFF00}
.style8 {color: #FFFF00; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
   <h1><a href="index.html" class="style4">EFPB Efficient Fair Payment Based on Blockchain for Outsourcing Services in Cloud Computing</a><a href="index.html"></a><a href="index.html"></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
         
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
       
            <div class="clr"></div>
          <div class="img"></div>
          <div>
            <h2 align="center" class="style6">View Outsources By Blockchain...</h2>
            
			
		
          
		 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
		    <style type="text/css">
<!--
.style1 {color: #FFFF00}
.style3 {color: #FFFFFF}
.style5 {
	font-weight: bold;
	color: #FF0000;
}
.style6 {color: #FF0000}
-->
            </style>
		      




          <title>A_View_All_Datasets_By_Transport_Blockchain</title><h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,hsign,s111;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						String str1 = " select distinct(cname) from proxyserver";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    hsign = rs1.getString(1);
						   	String query="select * from proxyserver where cname = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
							s111=rs.getString(4);
							
							%>
       
				 
			<table width="965" border="1" align="center">
  <tr>
   <td width="140" height="32" bgcolor="#FF0000"><div align="center" class="style6 style7"><span class="style3">File Name </span></div></td> 
      <td width="293" bgcolor="#FF0000"><div align="center" class="style8"><span class="style3">Owner Name </span></div></td>    
      
       <td width="293" bgcolor="#FF0000"><div align="center" class="style8"><span class="style3"> Cloud Name </span></div></td>
      <td width="293" bgcolor="#FF0000"><div align="center" class="style8"><span class="style3">VM Name</span></div></td>
    <td width="115" bgcolor="#FF0000"><div align="center" class="style8"><span class="style3">MAC </span></div></td>
      <td width="293" bgcolor="#FF0000"><div align="center" class="style8"><span class="style3">SK </span></div></td>
          <td width="115" bgcolor="#FF0000"><div align="center" class="style8"><span class="style3">Memory </span></div></td>
    <td width="115" bgcolor="#FF0000"><div align="center" class="style8"><span class="style3">Date </span></div></td>
  </tr>
		   
		 
         <h3 align="center">
<p align="center" class="style12"><span class="style2">Cloud Name Block Chain--->::</span> <%=s111%><br>
	     </h3>
			<div align="center">
			  <%
							
							}
									i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
		s9=rs.getString(9);
		
					%>
	      </div>  
			  <tr>
	<td height="29">
	<div align="center" class="style6"><%=s2%></div>	</td>
		<td>
	<div align="center" class="style6"><%=s3%></div>	</td>
	<td>
	<div align="center" class="style6"><%=s4%></div>	</td>
	<td>
	<div align="center" class="style6"><%=s5%></div>	</td>
	<td>
	<div align="center" class="style6"><%=s6%></div>	</td>
	<td>
	<div align="center" class="style6"><%=s7%></div>	</td>
	<td>
	<div align="center" class="style6"><%=s8%></div>	</td>
	<td>
	<div align="center" class="style6"><%=s9%></div>	</td>
</tr>
	    <%
					 
			   }
			   
			    }
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
		  
		  
        
			
			
			
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
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div></body>
</html>
