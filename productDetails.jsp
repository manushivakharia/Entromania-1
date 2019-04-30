<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Mirrored from 0effortthemes.com/soccerclubv2/product-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2016 13:05:02 GMT -->
<head>
<meta charset=utf-8>
<meta name=description content="">
<meta name=viewport content="width=device-width, initial-scale=1">
<title>EntroMania</title>
<link rel="shortcut icon" href=favicon.ico>
<link rel=stylesheet href=vendor.css>
<link rel=stylesheet href=style.css>
<link rel=stylesheet type=text/css href=css/layerslider.css>
<script src=js/vendor/modernizr.js></script>
</head>
<body>
	<!--[if lt IE 10]>
 <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
 <![endif]-->
	<div class=wrapper>
		<%@include file="header.jsp" %>
		<div class=innerbannerwrap>
			<div class=content></div>
			<div class=innerbanner>
				<h2 class=bannerHeadline>
					product <span>details</span>
				</h2>
			</div>
		</div>
		<section class=shopDpage>
			<div class=container>
				<div class=row>
					<h2 class="heading small">
						best soccer <span>Accessories shop</span>
					</h2>
					<p class=headParagraph>Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Nihil debitis mollitia qui libero voluptate
						ratione, molestias! Necessitatibus voluptatem temporibus
						doloremque non.</p>
					<div class=shop-wrap>
						<div class=product-image-wrap>
							<div class=p_wrap>
								<div class="product-image active" id=product01>
									<img src=images/product/shoesBig01.png alt=image>
								</div>
								<div class=product-image id=product02>
									<img src=images/product/shoesBig02.png alt=image>
								</div>
								<div class=product-image id=product03>
									<img src=images/product/shoesBig03.png alt=image>
								</div>
								<div class=product-image id=product04>
									<img src=images/product/shoesBig04.png alt=image>
								</div>
								<div class=product-image id=product05>
									<img src=images/product/shoesBig05.png alt=image>
								</div>
							</div>
							<div class=wrap-slide>
								<h5>select color</h5>
								<div>
									<a class=prvProduct></a> <a class=nxtProduct></a>
									<ul class="product-details-slider clearfix">
										<li class=active><a href=#product01><img
												src=images/product/shoe01.jpg alt=image></a></li>
										<li><a href=#product02><img
												src=images/product/shoe02.jpg alt=image></a></li>
										<li><a href=#product03><img
												src=images/product/shoe03.jpg alt=image></a></li>
										<li><a href=#product04><img
												src=images/product/shoe04.jpg alt=image></a></li>
										<li><a href=#product05><img
												src=images/product/shoes05.png alt=image></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class=product-content>
							<h4>soccer club 99 shoes</h4>
							<ul class="product-content01 clearfix">
								<li><span><i class="fa fa-star reviewGood"></i> <i
										class="fa fa-star reviewGood"></i> <i
										class="fa fa-star reviewGood"></i> <i class="fa fa-star"></i>
										<i class="fa fa-star"></i></span> <span>38</span> <span>12
										reviews</span></li>
								<li>write a REVIEW</li>
								<li><i class="fa fa-heart"></i><span>Add to Wishlist</span></li>
							</ul>
							<div class="rate-product clearfix">
								<div class=rate-item>
									<div>
										$299.00 <span>42% off</span>
									</div>
									<p>seling price (Free delivery)</p>
								</div>
								<div class=item-size>
									<h6>Select Size</h6>
									<ul>
										<li>6</li>
										<li>7</li>
										<li>8</li>
									</ul>
									<p>
										Size Chat <span></span>
									</p>
								</div>
							</div>
							<a href=# class="btn-addcart addToCart">add to cart</a> <a href=#
								class=btn-blackLight>Buy Now</a>
							<div class=product-list>
								<h5>product details</h5>
								<ul class=clearfix>
									<li>Cash returns</li>
									<li>pay securley</li>
									<li>brand new</li>
									<li>30 day exchange guarantee</li>
									<li>100% original</li>
									<li>free delivery</li>
								</ul>
							</div>
						</div>
					</div>
					<div class=shop-feedback>
						<h5>
							customer feedback <a class=feedbackCust><i
								class="fa fa-caret-down"></i></a>
						</h5>
						<form data-parsley-validate="" name=contact
							class="feedbackContact formcontact clearfix">
							<div class=form-group>
								<input type=text class=form-control name=name placeholder=Name
									required="" data-parsley-required-message="please insert Name">
							</div>
							<div class=form-group>
								<input type=text class=form-control name=phone placeholder=Phone
									required=""
									data-parsley-required-message="please insert Phone No">
							</div>
							<div class=form-group>
								<input type=text class=form-control name=subject
									placeholder=subject required=""
									data-parsley-required-message="please insert subject">
							</div>
							<div class=form-group>
								<input type=email class=form-control name=email
									placeholder=Email required=""
									data-parsley-required-message="please insert Email">
							</div>
							<div class=form-group1>
								<textarea class="form-control textas" name=comment
									placeholder=Message required="" data-parsley-minlength=20
									data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.."
									data-parsley-validation-threshold=10 data-parsley-maxlength=100></textarea>
							</div>
							<button type=submit class=btn-blackLight id=send>submit</button>
							<div class=form-message></div>
						</form>
					</div>
				</div>
			</div>
		</section>
		<%@include file="footer.jsp" %>
	</div>
	<script src=js/vendor/vendor.js></script>
	<script src=js/main.js></script>
</body>
<!-- Mirrored from 0effortthemes.com/soccerclubv2/product-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2016 13:05:59 GMT -->
</html>