<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="stylesheet.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>View Photo</title>
	<script>
	 $(document).ready(function(){
     	$('#tagpls').click(function(e){
     		console.log("skdhfouaef");
     		$(".tagpop").fadeIn("slow"); 
     		$(".tagpop").css("display","");
     		closeAfter(2);
     		//$(".bckgrndmod").css("display","");
         });
     	//$('.close-reg').click(function(e){
     	//	console.log("cloooose");
        //     $(".user-form2").css("display","none");
        //     $(".bckgrndmod").css("display","none");
        // });
     	
     	$('#sharepls').click(function(e){
     		console.log("skdhfouaef");
     		$(".sharepop").fadeIn("slow"); 
     		$(".sharepop").css("display","");
     		closeAfter(2);
     		//$(".bckgrndmod").css("display","");
         });
     	
     	function closeAfter(delay){
  		  if(delay == 0){
  			$(".tagpop").css("display","none");
  			$(".sharepop").css("display","none");
  		  } 
  			
  		  else 
  		    setTimeout(function(){closeAfter(delay-1)}, 1000);
  		  
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
			
			
			
			<div class="photo-view">
			<!-- <a href="user-profile.jsp" class="back-button">Back</a> -->
			<img class="photo-big" src="dummyphoto.png"/>
				<div class="photo-info">
					<p style="font-size: 30px; margin-bottom: 0px;">Title of the picture</p>
					<p style="font-size: 15px; margin-top: 0px; margin-left: 2px;">by<a href="user-profile.jsp"> admin</a></p>
					<p class="photo-desc">Description</p>
					<p>#stuff</p>
					<!--  <form action="tagphoto" method="POST">	</form>-->
					<input type="text" value="" style="width: 50px; height: 10px;"/>
					<input type="submit" value="Add tag" id="tagpls" class="index-buttons" style="width: 60px"/>
					
					<p></p>
					<!-- <form action="sharephoto" method="POST"></form>	 -->
					Share with: <input type="text" value="" placeholder="Username"/>
					<input type="submit" value="Share" id="sharepls" class="index-buttons" style="width: 50px"/>
				
				</div>
				
			</div>
			
			<div class="tagpop" 
		
			style="position: fixed; /* Stay in place */
					margin: 0px;
					padding: 0px;
					z-index: 1;
				   display:none;
				   width:100%;
				   height: 7.5%;
				   background-color:#557c83;
				   top: 92.5%;
				   ">
				
				<div id="register-subheader"
				style="
				color: white;
				margin-top: 8px;
				margin-left: 5px;
				
				"
				>Tag added!</div>
				
			</div> 
			
			<div class="sharepop" 
		
			style="position: fixed; /* Stay in place */
					margin: 0px;
					padding: 0px;
					z-index: 1;
				   display:none;
				   width:100%;
				   height: 7.5%;
				   background-color:#557c83;
				   top: 92.5%;
				   ">
				
				<div id="register-subheader"
				style="
				color: white;
				margin-top: 8px;
				margin-left: 5px;
				
				"
				>Shared with sophiarivera</div>
				
			</div> 
</body>
</html>