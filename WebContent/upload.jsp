<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>Upload Photo</title>
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
					<input type="submit" class="home-buttons" id="username-link" name="loggedin" value=${sessionScope.sessionun}>
				</form>
			</div>
		</div>
		
		<div class="center-container-home">
			<div class="home-header-text" id="upload-label">Upload Photo</div>
			<div class="upload-container">
				<form action="uploadphoto" method="POST">
					<div class="upload-left">
						File location <input type="file" id="file-chooser" name="fileloc" accept='.png, .jpg, .jpeg, .tiff'/>
						Title <input type="text" class="input-text-2" name="title"/>
						Description <input type="text" class="description-text" name="description"/>
						Tags <input type="text" class="input-text-2" name="tags"/>
						View <select name="view" size="1" >
							<option value="public" selected>Public</option>
               				<option value="private">Private</option>
            			</select>
            			<input type="submit" class="index-buttons" value="Upload">
					</div>
				</form>
				</div>
			</div>
		</div>
    </body>
</html>
