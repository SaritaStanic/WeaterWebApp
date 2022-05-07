<?php
include('action-login_page.php'); // Includes Login Script

if(isset($_SESSION['login_user'])){
header("location: profile.php");
}
?>

<!DOCTYPE html>
<html>
 <head>

<!--<meta charset="UTF-8">-->
<!--<meta http-equiv="X-UA-Compatible" content="IE=egde">-->
<meta name ="viewport" content="with=device-width,initial scale=1.0"> 
<title>Weather Web-App</title>
<script src="https://kit.fontawesome.com/14988f2aa2.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="style.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Anek+Tamil:
wdth,wght@100,300;100,500;106.4,484&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css">
 <!---------------------------- pre-header is the same for all pages --------------------------------------------------- --->	
 </head> 
	<body>
		<header>
		<section class="pre-header">
			<nav>
				<img class="logo" src="https://www.onlygfx.com/wp-content/uploads/2016/10/watercolor-cloud-8.png" alt="logo">
				<ul class="navigation">
					<li><a href="#">HOME</a> </li>
					<li><a href="#">ABOUT</a> </li>
					<li><a href="#">CONTACT</a> </li>
				</ul>
			</nav>
		</section>
		</header>
<!--- CLASS HEADER --------------------------------------------------------------------------------------------------------->
		<section class="login-header">
		
				<h1>Log in:</h1>
			
		</section>
<!-- END HEADER ------------------------------------------------------------------------------------------------------- --->
<!-- LOG IN FORM------------------------------------------------------------------------------------------------------- --->
		<section class="login-form">
			<div class="submition" >
				<!-- this part is confusing the server. image set as background is lost...-->
				

				<form action="action_page.php" method="post">
					<div>
						
					</div>
					<label for="username"> Username: </label>
					<input type="text" id="username" name="username"><br><br>
					<label for="pwd">Password:</label>
					<input type="password" id="pwd" name="pwd" minlength="8"><br><br>
					
					<button class=“login-button” type=“submit” onclick="validate()" value="LOGIN">Log in</button>
					<span><?php echo $error; ?></span>
				</form>

				<span><b class="note">Note : </b>For this demo use following username and password. <br/><b class="valid">User Name : Formget<br/>Password : formget#123</b></span>

			</div>

		</section>
<!--END LOG IN FORM----------------------------------------------------------------------------------------------------- --->
<!---------FOOTER is the same for all pages *no exception*------------------------------------------------------------ --->
		<section class="footer">
			<h4>
				About us
			</h4>
			<p>
				This was created for project purposes assessed by university authority. It is NOT intended for commercial use, 
				Intended for educational and personal purposes only. 
			</p>	
		
				<i class="fa-brands fa-facebook"></i>
				<i class="fa-brands fa-github"></i>
				<i class="fa-brands fa-instagram"></i>
				<i class="fa-brands fa-linkedin"></i>
		
			<p>Made with</p> <i class="fa-light fa-brain"></i> <p> by Sara Stanic &copy; </p>
		

		</section>
<!---------END FOOTER------------------------------------------------------------------------------------------------------------->
	</body>
</html>