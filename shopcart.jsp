<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Mirrored from 0effortthemes.com/soccerclubv2/shopcart.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2016 12:59:39 GMT -->
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
		<section class=cartwrap>
			<div class=cartshop>
				<div class=bg-red></div>
				<div class=container>
					<div class=row>
						<div class=modal-body>
							<div class="cartHeader clearfix">
								<div class=header01>
									<h4>your basket</h4>
								</div>
								<div class=header02>
									<h4>
										<span>you have selected <span class=cartitems></span>
											product
										</span> <a href=#><i class="fa fa-cart-plus"></i> <span
											class=cartitems>1</span></a>
									</h4>
									<p>your order ID is 2221</p>
									<p class=datetime></p>
								</div>
							</div>
							<c:forEach items="${sessionScope.addToCart}" var="v">
							<div class="card-item clearfix">
								<div>
									<div class=big-content>
										<h4><img height="100px" width="100px" src="${pageContext.request.contextPath }/doc/${v.attachmentVo.encryptedFileName}"></h4>
									</div>
									<div class="big-content medium-content">
										<h4>${v.productId.productName}</h4>
									</div>
									<div class="big-content small-content">
										<h4>${v.productId.productPrice }</h4>
									</div>
								</div>
								<div id=cartItems></div>
								<div class="card-item cart-total clearfix"></div>
								<div class="card-item clearfix">
									<div class=big-content>
										<h4>select destination country</h4>
										<select class=form-control><option>India</option>
											<option>USA</option></select>
									</div>
									<div class=big-content>
										<h4>select delivery method</h4>
										<select class=form-control><option>Standard
												Delivery - $299.00 (7 days)</option>
											<option>Fast Delivery - $199.00 (7 days)</option></select>
									</div>
								</div>
								<div class="card-item cart-total clearfix">
									<div class="big-content medium-content">
										<h4>total cost</h4>
									</div>
									<div class="big-content small-content">
										<h4 id=carttotal>$210</h4>
									</div>
								</div>
							</div>
							</c:forEach>
							<div class=modal-footer>
								<button class=btn-red>order now</button>
							</div>
							<div class=center>
								<a href=shopcart02.html class="btn btn-red">Check out
									another Cart page design</a>
							</div>
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
<!-- Mirrored from 0effortthemes.com/soccerclubv2/shopcart.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2016 12:59:40 GMT -->
</html>