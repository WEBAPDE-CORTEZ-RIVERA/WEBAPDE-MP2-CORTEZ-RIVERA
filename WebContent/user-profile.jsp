<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        
       
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
        <script src = "jquery-3.2.1.js"></script>
        
        <title>${sessionScope.sessionun}</title>
        
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
            
            $(".viewmore").click(function(){
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
			<div class="header-search-2">
				<!-- 
				<form action="search" method="POST" class="search-form-2">
					<div id="box"></div>
        			<input id="txt" type="text" name="search" placeholder="Search photos by tags" />
					<input type="submit" class="index-buttons" id="search-button" value="Search"/>
					<!-- <input type="text" placeholder="Search tags" name="search" id="search-bar"/>
					<input type="submit" class="index-buttons" id="search-button" value="Search"/> 
				</form>-->
				
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
		<form action="viewphoto" method="POST">
			<div class="home-header-text">My Public Photos</div>
			<div class="photo-container-profile">
				<div class="photo-item-container">
				
				<!-- The Modal -->
				<div id="myModal" class="modal">
				
				  <!-- Modal content -->
				  <div class="modal-content">
				    <span class="close">&times;</span>
				    <p>Some text in the Modal..</p>
				  </div>
				
				</div>
					
					 <!-- <a id="pls" tabindex="1005" href="#"  onclick="openDialog();" onMouseOver="window.status='Launch Help Window'; return true" onMouseOut ="window.status='';
					 return true"><span class="WhiteBody"><img class="img-3" src="dummyphoto.png"/></span></a> -->
					
					<!-- <a href="#" data-toggle="modal" data-target="#myModal"><img class="img-3" src="dummyphoto.png"/></a> -->
        			
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewPhotoReg.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					
					<!-- <a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="viewphoto"><img class="img-3" src="dummyphoto.png"/></a> 
					-->
					
				</div>
			</div>
		</form>
		<!-- <form action="viewmuserpub" method="POST"></form> -->
			<input type="submit" value="View More" class="index-buttons viewmore">
		
		<form action="privatephoto" method="POST">
			<div class="home-header-text">Shared With Others</div>
			<div class="photo-container-profile">
				<div class="photo-item-container">
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					<a href="share.jsp"><img class="img-3" src="dummyphoto.png"/></a>
					
				</div>
			</div>
		</form>
		<!-- <form action="viewmuserpriv" method="POST"></form> -->
			<input type="submit" value="View More" class="index-buttons viewmore">
		
	</div>
	
	

	<script>
	// Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal
	var btn = document.getElementsByClassName("modalpls");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks on the button, open the modal 
	btn.onclick = function() {
	    modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	    modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
	</script>
	 
	
</body>
</html>