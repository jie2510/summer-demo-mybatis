<%@ page contentType="text/html; charset=gb2312"  language="java" errorPage=""%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String id=request.getParameter("id");
	String url = "jdbc:mysql://localhost/sql_test";
	String userName = "root";
	String password = "root";
	String sql = null;
	Connection conn = null;
	Statement stmt = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch(ClassNotFoundException e) {
		System.out.println("加载驱动器类时出现异常");
	}
		conn = DriverManager.getConnection(url, userName, password);
		
		//创建Statement语句
		stmt = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY,
				                    ResultSet.CONCUR_UPDATABLE);	
		url="delete from student where stu_id="+id;
		stmt.executeUpdate(url);
		response.sendRedirect("select.jsp");
		%>
</body>
</html>