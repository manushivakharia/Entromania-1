<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Vo.HeroesVo" %> <%@page import="Vo.matchVo" %>
<%@page import="Dao.HeroesDao" %> <%@page import="Dao.matchDao" %>
<%@page import="Dao.concertDao" %> <%@page import="Vo.concertVo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class=no-js lang="">
<head>
<base href="${pageContext.request.contextPath}/User/">
<meta charset=utf-8>
<meta name=description content="">
<meta name=viewport content="width=device-width, initial-scale=1">
<title>Home</title>
<link rel="shortcut icon" href=favicon.ico>
<link rel=stylesheet href=vendor.css type="text/css">
<link rel=stylesheet href=style.css type="text/css">
<link rel=stylesheet type=text/css href=css/layerslider.css>
<script src=js/vendor/modernizr.js></script>

<script type="text/javascript" src="http://www.google.com/jsapi">
</script>

<script type="text/javascript">
google.load("feeds", "1") //Load Google Ajax Feed API (version 1)

<%
	HeroesVo heroesVo = new HeroesVo();
	HeroesDao heroesDao = new HeroesDao();
	List ls1 = heroesDao.loadHeroes(heroesVo);
	HttpSession session2 = request.getSession();
	session2.setAttribute("loadHeroes", ls1);
	
	matchVo matchvo = new matchVo();
	matchDao matchdao = new matchDao();
	List lm = matchdao.loadmatch(matchvo);
	HttpSession session3 = request.getSession();
	session3.setAttribute("loadmatch", lm);
	
	concertVo concertvo = new concertVo();
	concertDao concertDao = new concertDao();
	List ls = concertDao.search(concertvo);
	HttpSession session4 = request.getSession();
	session4.setAttribute("loadConcerts", ls);
	
