<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<script>
function sms()
	{
		var mobile = document.getElementById("mobile");
		var name = document.getElementById("name");
		var match = document.getElementById("match");
		var stadium = document.getElementById("stadium");
		var date = document.getElementById("date");
		var bookingid = document.getElementById("bookingid");
		var time = document.getElementById("time");

		var xmlhttp = new XMLHttpRequest();
		
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {
			var jsonObj = JSON.parse(xmlhttp.responseText);
		}
	}
xmlhttp.open("get","${pageContext.request.contextPath}/smsController?mobile="+mobile.value+"&name="+name.value+"&match="+match.value+"&stadium="+stadium.value+"&date="+date.value+"&time="+time.value+"&bookingid="+bookingid.value, true);
xmlhttp.send();
}

</script>
</head>
<body onload="sms()">
	<!--[if lt IE 10]>
 <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
 <![endif]-->
	<%@include file="header.jsp" %>
	<div class=errorWrapper>
		<div class=errorHolderWrap>
			<div class=errorHolder>
				<h1>
					<a href="index.jsp"><img src=images/logo.png alt=image></a>
				</h1>
				<input type="hidden" id="mobile" value="${sessionScope.phone}">
				<input type="hidden" id="name" value="${sessionScope.name}">
				<input type="hidden" id="match" value="${sessionScope.m_match }">
				<input type="hidden" id="stadium" value="${sessionScope.m_stadium }">
				<input type="hidden" id="date" value="${sessionScope.m_date }">
				<input type="hidden" id="time" value="${sessionScope.m_time }">
				<input type="hidden" id="bookingid" value="${sessionScope.bookingId}">
				<h2>Thank You.</h2>
				<h4>Payment Succesfully Completed.</h4>
				<p></p>
			</div>
		</div>
	</div>
	<script src=js/vendor/vendor.js></script>
	<script src=js/main.js></script>
</body>
<!-- Mirrored from 0effortthemes.com/soccerclubv2/404.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2016 13:04:40 GMT -->
</html>