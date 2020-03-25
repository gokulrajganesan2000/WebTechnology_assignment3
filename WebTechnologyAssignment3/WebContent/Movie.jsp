<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie Detail</title>
</head>
<body>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
	String movie=request.getParameter("movie");
	Class.forName("org.sqlite.JDBC");
	Connection	con=DriverManager.getConnection("JDBC:sqlite:C:\\Users\\Gokulraj\\Desktop\\sqlite\\employee.db");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from movie where name='"+movie+"'");
	while(rs.next()){
		%>
		<table>
			<tr>
				<td>Movie Name </td>
				<td>:</td>
				<td><%out.println(rs.getString(1));%></td>
			</tr>
			<tr>
				<td>Director Name </td>
				<td>:</td>
				<td><%out.println(rs.getString(2));%></td>
			</tr>
			<tr>
				<td>Realese Date </td>
				<td>:</td>
				<td><%out.println(rs.getDate(3));%></td>
			</tr>
			<tr>
				<td>Review </td>
				<td>:</td>
				<td><%out.println(rs.getString(4));%></td>
			</tr>
		</table>
		<%
} %>
</body>
</html>