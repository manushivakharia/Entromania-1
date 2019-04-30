<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Mirrored from 0effortthemes.com/soccerclubv2/bookTicket.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2016 13:04:39 GMT -->
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
<style>
.center1 {
	width: 100px;
}
</style>

</head>
<body>
	<!--[if lt IE 10]>
 <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
 <![endif]-->
	<div class=wrapper>
		<%@ include file="header.jsp"%>
		<div class=innerbannerwrap>
			<div class=content></div>
			<div class=innerbanner>
				<h2 class=bannerHeadline>
					book <span>ticket</span>
				</h2>
			</div>
		</div>
		<section class="innerpage_all_wrap bg-white">
		<div class=container>
			<div class=row>
				<h2 class=heading>
					premium matches <span>tickets the official way</span>
				</h2>
				<p class=headParagraph>EntroMania will help you to book
					currenctly playing cricket matches all over india. You have to pay
					online for ticket booking. it is 100% secure.</p>
				<div class=innerWrapper>
					<aside class="widgetinner clearfix">
					<div class=widgetinfowrap>
						<div class=bg-blackimg>why book with us?</div>
						<ul class="widgetinfo info01">
							<li>100% MONEY BACK GURANTEE</li>
							<li>REAL TIME INVENTory</li>
							<li>friendly customer service</li>
							<li>secure payment</li>
							<li>last minute bookings</li>
							<li>7 years online swering fans</li>
						</ul>
					</div>
					<div class=widgetinfowrap>
						<div class=bg-blackimg>english memebership</div>
						<ul class="widgetinfo info02">
							<li>liverpool ticket</li>
							<li>arsenasl ticket</li>
						</ul>
					</div>
					<div class=widgetinfowrap>
						<div class=bg-blackimg>t20 world cup</div>
						<ul class="widgetinfo info02">
							<li>warm up match</li>
							<li>qualify match</li>
						</ul>
					</div>
					<div class=widgetinfowrap>
						<div class=bg-blackimg>champions leauge</div>
						<ul class="widgetinfo info02">
							<li>liverpool ticket</li>
						</ul>
					</div>
					<div class=widgetinfowrap>
						<div class=bg-blackimg>national cricket teams</div>
						<ul class="widgetinfo info02">
							<li>India</li>
							<li>Australia</li>
							<li>newzeland</li>
							<li>southafrica</li>
						</ul>
					</div>
					</aside>
					<aside class=contentinner>
					<div class="bg-red headline01">${sessionScope.m_match},
						${sessionScope.m_stadium}</div>
					<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
					<form action="<%=request.getContextPath()%>/ticketCo"
						method="post">
						<input type="hidden" name="flag" value="insert">
						<ul class=ticketInfo>
							<c:forEach items="${sessionScope.viewtickets}" var="t"
								varStatus="j">
								<li><ul class="t_info headline01 clearfix">
										<li>${j.count}<input type="hidden" value="${t.ticketId}"></li>
										<li><div class="inm ptm mbs">
												<div class="bm">
													<div class="gRow mbxxs">
														<div class="gCol12 m0">
															<h6 class="h l m0 pbxxs" style="font-size: 17px;">
																<span id="spCurrencyName334337">INR</span> <span
																	id="spPricePerTicket334337">${t.ticketprice}</span> <br>
																<span id="spTicketCategoryName334337">${t.ticketname}</span>
																<br> <span
																	style="font-weight: normal; font-size: 12px;"> <input
																	type="hidden" id="noOftickets${j.count}" name="noOftickets"
																	value="${t.noOftickets}"> <input type="hidden"
																	id="soldTickets${j.count}" name="soldTickets"
																	value="${t.soldTickets}"> Description : <span
																	id="spTicketCategoryTime334337">${t.ticketdesc}
																</span> <span id="total${j.count}"> Remaining Tickets : </span>
																</span> <input type="hidden" name="ticketname"
																	value="${t.ticketname}"> <input type="hidden"
																	name="price" value="${t.ticketprice}">
															</h6>
														</div>
													</div>
												</div>
											</div></li>
										<li>

											<div class="center1">
												<p></p>
												<div class="input-group">
													<span class="input-group-btn">
														<button type="button" class="btn btn-default btn-number"
															style="padding: 10px" onclick="fnminus(this)">
															<span class="glyphicon glyphicon-minus"></span>
														</button>
													</span> <input type="text" name="total"
														class="form-control input-number"
														style="width: 37px; height: 52px" value="0" min="1"
														max="10"> <span class="input-group-btn">
														<button type="button" class="btn btn-default btn-number"
															style="padding: 10px" onclick="fnplus(this)">
															<span class="glyphicon glyphicon-plus"></span>
														</button>
													</span>
												</div>
											</div>
										</li>

									</ul></li>
							</c:forEach>
							<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="list" value="${sessionScope.viewtickets}"></c:set>
