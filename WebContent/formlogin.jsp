<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%String kt= request.getParameter("kt");
   			if(kt!= null && kt.equals("dung")){
   				out.print("Xin chao: gv");
   			}
   		%>
	<form action="check.jsp" method="post">
  

  
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="txtun" required>
	<br><br>
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="txtpass" required>
	<br><br>
	<select name='vaitro'>
		<option value='1'> Giao vien</option>
		<option value='2'> Sinhvien</option>
	</select>
	<br><br>
    
    
      <input type="submit" name="but1" value='login'> 
   		
  <br>
	
  <div class="container" style="background-color:#f1f1f1">
  	<br>
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
  	<%
  		if(kt!= null){
  			out.print("SAi.......");
  		}
  	%>
</form>
</body>
</html>