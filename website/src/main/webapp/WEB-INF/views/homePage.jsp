<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<spring:url var="vendor" value="/resources/vendor" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Online Shopping Website Using Spring MVC and Hibernate">
<meta name="author" content="Khozema Nullwala">
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">

<title>Vedhacon - ${title}</title>
<script src="${vendor}/jquery/jquery.min.js"></script>
<script src="${vendor}/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}'
</script>

<!-- Bootstrap core CSS -->
<link href="${vendor}/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/modern-business.css" rel="stylesheet">
<style>
li.dropdown:hover>.dropdown-menu {
	display: block;
}

.navbar-dark .navbar-nav .nav-link {
	color: rgba(0, 0, 0, .9);
	font-size: 15px;
	padding-left: 12px;
}

.navbar-dark .navbar-nav .nav-link:hover {
	color: rgb(0, 0, 0);
	background: #ccc;
	border-radius: 9px;
}

.navbar-dark .navbar-nav .show>.nav-link {
	color: rgb(0, 0, 0);
}

p.sint {
	font-size: 34px;
	color: #098f90;
	text-align: center;
	position: relative;
	font-weight: 400 !important;
	text-shadow: 1px 1px 1px #030102;
	margin-bottom: 30px;
}

p.sint:after {
	content: '';
	background: #098f90;
	height: 1px;
	width: 30%;
	left: 35%;
	position: absolute;
	bottom: 0%;
}

p.sint span:before {
	left: 34.5%;
}

p.sint span:after {
	right: 34.5%;
}

p.sint span:before, p.sint span:after {
	content: '';
	position: absolute;
	width: 8px;
	height: 8px;
	border: 1px solid #098f90;
	border-radius: 25px;
	background-color: #098f90;
	bottom: -8%;
}
</style>
</head>

<body
	style="background-image: url('/website/resources/images/b4.jpg'); padding-top: 72px !important; background-repeat: repeat;">

	<%@include file="./shared/navbar.jsp"%>

	<c:if test="${userClickHome == true }">
		<%@include file="home.jsp"%>
	</c:if>

	<c:if test="${userClickAbout == true }">
		<%@include file="aboutUs.jsp"%>
	</c:if>

	<c:if test="${userClickPrivacy == true }">
		<%@include file="privacy.jsp"%>
	</c:if>
	<c:if test="${userClickTCIModel == true }">
		<%@include file="tciModel.jsp"%>
	</c:if>


	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->



</body>

</html>
