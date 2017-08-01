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
	
		<div class="center-container-home">
		<div class="header-search-2">
				
			</div><br><br><br>
		<div class="bckgrndmod"
			style="display: none; /* Hidden by default */
    		position: fixed; /* Stay in place */
		    z-index: 1; /* Sit on top */
		    left: 0;
		    top: 0;
		    width: 100%; /* Full width */
		    height: 100%; /* Full height */
		    overflow: auto; /* Enable scroll if needed */
		    background-color: rgb(0,0,0); /* Fallback color */
		    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */"
		></div>
		<div class="user-form2" 
		
			style="position: fixed; /* Stay in place */
					margin-left: 0px;
				   z-index: 1;
				   margin-right: 0px;
				   right: 513px;
				   top: 60px; 
				   display:none">
				<span class="close-reg" style="float: right; font-size: 20px; color: black;">X</span>
				<div id="register-header">get started.</div>
				<div id="register-subheader">Sign up to see more photos</div>
				<div class="line"></div>
				<form action="register" method="POST">
					<input type="text" class="input-text" name="username" placeholder="Username"/><br>
					<input type="password" class="input-text" name="password" placeholder="Password"/><br>
					<input type="password" class="input-text" name="password-verify" placeholder="Verify password"/><br>
					<input type="text" class="input-text" name="description" placeholder="Description"/><br>
					<input type="submit" class="index-buttons" id="register-button" value="Register"/>
				</form>
			</div> 
			
			<div class="home-header-text">Shared on shareputo</div>
			<div class="photo-container-profile">
				<div class="photo-item-container">
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoUnreg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					
					
				</div>
				
				<!-- <form action="viewmoreunreg" method="POST"> </form>-->
						<input type="submit" value="View More" class="index-buttons" id="viewmoreunregb" style="margin-left: 35%;">
					
			</div>
		</div>	
		
	
		
		<!-- 
		<div class="right-side">
			<div class="user-form">
				<div id="register-header">get started.</div>
				<div id="register-subheader">Sign up to see more photos</div>
				<div class="line"></div>
				<form action="register" method="POST">
					<input type="text" class="input-text" name="username" placeholder="Username"/><br>
					<input type="password" class="input-text" name="password" placeholder="Password"/><br>
					<input type="password" class="input-text" name="password-verify" placeholder="Verify password"/><br>
					<input type="text" class="input-text" name="description" placeholder="Description"/><br>
					<input type="submit" class="index-buttons" id="register-button" value="Register"/>
				</form>
			</div>
		</div>
		
		 -->
		
     
      
</body>
</html>