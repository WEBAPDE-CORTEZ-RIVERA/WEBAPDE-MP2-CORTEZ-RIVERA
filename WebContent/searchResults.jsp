<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        
       
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
        <script src = "jquery-3.2.1.js"></script>
        
        <title>Shareputo</title>
        
        <script>
        $(document).ready(function(){
        	$('#signup-button').click(function(e){
        		console.log("skdhfouaef");
                $(".user-form2").css("display","");
                $(".bckgrndmod").css("display","");
            });
        	$('.close-reg').click(function(e){
        		console.log("cloooose");
                $(".user-form2").css("display","none");
                $(".bckgrndmod").css("display","none");
            });
        
        	var index = 0;
            
            $("#viewmoreunregb").click(function(){
                index +=15;
                console.log("Clicked!");
                getPics(index);
            });
            
            function getPics(index){
            	for(var orig=index; orig<(index + 15); orig++){
                    
            		
            		var new_photo = "<img class='img-3' src='dummyphoto.png' style='margin:6.75px;'>";
                    var new_link = document.createElement("a");
                   
                    new_link.setAttribute("href","viewPhotoUnreg.jsp");
                    new_link.innerHTML = new_photo;
                    
                    $(".photo-item-container").append(new_link);
                    
                    console.log(orig);
                }
            }
        
        });
        
        
        
        </script>
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
		<div class="header-search-2" style="width:100%; margin-left: 0px;">
		<!-- <a href="home.jsp" class="back-button"style=" color: black; margin-right: 95%;">Back</a> -->		
		</div><br><br><br>
		<div class="home-header-text">Seach Results for "bangbang"</div>
		<div class="photo-container-profile">
			<div class="photo-item-container">
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
				<a href="viewPhotoRegS.jsp"><img class="img-3" src="dummyphoto.png"/></a>
			</div>
			<input type="submit" value="View More" class="index-buttons" id="viewmoreunregb" style="margin-left: 35%;">
		</div>
	</div>
</body>
</html>