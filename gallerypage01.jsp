<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Mirrored from 0effortthemes.com/soccerclubv2/gallerypage01.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2016 12:59:56 GMT -->
<head>
<meta charset=utf-8>
<meta name=description content="">
<meta name=viewport content="width=device-width, initial-scale=1">
<title>Gallery</title>
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
					<span>gallery</span>
				</h2>
			</div>
		</div>
		<section class=innerpage_all_wrap>
			<div class=container>
				<ul class=galleryMenu id=menu>
					<li><a href=#menu class=selected>all item</a></li>
					<li><a href=#menu data-filter=.accessories class=selected>accessories</a></li>
					<li><a href=#menu data-filter=.player>players</a></li>
					<li><a href=#menu data-filter=.stadiums>stadiums</a></li>
				</ul>
				<div class=gallery>
					<div class=sk-cube-grid id=galleryLoader>
						<div class="sk-cube sk-cube1"></div>
						<div class="sk-cube sk-cube2"></div>
						<div class="sk-cube sk-cube3"></div>
						<div class="sk-cube sk-cube4"></div>
						<div class="sk-cube sk-cube5"></div>
						<div class="sk-cube sk-cube6"></div>
						<div class="sk-cube sk-cube7"></div>
						<div class="sk-cube sk-cube8"></div>
						<div class="sk-cube sk-cube9"></div>
					</div>
					<div id=galleryWrapper class="clearfix magnificPopupParent">
						<div class="item stadiums">
							<a href=images/gallery/masonry/1.jpg
								title="Wankhede Stadium, Mumbai"><img
								src=images/gallery/masonry/1.jpg alt=image></a>
						</div>
						<div class="item accessories">
							<a href=images/gallery/masonry/15.jpg
								title="Puma Bat"><img
								src=images/gallery/masonry/15.jpg alt=image></a>
						</div>
						<div class="item gallery-item-width2 player">
							<a href=images/gallery/masonry/4.jpg
								title="Virat Kohli"><img
								src=images/gallery/masonry/4.jpg alt=image></a>
						</div>
						<div class="item stadiums">
							<a href=images/gallery/masonry/2.jpg
								title="Motera Stadium, Ahmedabad"><img
								src=images/gallery/masonry/2.jpg alt=image></a>
						</div>
						<div class="item stadiums">
							<a href=images/gallery/masonry/3.jpg
								title="Eden Garden Kolkata"><img
								src=images/gallery/masonry/3.jpg alt=image></a>
						</div>
						<div class="item gallery-item-width3 player">
							<a href=images/gallery/masonry/5.jpg
								title="Ricky Ponting Former Captain of Australia"><img
								src=images/gallery/masonry/5.jpg alt=image></a>
						</div>
						<div class="item player">
							<a href=images/gallery/masonry/6.jpg
								title="Australia's Fastest Bowler"><img
								src=images/gallery/masonry/6.jpg alt=image></a>
						</div>
						<div class="item player">
							<a href=images/gallery/masonry/7.jpg
								title="Virendra Sehwag"><img
								src=images/gallery/masonry/7.jpg alt=image></a>
						</div>
						<div class="item player">
							<a href=images/gallery/masonry/8.jpg
								title="Captain Of Indian Cricket Team MS Dhoni"><img
								src=images/gallery/masonry/8.jpg alt=image></a>
						</div>
						<div class="item gallery-item-width2 player">
							<a href=images/gallery/masonry/9.jpg
								title="Suresh Raina"><img
								src=images/gallery/masonry/9.jpg alt=image></a>
						</div>
						<div class="item gallery-item-width2 player">
							<a href=images/gallery/masonry/10.jpg
								title="God Of Cricket Sachin Tendulkar"><img
								src=images/gallery/masonry/10.jpg alt=image></a>
						</div>
						<div class="item player">
							<a href=images/gallery/masonry/11.jpg
								title="Dale Steyn"><img
								src=images/gallery/masonry/11.jpg alt=image></a>
						</div>
						<div class="item player">
							<a href=images/gallery/masonry/12.jpg
								title="Captain Of Pakistan Team Shahid Afridi"><img
								src=images/gallery/masonry/12.jpg alt=image></a>
						</div>
						<div class="item accessories">
							<a href=images/gallery/masonry/13.jpg
								title="Bats"><img
								src=images/gallery/masonry/13.jpg alt=image></a>
						</div>
						<div class="item accessories">
							<a href=images/gallery/masonry/14.jpg
								title="Cricket Bat"><img
								src=images/gallery/masonry/14.jpg alt=image></a>
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
<!-- Mirrored from 0effortthemes.com/soccerclubv2/gallerypage01.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2016 13:04:32 GMT -->
</html>