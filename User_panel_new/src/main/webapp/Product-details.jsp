<!DOCTYPE html>
<html lang="zxx">
<%@page import="java.util.*"%>
<%@page import="com.codeo.shop.entity.Product"%>
<%@page import="com.codeo.shop.entity.Category"%>
<%@page import="com.codeo.shop.Dao.CategoryDao"%>
<%@page import="com.codeo.shop.Dao.ProductDaoImp"%>
<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Online Electrical Shopee</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>


	<jsp:include page="header.jsp" />

	<!-- Hero Section Begin -->
	<section class="hero hero-normal">
		<div class="container">
			<div class="row">
				
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">

								<input type="text" placeholder="What do yo u need?">
								<button type="submit" class="site-btn">SEARCH</button>
							</form>
						</div>
						<div class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h5>+65 11.188.888</h5>
								<span>support 24/7 time</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg" data-setbg="img/Name-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
					<div class="breadcrumb__option">
							<a href="./index.jsp">Home</a> <a href="#">Electrical</a> <span>Vegetableâs
								Package</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	         <%   //java code
                           CategoryDao categorydao = new CategoryDao(); 
                                List<Category> clist = categorydao.getCategoryList();
                                ProductDaoImp productdao = new ProductDaoImp();  
                                
                                String prod = request.getParameter("product");

                                List<Product> prodlist = null;
                                List<Product> prodlistbycat = null;
                                 
                            if(prod==null||prod.trim().equals("all"))
                             {
                            prodlist = productdao.getAllProducts();
                             }
                           else {
                            	  
                               int id =Integer.parseInt(prod.trim());
                               
                               prodlist = productdao.getAllProductsForDetails(id);
                               
                         } 
         %>


	<!-- Product Details Section Begin -->
	<section class="product-details spad">

		<% for(Product product:prodlist)
                    {  %>
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="product__details__pic">
						<div class="product__details__pic__item">
							<!-- <img class="product__details__pic__item--large"
                                src="img/product/details/product-details-1.jpg" alt="">  -->

							<img class="product__details__pic__item--large"
								src="img/latest-product/<%=product.getProd_imageName() %>"
								alt="">

						</div>
						<!--  <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="img/product/details/product-details-2.jpg"
                                src="img/product/details/thumb-1.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-3.jpg"
                                src="img/product/details/thumb-2.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-5.jpg"
                                src="img/product/details/thumb-3.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-4.jpg"
                                src="img/product/details/thumb-4.jpg" alt="">
                        </div>   -->

					</div>
				</div>
				<!--   complete here  -->
				<div class="col-lg-6 col-md-6">
					<div class="product__details__text">
						<h3><%=product.getProd_name() %></h3>
						<div class="product__details__rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-half-o"></i> <span>(18 reviews)</span>
						</div>
						<div class="product__details__price"><%=product.getPriceAfterDiscount() %>/-
							<span
								style="font-size: 15px; font-style: italic; text-decoration: line-through; color: red">
								<%=product.getProd_price() %> , <%=product.getProd_discount() %>
								off
							</span>
						</div>
						<p><%=product.getProd_description() %>
						<div class="product__details__quantity">
							<div class="quantity">
								<div class="pro-qty">
									<input type="text" value="1">
								</div>
							</div>
						</div>
						<a href="#" class="primary-btn">ADD TO CARD</a>	  <a href="shoping-cart.jsp" style="height:50px; width:70px;" class="btn btn-warning btn-sm mt-1">  View CART </a>
								 <a href="#"
							class="heart-icon"><span class="icon_heart_alt"></span></a>
						<ul>
							<li><b>Availability</b> <span>In Stock</span></li>
							<li><b>Shipping</b> <span>01 day shipping. <samp>Free
										pickup today</samp></span></li>

							<li><b>Share on</b>
								<div class="share">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-instagram"></i></a> <a href="#"><i
										class="fa fa-pinterest"></i></a>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Description</a>
							</li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab" aria-selected="false">Information</a>
							</li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-3" role="tab" aria-selected="false">Reviews <span>(1)</span></a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Products Infomation</h6>
									<p><%=product.getProd_description() %>
									</p>
								</div>
							</div>
							<!--   <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus.
                                        Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam
                                        sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo
                                        eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat.
                                        Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent
                                        sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac
                                        diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante
                                        ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                                        Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.
                                        Proin eget tortor risus.</p>
                                    <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem
                                        ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet
                                        elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum
                                        porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus
                                        nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus.
                                        Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam
                                        sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo
                                        eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat.
                                        Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent
                                        sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac
                                        diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante
                                        ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                                        Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.
                                        Proin eget tortor risus.</p>
                                </div>
                            </div>    -->
						</div>
					</div>
					
					<%   } 
					%>
		
				</div>
			</div>
		</div>
	</section>
	<!-- Product Details Section End -->

	<!-- Related Product Section Begin  -->
		
		
	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>Related Product</h2>
					</div>
					
				</div>
			</div>

			<div class="row featured__filter">
				<%   
                    // List<Product> list = productdao.getAllProducts();
                     for(Product product:prodlist)
                    { 
                    	 int cid=product.getCid();
                    	
                              List<Product> catprodlist = null;
                               catprodlist = productdao.getAllProductsById(cid);
                               for(Product catproduct:catprodlist)
                               {
                                       
                           
                    	%>
                    	
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
				<div style="border: 1px solid grey; " class="mt-5">
					<div class="featured__item m-4">
						<div  class="featured__item__pic set-bg"
							 style="background-image: url(&quot;img/latest-product/<%=catproduct.getProd_imageName() %>&quot;);">
								<img style="max-height: 200px; height:auto; " class="center" src="img/latest-product/<%=catproduct.getProd_imageName() %>">
							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
							</ul>
						</div>

						<div class="featured__item__text">
							<h5>
								<a href="Product-details.jsp?product=<%=catproduct.getId() %>"
									style="color: black"><%=catproduct.getProd_name() %></a>
							</h5>
							<!--   <h6><%=catproduct.getProd_description() %></h6> -->
							<!--  <h5> <span>&#8377; </span><%=catproduct.getProd_price() %> </h5> <br> -->
							<button type="button" class="btn btn-light">
								<h5>
									&#8377;<%=catproduct.getPriceAfterDiscount() %>/- <span
										style="font-size: 15px; font-style: italic; text-decoration: line-through; color: red">
										<%=product.getProd_price() %> ,<%=catproduct.getProd_discount() %>
										off
									</span>
								</h5>
							</button>
							
							<a href="#?id=<%=catproduct.getId() %>" class="primary-btn" style="background-color: #87CEEB"  onMouseOver="this.style.backgroundColor='#808080'"
								onMouseOut="this.style.backgroundColor='#87CEEB'">
								 <i class="fa fa-shopping-cart"></i>ADD TO CARD </a>
								 	 <div > <a href="shoping-cart.jsp" class="btn btn-warning btn-sm mt-1">  View CART </a></div>
								
						</div>
					</div>
					</div>
				</div>

				<%}} %>

			</div>

		</div>
	</section>
	 <!--  </section>  -->
	<!-- Related Product Section End -->

	<jsp:include page="footer.html" />

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>


</body>

</html>