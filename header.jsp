<header class=header-main>
	<div class=header-upper>
		<div class=container>
			<div class=row>
				<ul>
					<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
					<c:if test="${sessionScope.usertype ne 'USER' }">
					<li><a href="../Admin/Registration.jsp"> Signup </a></li>
					<li><a href="../Admin/login.jsp"> Login</a></li>
					</c:if>
					<c:if test="${sessionScope.usertype eq 'USER' }">
					<li><a href="#"> Hi, ${sessionScope.username }</a></li>
					<li><a href="abc?flag=logout"> Logout</a></li>
					</c:if>
					<li><a href=shopcart.jsp><i class="fa fa-shopping-cart"></i>
							<span>cart(<span class=cartitems>0</span>)
						</span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="header-lower clearfix">
		<div class=container>
			<div class=row>
				<h1 class=logo>
					<a href=index.jsp><img src=images/logo.png alt=image></a>
				</h1>
				<div class=menubar>
					<nav class=navbar>
						<div class=nav-wrapper>
							<div class=navbar-header>
								<button type=button class=navbar-toggle>
									<span class=sr-only>Toggle navigation</span> <span
										class=icon-bar></span>
								</button>
							</div>
							<div class=nav-menu>
								<ul class="nav navbar-nav menu-bar">
									<li><a href=index.jsp class=active>Home <span></span>
											<span></span> <span></span> <span></span></a></li>
									<li><a href="<%=request.getContextPath()%>/SponserCo?flag=loadSponser">about <span></span> <span></span>
											<span></span> <span></span></a></li>
									<li><a href="gallerypage01.jsp"> gallery <span></span> <span></span> <span></span>
											<span></span></a>
									</li>
									<li><a
										href="<%=request.getContextPath()%>/matchCo?flag=loadmatch">Cricket
											<span></span> <span></span> <span></span> <span></span>
									</a></li>
									
									<li><a
										href="<%=request.getContextPath()%>/concertCo?flag=loadconcert">Concerts
											<span></span> <span></span> <span></span> <span></span>
									</a></li>
									<li><a href="<%=request.getContextPath()%>/shopCo?flag=loadProduct">shop <span></span> <span></span>
											<span></span> <span></span></a></li>
									<li><a
										href="complain.jsp">Complain
											<span></span> <span></span> <span></span> <span></span>
									</a></li>
									<li><a href=contact.jsp>contact <span></span> <span></span>
											<span></span> <span></span></a></li>
								</ul>
							</div>
						</div>
					</nav>
				</div>
				<div class=social>
					<a href=https://www.facebook.com/vrl.soni class=facebook><i
						class="fa fa-facebook"></i></a> <a href=https://twitter.com/vrl_soni
						class=twitter><i class="fa fa-twitter"></i></a> <a
						href=https://www.behance.net/vrl.soni class=behance><i
						class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
	</div>
</header>