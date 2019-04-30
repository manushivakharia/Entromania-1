<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>

<%!
public boolean empty(String s)
	{
		if(s== null || s.trim().equals(""))
			return true;
		else
			return false;
	}
%>
<%!
	public String hashCal(String type,String str){
		byte[] hashseq=str.getBytes();
		StringBuffer hexString = new StringBuffer();
		try{
		MessageDigest algorithm = MessageDigest.getInstance(type);
		algorithm.reset();
		algorithm.update(hashseq);
		byte messageDigest[] = algorithm.digest();
            
		
		for (int i=0;i<messageDigest.length;i++) {
			String hex=Integer.toHexString(0xFF & messageDigest[i]);
			if(hex.length()==1) hexString.append("0");
			hexString.append(hex);
		}
			
		}catch(NoSuchAlgorithmException nsae){ }
		
		return hexString.toString();
	}
%>
<% 	
	String merchant_key="gtKFFx";
	String salt="eCwWELxi";
	String action1 ="";
	String base_url="https://test.payu.in";
	int error=0;
	String hashString="";
	
 
	
	Enumeration paramNames = request.getParameterNames();
	Map<String,String> params= new HashMap<String,String>();
    	while(paramNames.hasMoreElements()) 
	{
      		String paramName = (String)paramNames.nextElement();
      
      		String paramValue = request.getParameter(paramName);
		params.put(paramName,paramValue);
	}
	String txnid ="";
	if(empty(params.get("txnid"))){
		Random rand = new Random();
		String rndm = Integer.toString(rand.nextInt())+(System.currentTimeMillis() / 1000L);
		txnid=hashCal("SHA-256",rndm).substring(0,20);
	}
	else
		txnid=params.get("txnid");
	String txn="abcd";
	String hash="";
	String hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
	if(empty(params.get("hash")) && params.size()>0)
	{
		if( empty(params.get("key"))
			|| empty(params.get("txnid"))
			|| empty(params.get("amount"))
			|| empty(params.get("firstname"))
			|| empty(params.get("email"))
			|| empty(params.get("phone"))
			|| empty(params.get("productinfo"))
			|| empty(params.get("surl"))
			|| empty(params.get("furl"))	)
			
			error=1;
		else{
			String[] hashVarSeq=hashSequence.split("\\|");
			
			for(String part : hashVarSeq)
			{
				hashString= (empty(params.get(part)))?hashString.concat(""):hashString.concat(params.get(part));
				hashString=hashString.concat("|");
			}
			hashString=hashString.concat(salt);
			
			 hash=hashCal("SHA-512",hashString);
			action1=base_url.concat("/_payment");
		}
	}
	else if(!empty(params.get("hash")))
	{
		hash=params.get("hash");
		action1=base_url.concat("/_payment");
	}
		
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=utf-8>
<meta name=description content="">
<meta name=viewport content="width=device-width, initial-scale=1">
<title>ENtroMania</title>
<link rel="shortcut icon" href=favicon.ico>
<link rel=stylesheet href=vendor.css>
<link rel=stylesheet href=style.css>
<link rel=stylesheet type=text/css href=css/layerslider.css>
<script src=js/vendor/modernizr.js></script>
<script>
var hash='<%= hash %>';
function submitPayuForm() {
	
	if (hash == '')
		return;
      var payuForm = document.forms.payuForm;
      payuForm.submit();
    }
</script>

</head>
<body onload="submitPayuForm();">

	<div class=wrapper>
		<%@include file="header.jsp" %>
		<section class="map_wrapper clearfix">
			<div id=map-section></div>
			<div class=container>
				<div class=row>
					<div class=contact_form>
						<h2 class=heading>
							Pay For <span>your tickets</span>
						</h2>
						
													<form action="<%= action1 %>" method="post" name="payuForm" class="formcontact clearfix">
							<input type="hidden" name="key" value="<%= merchant_key %>" />
      <input type="hidden" name="hash" value="<%= hash %>"/>
      <input type="hidden" name="txnid" value="<%= txnid %>" />
							
							<div class=form-group>
							<%-- <input type="hidden" name="bookingid" value="${sessionScope.bookingId}"> --%>
								<p class="headline01 clearfix"> Booking Id : ${sessionScope.bookingId}</p>
								<p class="headline01 clearfix"> Match : ${sessionScope.m_match}</p>
								<p class="headline01 clearfix"> Stadium : ${sessionScope.m_stadium}</p>
								<p class="headline01 clearfix"> Date & Time : ${sessionScope.m_date} & ${sessionScope.m_time}</p>
							</div>
							<div class=form-group>
								<p class="headline01 clearfix"> Name : ${sessionScope.name}</p>
								<p class="headline01 clearfix"> Mobile No : ${sessionScope.phone}</p>
								<p class="headline01 clearfix"> Email Id : ${sessionScope.email}</p>
							</div>
							
							<div class=form-group>
							<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
							<c:forEach items="${sessionScope.ticketdetails}" var="t" varStatus="j">
								<p class="headline01 clearfix"> Ticket : ${t.ticketname}</p>
								<p class="headline01 clearfix"> No Of Tickets : ${t.noofticket } x ${t.ticketprice}</p>
							</c:forEach>
								<p class="headline01 clearfix"> Price : Rs. ${sessionScope.total1} </p>
							</div>
							<input type="hidden" name="amount" value="${sessionScope.total1}" />
							<input type="hidden" name="firstname" value="${sessionScope.name}" />
							<input type="hidden" name="email" value="${sessionScope.email}" />
							<input type="hidden" name="phone" value="${sessionScope.phone}" />
							<input type="hidden" name="productinfo" value="${sessionScope.name}" />
							<input type="hidden" name="surl" value="http://localhost:8080/EntroMania/User/success.jsp" />
							<input type="hidden" name="furl" value="http://localhost:8080/EntroMania/User/success.jsp" />
							<% if(empty(hash)){ %>
            <input type="submit" class="btn btn-red" value="Proceed" />
          <% } %>
							  
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