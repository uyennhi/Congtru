<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	 		String un = request.getParameter("txtun");
			String pass = request.getParameter("txtpass");
			String vt = request.getParameter("vaitro");
			//gv: un:gv ,pass:456
			//sv: un:abc,pass:123
			if(vt.equals("1")){
				if(un.equals("gv") && pass.equals("456")){
					response.sendRedirect("login.jsp?kt=dung");
					
				}else{
					response.sendRedirect("maytinh.jsp");
				}
				
			}
			else if(vt.equals("2")){
				if(un.equals("abc") && pass.equals("123")){
					response.sendRedirect("login.jsp?kt=dung");
				}else{
					response.sendRedirect("maytinh.jsp");
				}
				
			}
	%>
</body>
</html>