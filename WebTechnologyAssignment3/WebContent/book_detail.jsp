<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Detail</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
	String movie_id=request.getParameter("id");
	Class.forName("org.sqlite.JDBC");
	Connection	con=DriverManager.getConnection("JDBC:sqlite:C:\\Users\\Gokulraj\\Desktop\\sqlite\\employee.db");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from book where id="+movie_id);
	while(rs.next()){
		%>
		<table>
		<tr>
		<td>Book ID</td>
		<td>:<td>
		<td><%out.println(rs.getInt(1)); %></td>
		</tr>
		<tr>
		<td>Book Name</td>
		<td>:<td>
		<td><%out.println(rs.getString(2)); %></td>
		</tr>
		<tr>
		<td>Author Name</td>
		<td>:<td>
		<td><%out.println(rs.getString(3));%></td>
		</tr>
		<tr>
		<td>Year</td>
		<td>:<td>
		<td><%out.println(rs.getString(4)); %></td>
		</tr>
		<tr>
		<td>Price</td>
		<td>:<td>
		<td><%out.println(rs.getInt(5)); %></td>
		</tr>
		</table>
		<input type="button" value="buy">
	<%}
%>

</body>
</html>