<c:set var="len" value="${function:length(list)}"></c:set>

<input type="text" value="${len}" id="counter" style="display: none">
<script> 
function fn()
{
		var counter=document.getElementById("counter").value;
		var total1=0;
		for(i=1;i<=counter;i++)
		{
			var soldTickets=document.getElementById("soldTickets"+i).value;
			var noOftickets=document.getElementById("noOftickets"+i).value;
			
			var total=document.getElementById("total"+i);
			
			var a=parseFloat(noOftickets)-parseFloat(soldTickets);
			total.innerHTML=" Remaining Tickets : "+a;
		}
}
</script>
<script>fn();</script>
		
							<script>
								function fnminus(x) {

									var chiledNode = x.parentNode.parentNode;
									var searchEles = chiledNode.children;
									for (var i = 0; i < searchEles.length; i++) {
										if (searchEles[i].tagName == "INPUT") {
											if (searchEles[i].value == "0"
													|| searchEles[i].value == "") {
												searchEles[i].value = "0";
											} else {
												searchEles[i].value = parseInt(searchEles[i].value) - 1;
											}
										}
									}

								}

								function fnplus(x) {
									var chiledNode = x.parentNode.parentNode;
									var searchEles = chiledNode.children;
									for (var i = 0; i < searchEles.length; i++) {
										if (searchEles[i].tagName == "INPUT") {
											if (searchEles[i].value == "") {
												searchEles[i].value = "0";
											} else {
												if (parseInt(searchEles[i].value) < 11) {
													searchEles[i].value = parseInt(searchEles[i].value) + 1;
												}
											}
										}
									}

								}
							</script>
						</ul>
						<div class=center align="right">
							<input type="submit" class="btn-small01 btn-green"
								value="BOOK NOW">
						</div>
					</form>

					<div class=buymatchticket>
						<div class=bg-red>
							<h5>how buy a match ticket</h5>
						</div>
						<div class=ticktbody>
							<p>First of al register with us than go to cricket menu on header than 
							select any match that you want to book tickets than selct your tickets
							than procees to payment.</p>
							<p></p>
							<p></p>
							<div class=socialTicket>
								<a href=https://www.facebook.com/vrl.soni
									class="social_link facebook"><i class="fa fa-facebook"></i></a>
								<a href=https://twitter.com/vrl_soni
									class="social_link twitter"><i class="fa fa-twitter"></i></a> <a
									href=https://www.behance.net/itobuz class="social_link behance"><i
									class="fa fa-behance"></i></a>
							</div>
						</div>
					</div>
					</aside>
				</div>
			</div>
		</div>
		</section>
		<%@ include file="footer.jsp"%>
	</div>
	<script src=js/vendor/vendor.js></script>
	<script src=js/main.js></script>

</body>
<!-- Mirrored from 0effortthemes.com/soccerclubv2/bookTicket.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Jan 2016 13:04:39 GMT -->
</html>