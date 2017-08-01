<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<title>${sessionScope.sessionun}</title>
</head>
<body>
	<div class="header">
		<div class="header-left">
			<form action="welcome" method="POST">
				<input type="submit" class="titles" id="welcome-link" name="welcompage" value="shareputo">
			</form>
		</div>
		<form action="search" method="POST" class="search-form-2">
					<div class="box_in"><button type="submit" class="search-button" value="Search"><img src="magni.png" class="magni"></button></div>
        			<input class="txt_in" type="text" name="search" placeholder="Search by tags" />
					
					
		</form>
		
		<div class="header-right" style="margin-left: 20px; width: 450px;">
			<form action="login" method="POST" class="login-form">
				<input type=text id="username-input" placeholder="Username" name="username"></input>
        		<input type=password id="password-input" placeholder="Password" name="password"></input>
				<input type="submit" id="login-button" class="index-buttons" value="Login"/>
			</form>
			
			
		</div>
		<input type="submit" id="signup-button" class="index-buttons" value="Sign Up" 
			style="
			
			margin-right: 50px; 
			width:150px; 
			height:25px; 
			margin-top: 1.8%;"/>
	</div>
	
	<div class="center-container-home">
			<div class="header-search-2">
				
			</div><br><br><br>
		<div class="user-info">
			<img class="img" src="profile.jpg"/>
			<div class="user-info-header">
				<form action="userprofile" method="POST">
					<input type="submit" class="profile-header-text" name="loggedin" value=${sessionScope.sessionun}>
				</form>
				<div class="profile-desc-text">${sessionScope.sessionds}</div>
			</div>
		</div>
		<form action="publicphoto" method="POST">
			<div class="home-header-text">All Public Photos</div>
			<div class="photo-container-profile">
				<div class="photo-item-container">
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
				</div>
			</div>
		</form>
	</div>
	
	
</body>
</html>