%>
</script>
</head>	
<body>
	<div class=wrapper>
		<%@include file="header.jsp" %>
		<div class=banner id=layerSlider style="width: 100%;">
			<div class=ls-slide
				data-ls="transition3d: 33,15; slidedelay: 8000 ; durationin:0;">
				<img src=images/banner/background01.jpg class=ls-bg
					alt="Slide background">
				<div class="ls-l layercontent01"
					style="top: 50%; left: 50%; z-index: 4;"
					data-ls="offsetxin:left; offsetxout:right; durationin: 4000; parallaxlevel: 8;">
					<img src=images/banner/player.png alt=innerimage
						class=img-responsive style="max-width: 100% !important;">
				</div>
				<img src=images/banner/ball.png alt=innerimage
					class="ls-l layercontent02" style="z-index: 5;"
					data-ls="offsetxin: right; offsetxout:left; rotatein:-360; easingin: easeoutquart; durationin: 4000; delayin: 250; parallaxlevel: -5;">
				<img src=images/banner/front_particles.png alt=particles class=ls-l
					style="z-index: 3; left: 0;"
					data-ls="offsetxin: left; offsetxout:left; scalexin:50; easingin: easeoutquart; durationin: 3000; delayin: 250;">
				<img src=images/banner/back_particles.png alt=particles class=ls-l
					style="z-index: 3; left: 50%;"
					data-ls="offsetxin: left; offsetxout:left; scalein:90; easingin: easeoutquart; durationin: 3000; delayin: 250;">
				<h2 class="ls-l bannertext layercontent03"
					data-ls="offsetxin:left; rotatexin:90 ; durationin: 3500;">IPL</h2>
				<h2 class="ls-l bannertext01 italic01 layercontent04"
					data-ls="offsetxin:left; scalexin:9; durationin: 4000;">starts</h2>
				<h4 class="ls-l bannertext02 layercontent05"
					data-ls="offsetxin:left; rotatexin:90 ; durationin: 4500;">from</h4>
				<h2 class="ls-l bannertext01 layercontent06"
					style="left: 87%; top: 760px;"
					data-ls="offsetxin:left; flipxin:90 ; durationin: 5000;">
					9<sup>th</sup>
				</h2>
				<h6 class="ls-l bannertext03 layercontent07"
					data-ls="offsetxin:left; flipxin:90 ; durationin: 6000;">april
					, 2016</h6>
			</div>
		</div>
		<div class=banner-text>
			<div class=container>
				<div class=row>
					action start from 09<sup>th</sup> April , 2016.
				</div>
			</div>
		</div>
		<section class="booking bg-smallwhite">
			<div class=container>
				<div class=booking-fig>
					<h2>Ticket Booking</h2>
				</div>
				<div class=booking-content>
					<a href="<%=request.getContextPath()%>/matchCo?flag=loadmatch" class="btn btn-white">book match</a> <a
						href="<%=request.getContextPath()%>/concertCo?flag=loadconcert" class="btn btn-red">book conert</a>
				</div>
			</div>
		</section>
		<section class=about>
			<div class=container>
				<div class=row>
					<h2 class=heading>
						About <span>EntroMania</span>
					</h2>
					<div class=about-wrap>
						<div class="tab-content nav-content">
							<p role=tabpanel class="tab-pane fade" id=matches>
							EntroMania will help you to book currenctly playing cricket matches 
							all over india. You have to pay online for ticket booking. it is 100%
							secure.
							</p>
							<p role=tabpanel class="tab-pane active fade in" id=concerts>
							EntroMania will help you to book currenctly playing concerts 
							all over india. You have to pay online for ticket booking. it is 100%
							secure.
							</p>
							<p role=tabpanel class="tab-pane fade" id=realtimescore>
							EntroMania will provide you real time score for currently playing match 
							live in our web portal.
							</p>
						</div>
						<div class=nav-header id=aboutTab>
							<ul class="nav nav-tabs clearfix" role=tablist>
								<li><a href=#matches aria-controls=matches role=tab
									data-toggle=tab>Matches</a></li>
								<li class=active><a href=#concerts aria-controls=concerts
									role=tab data-toggle=tab>Concerts</a></li>
								<li><a href=#realtimescore aria-controls=realtimescore role=tab
									data-toggle=tab>realtimescore</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class=latestResult>
			<div class=container>
				<div class=row>
					<h2 class=heading>
						latest <span>result</span>
					</h2>
					<div class=latestResult-wrap>
						<h4>Live Score Updation</h4>
					<p>Get live cricket scores of IPL 2016,
						schedules of International, Domestic IPL
						cricket matches along with latest news and ICC cricket rankings on
						EntroMania</p>
				</div>
					<div class="result clearfix">
						<div class=result-details>
							<div class=content>
								<h4 id="team1">fc Dragons</h4>
								<p id="result1">lose</p>
								<p id="player1">Shannon Skelly(23)</p>
								<p id="player2">Shannon Skelly(23)</p>
							</div>
							<div class=figure>
								<div class=team-logo>
									<div style="background: url(images/team-logo/logo01.png)"
										class=teamLogoImg></div>
								</div>
							</div>
						</div>
						<div class=result-count>
							<div class=count-number>
								<span class=lose-team></span> <span></span> <span
									class=win-team></span>
							</div>
							<div class=dateTime>
								<div class=dateTime-container id="dvtime">
									<span class=date>may 16,2015</span> <span class=time>15:30pm</span>
								</div>
								<div class=country-wrap>
									<span class=field></span> <span class=country></span>
								</div>
							</div>
						</div>
						<div class=result-details>
							<div class="content contentresult">
								<h4 id="team2">fc Zulu Ninjas</h4>
								<p id="result2">win</p>
								<p id="player3">Leland Lagos(29)</p>
								<p id="player4">Lelnd Lagos(39)</p>
							</div>
							<div class="figure figresult">
								<div class=team-logo>
									<div style="background: url(images/team-logo/logo02.png)"
										class=teamLogoImg></div>
								</div>
							</div>
						</div>
						<div class=center>
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class=matchSchedule>
			<div class=container>
				<div class=row>
					<h2 class=heading>
						match <span>schedule</span>
					</h2>
				<p class=headParagraph>The schedule given here only contains
					confirmed international cricket matches. As soon as we get more
					information, this 	page will be updated. Dates and venues are
					subject to change.</p>

				<div class="matchSchedule_details row">
						<div class=match_versus-wrap>
							<div class=wrap_match-innerdetails>
								<ul class="home_tInfo scrollable">
								<c:forEach items="${sessionScope.loadmatch}" var="m">
									<li><a href="#"><ul class="t_info match_info01 headline01 clearfix">
												<li>${m.m_id}</li>
												<li><div class="headline01 clearfix">
														<span>${m.team1}</span><span class=vs>vs</span> <span>${m.team2}</span>
													</div>
													<div class="paragraph02 clearfix">
														<span>${m.date}</span> <span>${m.time}</span>
														<span>${m.stadiumvo.stadium}</span>
													</div></li>
											</ul></a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class=match_next>
							<div class="wrap_match_next left_triangle">
								<div class=left_padding>
									<h4 class=headline03>upcoming matches</h4>
									<p>Upcoming Matches in India.</p>
								</div>
							</div>
						</div>
					</div>
						<div class="matchSchedule_details row">
						<div class=match_versus-wrap>
							<div class=wrap_match-innerdetails>
								<ul class="home_tInfo scrollable">
								<c:forEach items="${sessionScope.loadConcerts}" var="k">
									<li><a href="#">
									<ul class="t_info match_info01 headline01 clearfix">
												<li>${k.cn_id}</li>
												<li><div class="headline01 clearfix">
														<span>${k.title}</span><span class=vs></span> <span></span>
													</div>
													<div class="paragraph02 clearfix">
														<span>${k.date}</span> <span>${k.time}</span>
														<span>${k.stadiumvo.stadium}</span>
													</div></li>
											</ul></a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class=match_next>
							<div class="wrap_match_next left_triangle">
								<div class=left_padding>
									<h4 class=headline03>upcoming concerts</h4>
									<p>Upcoming concerts in India.</p>
								</div>
							</div>
						</div>
					</div>
			</div>
		</section>
		
		
		<section class="players homeplayer">
			<div class=container>
				<div class=row>
					<h2 class=heading>
						our <span>heroes</span>
					</h2>
					<p class=headParagraph>
					The History of cricket started hundreds of years ago during the 16th 
					century. The game originated in south England but today is popular in India, Australia,
					England, the west indies and south africa. Since its early days cricket has produce many 
					legendary players so today we're going to take a look at the best cricketers of all time.
					</p>
					<div class="wrapplayer clearfix">
						<a class="prv prev-player"></a> <a class="nxt next-player"></a>
						<ul class="slideHeroes clearfix">
							<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
							<c:forEach items="${sessionScope.loadHeroes}" var="h">
							<li><a href="#"><div class=playerFig>
										<div class=playerpic>
											<div class=bgimg>
					<img src="${pageContext.request.contextPath}/doc/${h.attachmentVo.encryptedFileName}">
											</div>
										</div>
										<ul class="playerDetails clearfix">
											<li><span>${h.heroName}</span> <span></span></li>
											<li class=playinfodetails>age ${h.heroAge} (born ${h.heroDob})</li>
											<li class=playerInfo><span>${h.heroPosition}</span> <span></span></li>
										</ul>
									</div></a></li></c:forEach>
							
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section class=gallery>
			<div class=container>
				<div class=row>
					<h2 class=heading>
						our <span>gallery</span>
					</h2>
					<p class=headParagraph>Like every other sport ever played, there
					have been some iconic moments in cricket that have been captured
					forever through photographs. Here are some of the best moments that
					the gentleman's game has ever seen</p>
				</div>
			</div>
			<div class=galleryWrapper>
				<div class=grid>
					<div class=grid_item>
						<div class=gallery_dtl>
							<img src=images/newgallery/1.jpg alt=image>
							<div class=gallery_info>
								<div class=galleryinfo_wrap>
									<p class=uppercase>The Little Master walks out to bat one final time.</p>
									<p class=red_p>Sachin in his last match against West Indies at the Wankhede Stadium, Mumbai.</p>
								</div>
							</div>
						</div>
					</div>
					<div class=grid_item>
						<div class=gallery_dtl>
							<img src=images/newgallery/37.jpg alt=image>
							<div class=gallery_info>
								<div class=galleryinfo_wrap>
									<p class=uppercase>Sachin Tendulkar</p>
									<p class=red_p>Sachin Tendulkar finally reaches his 100th century.</p>
								</div>
							</div>
						</div>
					</div>
					<div class=grid_item>
						<div class=gallery_dtl>
							<img src=images/newgallery/6.jpg alt=image>
							<div class=gallery_info>
								<div class=galleryinfo_wrap>
									<p class=uppercase>Dada gives a fitting reply to Flintoff after India beat England at Lord's in the Natwest final.</p>
									<p class=red_p>Saurav Ganguli</p>
								</div>
							</div>
						</div>
					</div>
					<div class=grid_item>
						<div class=gallery_dtl>
							<img src=images/newgallery/26.jpg alt=image>
							<div class=gallery_info>
								<div class=galleryinfo_wrap>
									<p class=uppercase>Yuvraj Singh</p>
									<p class=red_p>Yuvraj Singh touches the feet of his idol.</p>
								</div>
							</div>
						</div>
					</div>
					<div class=grid_item>
						<div class=gallery_dtl>
							<img src=images/newgallery/10.jpg alt=image>
							<div class=gallery_info>
								<div class=galleryinfo_wrap>
									<p class=uppercase>Legends</p>
									<p class=red_p>A selfie of cricketing greats at the MCCs bicentennial celebration.</p>
								</div>
							</div>
						</div>
					</div>
					<div class=grid_item>
						<div class=gallery_dtl>
							<img src=images/newgallery/5.jpg alt=image>
							<div class=gallery_info>
								<div class=galleryinfo_wrap>
									<p class=uppercase>The moment when India won its first World Cup in 1983.</p>
									<p class=red_p>After Jimmy Amarnath took the last West Indian wicket of Micheal Holding, the crowd rushed in.</p>
								</div>
							</div>
						</div>
					</div>
					<div class=grid_item>
						<div class=gallery_dtl>
							<img src=images/newgallery/28.jpg alt=image>
							<div class=gallery_info>
								<div class=galleryinfo_wrap>
									<p class=uppercase>The moment a billion hearts were waiting for.</p>
									<p class=red_p>India lifting the 2011 World Cup.</p>
								</div>
							</div>
						</div>
					</div>
					<div class=grid_item>
						<div class=gallery_dtl>
							<img src=images/newgallery/19.png alt=image>
							<div class=gallery_info>
								<div class=galleryinfo_wrap>
									<p class=uppercase>Dennis Lillee</p>
									<p class=red_p>Dennis Lillee had 9 slips deployed vs New Zealand in 1977.</p>
								</div>
							</div>
						</div>
					</div>
					<div class=grid_item>
						<div class=gallery_dtl>
							<img src=images/newgallery/21.png alt=image>
							<div class=gallery_info>
								<div class=galleryinfo_wrap>
									<p class=uppercase>Brian Lara</p>
									<p class=red_p>Brian Lara kisses the ground after scoring 400 runs in an innings vs England in April, 2004</p>
								</div>
							</div>
						</div>
					</div>
					<div class=grid_item>
						<div class=gallery_dtl>
							<img src=images/newgallery/11.jpeg alt=image>
							<div class=gallery_info>
								<div class=galleryinfo_wrap>
									<p class=uppercase>David Shepherd's famous hop, skip and jump at a full nelson.</p>
									<p class=red_p>Whenever the score reached 111 or its multiples, David Shepherd performed his famous hop, skip and jump routine.</p>
								</div>
							</div>
						</div>
					</div>
					<div class=grid_item>
						<div class=gallery_dtl>
							<img src=images/newgallery/27.jpg alt=image>
							<div class=gallery_info>
								<div class=galleryinfo_wrap>
									<p class=uppercase>Tony Greig</p>
									<p class=red_p>Tribute to the charismatic late Tony Greig for his amazing contribution to the game.</p>
								</div>
							</div>
						</div>
					</div>
					<div class=gutter></div>
				</div>
			</div>
		</section>
		<%@include file="footer.jsp" %>
	</div>
	<script src=js/vendor/vendor.js></script>
	<script src=js/main.js></script>
	<script type="text/javascript">

