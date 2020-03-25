<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Search</title>
<style>
table,td,th{
border:1px solid black;
align-content: center;
text-align: center;
}
table{
border-collapse:collapse;
}
</style>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
	Class.forName("org.sqlite.JDBC");
	Connection	con=DriverManager.getConnection("JDBC:sqlite:C:\\Users\\Gokulraj\\Desktop\\sqlite\\employee.db");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select id,title from book");
	%>
	<table style="width:80%;position:absolute;top:10%;bottom: 10%;left:10%;right:10%;" >
		<tr>
			<th>Book ID</th>
			<th>Title</th>
		</tr>
	<%
	while(rs.next()){
		%>
		<tr style="height:15%">
			<td>
				<p><% out.print(rs.getInt(1)); %></p>
				
			</td>
			<td>
				<%String link="book_detail.jsp?id="+Integer.toString(rs.getInt(1)); %>
				<a href="<%out.print(link);%>">
				<strong><% out.print(rs.getString(2)); %><br></strong>
				</a>
			</td>
			
		</tr>
		
		
	<% } %>
	</table>

</body>
</html>