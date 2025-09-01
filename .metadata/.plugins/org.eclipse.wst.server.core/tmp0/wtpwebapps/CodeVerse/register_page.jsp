<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register_page</title>

	<!-- CSS -->
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">
<link href="css/myStyle.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
        .primary_background{
        
        background-color: #00695f; /* Custom dark greenish-teal */
  color: black;
        
        }
        .banner-background{
        
                  clip-path:polygon(0 0, 100% 0, 100% 20%, 100% 86%, 78% 100%, 20% 94%, 0 100%, 0% 20%);       
        }

</style>
</head>
<body>
	<%@include file="normal_navBar.jsp" %>
	<main class="primary_background banner-background" style="padding-bottom:80px;">
		<div class="container">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header primary_background text-white text-center" style="padding-bottom:5px;">
					<span class="fa fa-user-plus fa-2x"></span><br>
					Register here
					</div>
					<div class="card-body">
						<form id= "reg-form" action ="register1" method= "POST">
							<div class="form-group">
							    <label for="user_name">User name</label>
							    <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
							  </div>	
						
							  <div class="form-group">
							    <label for="exampleInputEmail1">Email address</label>
							    <input name= "user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email">
							    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
							  </div>
							  
							  <div class="form-group">
							    <label for="gender">Select Gender</label><br>
							    <input type="radio" id="male" name="gender" value="male" >Male
							    <input type="radio" id="female" name="gender" value="female">Female
							  </div>
							  
							  <div class="form-group">
							     <textarea name="about" class="form-control" id="" rows="5" placeholder="Enter something about yourself"></textarea>
							  
							  </div>
							  
							  <div class="form-group">
							    <label for="exampleInputPassword1">Password</label>
							    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter password">
							  </div>
							  
							  <div class="form-group form-check">
							    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
							    <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
							  </div>
							  <br>
							  <div class="coontainer" align="center" text="center" id="loader" style= "display:none;">
							  
							  <span class="fa fa-refresh fa-spin"></span>
							  <h5>Please wait...!</h5>
							  </div>
							  <button id="submt-btn" type="submit" class="btn btn-primary">Register</button>
							</form>
					</div>
					<div class="card-footer">
					</div>
				
				</div>				
			
			</div>
		
		</div>
	
	</main>
    <!-- JavaScripts -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <script src="js/myjs.js" type="text/javascript"></script>
   <!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- SweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
<script>
    $(document).ready(function () {
        console.log("loaded....");

        $('#reg-form').on('submit', function (event) {
            event.preventDefault(); // Prevent default form submission
				
            $("#submt-btn").hide();
            $("#loader").show();
            
            let form = new FormData(this); // Create FormData object

            // Send data to Register_Servlet
            $.ajax({
                url: "register1",
                type: 'POST',
                data: form,  // Attach form data
                processData: false,
                contentType: false,
                success: function (data, textStatus, jqXHR) {
                    console.log("Success:", data);
                    
                    $("#submt-btn").show();
                    $("#loader").hide();
                    Swal.fire({
                        title: "Registration Successful!...",
                        icon: "success",
                        confirmButtonText: "OK"
                        .then(value => {
                        	window.location="login_page.jsp"
                        });

                },
                
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log("Error:", jqXHR);
                    
                    $("#submt-btn").show();
                    $("#loader").hide();
                    Swal.fire({
                        title: "Something went wrong!..try again");
                        });
                },
                processData:false
                contentType:false
             
            });
        });
    });
</script>

</body>
</html>