<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<title>Public Photos</title>
</head>
<body>
	<div class="header">
		<div class="header-left">
			<form action="welcome" method="POST">
				<input type="submit" class="titles" id="welcome-link" name="welcompage" value="shareputo">
			</form>
		</div>
		<form action="search" method="POST" class="search-form-2">
					<div class="box"><button type="submit" class="search-button" value="Search"><img src="magni.png" class="magni"></button></div>
        			<input class="txt" type="text" name="search" placeholder="Search by tags" />
					
					
		</form>
		<div class="header-right-home">
			<div class="home-buttons">
				<form action="logout" method="POST">
					<input type="submit" id="login-button" class="index-buttons" value="Log out"/>
				</form>
			</div>
			<div class="home-buttons">
				<form action="upload" method="POST">	
					<input type="submit" id="login-button" class="index-buttons" value="Upload photo"/>
				</form>
			</div>
			<form action="userprofile" method="POST">
				<input type="submit" class="home-buttons" id=username-link name="loggedin" value=${sessionScope.sessionun}>
			</form>
		</div>
	</div>
	
	<div class="center-container-home">
		<div class="header-search-2">
				
		</div><br><br><br>
		<div class="home-header-text">All Photos Shared with Me</div>
		<div class="photo-container-profile">
			<div class="photo-item-container">
				<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
			</div>
		</div>
	</div>
</body>
</html>