<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<title>teampuyat</title>
</head>
<body>
	<div class="header">
		<div class="header-left">
			<form action="welcome" method="POST">
				<input type="submit" class="titles" id="welcome-link" name="welcompage" value="shareputo">
			</form>
		</div>
		
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
				<form action="search" method="POST" class="search-form-2">
					<input type="text" placeholder="Search tags" name="search" id="search-bar"/>
					<input type="submit" class="index-buttons" id="search-button" value="Search"/>
				</form>
			</div><br><br><br>
		<div class="user-info">
			<img class="img" src="profile.jpg"/>
			<div class="user-info-header">
				<form action="userprofile2" method="POST">
					<input type="submit" class="profile-header-text" name="loggedin" value="teampuyat">
				</form>
				<div class="profile-desc-text">i miss sleeping 8 hours a day :(</div>
			</div>
		</div>
		<form action="publicphoto" method="POST">
			<div class="home-header-text">Public Photos</div>
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
				</div>
			</div>
		</form>
		<form action="viewmuserpub2" method="POST">
			<input type="submit" value="View More" class="index-buttons">
		</form>
	</div>
	
	
</body>
</html>