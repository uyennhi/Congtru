<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 		String so1 = request.getParameter("txtso1");
			String so2 = request.getParameter("txtso2");
			String nut = request.getParameter("but1");
			out.print(so1+"<br>"+so2+"<br>"+nut);
			
			if(so1 != null || so2 != null){
				long a = Long.parseLong(so1);
				long b = Long.parseLong(so2);
				long kq ;
				
				if(nut.equals("+")){
					kq = a+b;
					out.print(a+"+"+b+"="+kq);
				}else if(nut.equals("-")){
					kq = a-b;
					out.print(a+"-"+b+"="+kq);
				}else if(nut.equals("*")){
					kq = a*b;
					out.print(a+"*"+b+"="+kq);
				}else{
					if(b==0)
						out.print("<script> alert('bo tay');</script>");
					kq = a/b;
					out.print("ketqua"+kq);
				}
				
			}
			
	%>
</body>
</html>