<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
					our <span>shop</span>
				</h2>
			</div>
		</div>
		<section class=carttype02>
			<div class=container>
				<div class=row>
					<div class="cartHeader clearfix">
						<h1 class=logo>
							<a href=index.html><img src=images/logo.png alt=image></a>
						</h1>
						<div class=orderId>
							<div>
								<p>
									your order id is <span>nyhsak01</span>
								</p>
								<p class=datetime>monday 22nd April 2015</p>
							</div>
						</div>
					</div>
					<div class=cartBody>
						<div class="heading clearfix">
							<h5>confirm your order</h5>
							<p>
								you have selected <span class="red cartitems"></span> product
							</p>
						</div>
						<c:forEach items="${sessionScope.addToCart}" var="v">
						${v.productId.productName}
						<ul  id=cartItemsType2></ul>
						</c:forEach>
						<div class=cart-meta>
							<div class=clearfix>
								<div class=item-content>
									<div>
										<h4>your total order value is</h4>
										<p>after added all tax</p>
									</div>
								</div>
								<div class=item-price>
									<span id=carttotal>$44</span>
								</div>
							</div>
						</div>
						<div class=mail-cart>
							<h3>
								<span>your</span> details
							</h3>
							<form data-parsley-validate="" name=contact
								class="formcontact clearfix">
								<div class=form-group>
									<input type=text class=form-control name=name placeholder=Name
										required="" data-parsley-required-message="please insert Name">
								</div>
								<div class=form-group>
									<input type=text class=form-control name=phone
										placeholder=Phone required=""
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
								<button type=submit id=send>order now</button>
								<div class=checkbox>
									<label><input type=checkbox>Confirm and Proceed</label>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<%@include file="footer.jsp" %>
	</div>
	<script src=js/vendor/vendor.js></script>
	<script src=js/main.js></script>
</body>
<!-- Mirrored from 0effortthemes.com/soccerclubv2/shopcart02.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2016 13:04:54 GMT -->
</html>