<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>HTML5 Page Title</title>

  <%-- <link rel="stylesheet" href="css/default.css"> --%>
</head>
<body>

<%
  int num = 0;
  if(application.getAttribute("num") == null) {
    num = 1;
  }
  else {
    num = Integer.parseInt((String)application.getAttribute("num"));
    num++;
  }
 %>

<h1>采访量<%=num%></h1>

<%
  application.setAttribute("num", String.valueOf(num));
  out.print(application.getAttribute("num").getClass()); // class java.lang.String
  
%>


<%-- <script src="js/default.min.js"></script> --%>

</body>
</html>
