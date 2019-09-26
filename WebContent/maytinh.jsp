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
			long a ,b;
			long kq=0 ;
			
			if(so1 != null || so2 != null){
				a = Long.parseLong(so1);
				b = Long.parseLong(so2);
				
				
				if(nut.equals("+")){
					kq = a+b;
					
				}else if(nut.equals("-")){
					kq = a-b;
					
				}else if(nut.equals("*")){
					kq = a*b;
					
				}else{
					if(b==0)
						out.print("<script> alert('bo tay');</script>");
					kq = a/b;
					
				}
				
			}
			
	%>
	<form method='post' action='maytinh.jsp'>
		So 1:
		<input type='number' name='txtso1' value='<%=so1==null?"":so1%>'><br>
		So2 2:
		<input type='number' name='txtso2' value='<%=so2==null?"":so1%>'><br>
		Ketqua:
		<input type='number' name='txtkq' value='<%=kq==0?"":kq%>'><br>
		
		<input type='submit' name='but1' value='+'>
		<input type='submit' name='but1' value='-'>
		<input type='submit' name='but1' value='*'>
		<input type='submit' name='but1' value='/'>
		
		
		
		
	</form>
</body>
</html>