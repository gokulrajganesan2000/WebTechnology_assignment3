<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SalaryEntry</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String salary=request.getParameter("salary");
	double da=0.03,hra=12.5,pf=0.10,gp,np;
	da=da*Integer.parseInt(salary);
	hra=hra*Integer.parseInt(salary);
	pf=pf*Integer.parseInt(salary);
	gp=Integer.parseInt(salary)+da+hra;
	np=gp-pf;
	Class.forName("org.sqlite.JDBC");
	Connection	con=DriverManager.getConnection("JDBC:sqlite:C:\\Users\\Gokulraj\\Desktop\\sqlite\\employee.db");
	PreparedStatement stmt=con.prepareStatement("insert into employee(id,name,basic_salary,gross_salary,net_salary) values(?,?,?,?,?)");  
	stmt.setInt(1,Integer.parseInt(id));
	stmt.setString(2,name); 
	stmt.setString(3,salary);
	stmt.setString(4,Double.toString(gp));
	stmt.setString(5,Double.toString(np));
	  try{
		  int i=stmt.executeUpdate();  
			out.println("Records Inserted sucessfully");
	  }
		catch(Exception e){
			out.print("This Record Already Insrted");
		}
	  
	con.close();  
		%>

</body>
</html>