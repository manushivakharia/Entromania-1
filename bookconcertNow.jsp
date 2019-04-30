<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Mirrored from 0effortthemes.com/soccerclubv2/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2016 13:04:40 GMT -->
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
		<section class="map_wrapper clearfix">
			<div id=map-section></div>
			<div class=container>
				<div class=row>
					<div class=contact_form>
						<h2 class=heading>
							Book <span>your tickets</span>
						</h2>
						<p class=headParagraph></p>
						<form action="<%=request.getContextPath()%>/conticketCo" method="post" name=contact class="formcontact clearfix">
							<div class=form-group>
								<input type=text class=form-control name="name" placeholder=Name
									required="" data-parsley-required-message="please insert Name">
							</div>
							<div class=form-group>
								<input type=text class=form-control name="phone" placeholder=Phone
									required=""
									data-parsley-required-message="please insert Phone No">
							</div>
							
							<div class=form-group>
								<input type=email class=form-control name="email"
									placeholder=Email required=""
									data-parsley-required-message="please insert Email">
							</div>
							<div class=form-group1>	
								<textarea class="form-control textas" name="address"
									placeholder=Address required="" data-parsley-minlength=20
									data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.."
									data-parsley-validation-threshold=10 data-parsley-maxlength=100></textarea>
							</div>
							<input type="hidden" name="flag" value="insertall">
							 <button type="submit"  class="btn btn-red">Book Now</button> 
				</form>				
						
					</div>
				</div>
			</div>
			
		</section>
		<%@include file="footer.jsp" %>
	</div>
	<script src=js/vendor/vendor.js></script>
	<script src=js/main.js></script>
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
</body>
<!-- Mirrored from 0effortthemes.com/soccerclubv2/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2016 13:04:40 GMT -->
</html>