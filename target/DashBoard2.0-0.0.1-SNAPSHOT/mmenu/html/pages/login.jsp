<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<title>Login | Everis</title>
<link rel="stylesheet" href="../../../global/mycss/login.css">
</head>

<body>

	<div class="main">

		<div class="container">
			<center>
				<div class="middle">
					<div id="login">

						<form action="../../../Sessao" method="POST">

							<fieldset class="clearfix">

								<p>
									<span class="fa fa-user"> <img
										src="../../../global/img/user.png" width="45" height="45">
									</span><input type="text" name="usuario" Placeholder="Username"
										required>
								</p>
								<!-- JS because of IE support; better: placeholder="Username" -->
								<p>
									<span class="fa fa-lock"> <img
										src="../../../global/img/password.png" width="45" height="45">
									</span><input type="password" name="senha" Placeholder="Password"
										required>
								</p>
								<!-- JS because of IE support; better: placeholder="Password" -->

								<div>
									<span
										style="width: 48%; text-align: left; display: inline-block;"><a
										class="small-text" href="#">Forgot password?</a></span> <span
										style="width: 50%; text-align: right; display: inline-block;"><input
										type="submit" value="Sign In"></span>
								</div>

							</fieldset>
							<div class="clearfix"></div>
						</form>

						<div class="clearfix"></div>

					</div>
					<!-- end login -->
					<div class="logo">
						<img id="everis" src="../../../global/img/logo.png">
						<div class="clearfix"></div>
					</div>

				</div>
			</center>
		</div>

	</div>
</body>
</html>