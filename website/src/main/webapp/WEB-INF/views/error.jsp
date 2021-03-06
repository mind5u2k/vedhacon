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

<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}'
</script>

<!-- Bootstrap core CSS -->
<link href="${vendor}/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/modern-business.css" rel="stylesheet">
<style>
.navbar-dark .navbar-nav .nav-link {
	color: rgba(0, 0, 0, .9);
	font-size: 17px;
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
</style>
</head>
<body
	style="background-image: url('/website/resources/images/b4.jpg'); padding-top: 74px !important; background-repeat: repeat;">

	<%@include file="./shared/navbar.jsp"%>

	<!-- Page Content -->
	<div class="container" style="padding-top: 45px;">
		<h1 class="mt-4 mb-3" style="text-align: center;">
			Error 404<br> <small>Page Not Found</small>
		</h1>

		<div
			style="background: #f6f5f5; text-align: center; padding: 34px 12%; margin: 26px 45px 150px 45px; box-shadow: 5px 5px 5px #343a40; border-radius: 12px;">
			The page you requested could not be found, either contact your
			webmaster or try again. Use your browsers <span
				style="font-size: 18px; font-weight: bold;">Back</span> button to
			navigate to the page you have prevously come from <br> <a
				href="home" class="btn btn-primary" style="margin-top: 43px;">Home
				Page</a>
		</div>

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${vendor}/jquery/jquery.min.js"></script>
	<script src="${vendor}/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>


<!-- <!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Modern Business - Start Bootstrap Template</title>

Bootstrap core CSS
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

Custom styles for this template
<link href="css/modern-business.css" rel="stylesheet">

</head>

<body>

	Navigation
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index.html">Start Bootstrap</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="about.html">About</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="services.html">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownPortfolio" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Portfolio </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item" href="portfolio-1-col.html">1 Column
								Portfolio</a> <a class="dropdown-item" href="portfolio-2-col.html">2
								Column Portfolio</a> <a class="dropdown-item"
								href="portfolio-3-col.html">3 Column Portfolio</a> <a
								class="dropdown-item" href="portfolio-4-col.html">4 Column
								Portfolio</a> <a class="dropdown-item" href="portfolio-item.html">Single
								Portfolio Item</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Blog </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
							<a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
							<a class="dropdown-item" href="blog-post.html">Blog Post</a>
						</div></li>
					<li class="nav-item active dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Other Pages </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="full-width.html">Full Width
								Page</a> <a class="dropdown-item" href="sidebar.html">Sidebar
								Page</a> <a class="dropdown-item" href="faq.html">FAQ</a> <a
								class="dropdown-item active" href="404.html">404</a> <a
								class="dropdown-item" href="pricing.html">Pricing Table</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>

	Page Content
	<div class="container">

		Page Heading/Breadcrumbs
		<h1 class="mt-4 mb-3">
			404 <small>Page Not Found</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.html">Home</a></li>
			<li class="breadcrumb-item active">404</li>
		</ol>

		<div class="jumbotron">
			<h1 class="display-1">404</h1>
			<p>The page you're looking for could not be found. Here are some
				helpful links to get you back on track:</p>
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="about.html">About</a></li>
				<li><a href="services.html">Services</a></li>
				<li><a href="contact.html">Contact</a></li>
				<li>Portfolio
					<ul>
						<li><a href="portfolio-1-col.html">1 Column Portfolio</a></li>
						<li><a href="portfolio-2-col.html">2 Column Portfolio</a></li>
						<li><a href="portfolio-3-col.html">3 Column Portfolio</a></li>
						<li><a href="portfolio-4-col.html">4 Column Portfolio</a></li>
					</ul>
				</li>
				<li>Blog
					<ul>
						<li><a href="blog-home-1.html">Blog Home 1</a></li>
						<li><a href="blog-home-2.html">Blog Home 2</a></li>
						<li><a href="blog-post.html">Blog Post</a></li>
					</ul>
				</li>
				<li>Other Pages
					<ul>
						<li><a href="full-width-page.html">Full Width Page</a></li>
						<li><a href="sidebar.html">Sidebar Page</a></li>
						<li><a href="faq.html">FAQ</a></li>
						<li><a href="404.html">404 Page</a></li>
						<li><a href="pricing-table.html">Pricing Table</a></li>
					</ul>
				</li>
			</ul>
		</div>
		/.jumbotron

	</div>
	/.container

	Footer
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2017</p>
		</div>
		/.container
	</footer>

	Bootstrap core JavaScript
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
 -->