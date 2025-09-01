<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP PAGE</title>
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</head>
<body style="background: url(images/background.jpg);">
	<div class="container">
		<div class="row">
			<div class="col m6 offset-m3">
				<div class="card">
					<div class="card-content">

						<h3 style="margin-top:10px;">Register here!!</h3>
						<div class="form center-align">
							<form action="Register" method="post">
								<input type="text" name="user_name"placeholder="Enter user name"> 
								<input type="password" name="user_password" placeholder="Enter user password">
								<input type="email" name="user_email" placeholder="Enter user email">
								<button type="submit" class="btn blue accent-3">submit</button>
								

							</form>

						</div>
								
   						<div class="loader center-align" style="margin-top:10px; display: none;">
   						
   

  <div class="preloader-wrapper small active">
    <div class="spinner-layer spinner-blue-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>
        
   						
   						
   						
   						<h5 style="margin-top:10px;">Please wait...</h5>
 
				</div>				
								
					</div>

				</div>

			</div>
		</div>
	</div>
	 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  
  
  <script>
$(document).ready(function(){
    console.log("page is ready...");
});
</script>

</body>
</html>