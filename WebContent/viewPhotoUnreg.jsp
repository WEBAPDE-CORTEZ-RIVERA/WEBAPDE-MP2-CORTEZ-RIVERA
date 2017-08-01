<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="stylesheet.css">
<title>View Photo</title>

</head>
<body>
	<div class="header">
		<div class="header-left">
			<form action="welcome" method="POST">
				<input type="submit" class="titles" id="welcome-link" name="welcompage" value="shareputo">
			</form>
		</div>
		<form action="searchunreg" method="POST" class="search-form-2">
					<div class="box_in"><button type="submit" class="search-button" value="Search"><img src="magni.png" class="magni"></button></div>
        			<input class="txt_in" type="text" name="search" placeholder="Search by tags" />
					
					
		</form>
		
		<div class="header-right" style="margin-left: 20px; width: 450px;">
			<form action="login" method="POST" class="login-form">
				<input type=text id="username-input" placeholder="Username" name="username" 
				style="border-radius: 10px;	border: none; text-indent: 20px;"></input>
        		<input type=password id="password-input" placeholder="Password" name="password"
        		style="border-radius: 10px;	border: none; text-indent: 20px;"></input>
				<input type="submit" id="login-button" class="index-buttons" value="Log In"/>
			</form>
			
			
		</div>
		<input type="submit" id="signup-button" class="index-buttons" value="Sign Up" />
	</div>
	
	
			
			<div class="photo-view">
			<!--  <a href="index.jsp" class="back-button"style="color: black;">Back</a>-->
			<img class="photo-big" src="dummyphoto.png"/>
				<div class="photo-info">
					<p style="font-size: 30px; margin-bottom: 0px;">Machine gun</p>
					<p style="font-size: 15px; margin-top: 0px; margin-left: 2px;">by <a href="user-profile-ur.jsp">sophiarivera</a></p>
					<p class="photo-desc">This is a description of this photo blah blah blah</p>
					<p>#bangbang</p>
				
				</div>
				
			</div>
				
		
</body>
</html>