//var feedurl="http://static.cricinfo.com/rss/livescores.xml"
var feedurl="http://www.ecb.co.uk/live-scores.xml";
var feedlimit=5;

function rssfeedsetup(){
	var feedpointer=new google.feeds.Feed(feedurl) //Google Feed API method
	feedpointer.setNumEntries(feedlimit) //Google Feed API method
	feedpointer.load(displayfeed) //Google Feed API method
	}

function displayfeed(result){
	var thefeeds=result.feed.entries;
	
	for (var i=0; i<thefeeds.length; i++)
{
		var str = thefeeds[0].title;
		var tm = str.split("vs");
		var tname1 = tm[0].substring(0,tm[0].length-7);
		var tname2 = tm[1].substring(0,tm[1].length-7);
		
		var scor1 = tm[0].substring(tm[0].length-7,tm[0].length-4);
		var scor2 = tm[1].substring(tm[1].length-7,tm[1].length-4);
		var team1 = document.getElementById("team1");
		var team2 = document.getElementById("team2");
		var player1 = document.getElementById("player1");
		var player2 = document.getElementById("player2");
		var player3 = document.getElementById("player3");
		var player4 = document.getElementById("player4");
		var result1 = document.getElementById("result1");
		var result2 = document.getElementById("result2");
		var dvtime = document.getElementById("dvtime");
		
team1.innerHTML = tm[0];
team2.innerHTML = tm[1];
dvtime.innerHTML = thefeeds[i].publishedDate;
player1.innerHTML = "";//thefeeds[0].title;
player2.innerHTML = "";//thefeeds[0].title;
player3.innerHTML = "";//thefeeds[0].contentSnippet;
player4.innerHTML = "";//thefeeds[0].contentSnippet;
result1.innerHTML = "";//scor1;
result2.innerHTML = "";//scor2;
		}
		
}


window.onload=function(){
rssfeedsetup()
}
</script>
	
</body>
</html>