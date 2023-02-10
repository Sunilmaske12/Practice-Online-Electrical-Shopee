 <%
 HttpSession session2=request.getSession();
String user_name1=(String)session2.getAttribute("UserName");
String user_email1=(String)session2.getAttribute("UserEmail");	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="header__top__left">
							<ul>
								<li><i class="fa fa-envelope"></i> sanjaybangre@gmail.com</li>
								<li>Free Shipping for all Order of Rs 999.00+</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="header__top__right">
							<div class="header__top__right__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-linkedin"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a>
							</div>
							
							<% if(user_name1==null){ %>
							<div class="header__top__right_register">
								<a href="loginfrom.jsp"><i class="fa fa-user"></i> Login</a>
								
								<a href="RegistrationForm.jsp"><i class="fa fa-user"></i>
									Register</a>
									</div>
								<% } else{ %>
								
								<a href="loginfrom.jsp"><i class="fa fa-user"></i> LogOut</a>
								
								<% }  %>
							
							
							
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="header__logo">
						<a href="./index.jsp"><img src="img/N_logo.jpg"
							style="height: 50px; width: 200px;" alt=""></a>
					</div>
				</div>
				<div class="col-lg-6">
					<nav class="header__menu">
						<ul>

							<li><a href="./index.jsp">Home</a></li>
							<li><a href="shop-grid.jsp">Shop</a></li>
							<li><a href="#">Blog</a></li>
							<li><a href="./contact.jsp">Contact</a></li>
							<li><a href="#">Pages</a>
								<ul class="header__menu__dropdown">
									<li><a href="#">Shop Details</a></li>
									<li><a href="#">Blog Details</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
				<div class="col-lg-3">
					<div class="header__cart">
						<ul>
							<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
							<li><a href="./shoping-cart.jsp"><i
									class="fa fa-shopping-bag"></i> <span>3</span></a></li>
						</ul>
						<div class="header__cart__price">
							item: <span>$150.00</span>
						</div>
					</div>
				</div>
			</div>
			<div class="humberger__open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
	</header>
	<!-- Header Section End -->



</body>
</html>