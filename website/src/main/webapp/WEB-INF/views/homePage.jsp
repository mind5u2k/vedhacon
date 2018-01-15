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
	style="background-image: url('${images}/b4.jpg');backgroung-repeat:repear;">

	<%@include file="./shared/navbar.jsp"%>

	<header style="border-top: 9px solid #151616;">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- Slide One - Set the background image for this slide in the line below -->
				<div class="carousel-item active"
					style="background-image: url('${images}/img1.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h3>First Slide</h3>
						<p>This is a description for the first slide.</p>
					</div>
				</div>
				<!-- Slide Two - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('${images}/img2.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h3>Second Slide</h3>
						<p>This is a description for the second slide.</p>
					</div>
				</div>
				<!-- Slide Three - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('${images}/img3.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h3>Third Slide</h3>
						<p>This is a description for the third slide.</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</header>

	<!-- Page Content -->
	<div class="container" style="padding-top: 25px;">
		<p class="sint">
			<span>Services</span>
		</p>
		<!-- Marketing Icons Section -->
		<div class="row" style="padding-bottom: 13px;">
			<div class="col-lg-4 mb-4">
				<div class="card h-100"
					style="box-shadow: 7px 7px 4px #343a40; border: 1px solid #b2abab;">
					<h4 class="card-header">Training</h4>
					<div class="card-body">
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Sapiente esse necessitatibus neque.</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary">Learn More</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-4">
				<div class="card h-100"
					style="box-shadow: 7px 7px 4px #343a40; border: 1px solid #b2abab;">
					<h4 class="card-header">Consulting</h4>
					<div class="card-body">
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Reiciendis ipsam eos, nam perspiciatis natus
							commodi similique totam consectetur praesentium molestiae atque
							exercitationem ut consequuntur, sed eveniet, magni nostrum sint
							fuga.</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary">Learn More</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-4">
				<div class="card h-100"
					style="box-shadow: 7px 7px 4px #343a40; border: 1px solid #b2abab;">
					<h4 class="card-header">ARM Tool</h4>
					<div class="card-body">
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Sapiente esse necessitatibus neque.</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary">Learn More</a>
					</div>
				</div>
			</div>
		</div>

		<div class="row" style="padding-bottom: 13px;">
			<div class="col-lg-4 mb-4" style="margin-bottom: 0 !important;">
				<div class="mb-12">
					<div class="card h-100"
						style="box-shadow: 7px 7px 4px #343a40; border: 1px solid #b2abab; margin-bottom: 31px;">
						<h4 class="card-header">Blogs</h4>
						<div class="card-body">
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Sapiente esse necessitatibus neque.</p>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">Learn More</a>
						</div>
					</div>
				</div>
				<div class="mb-12">
					<div class="card h-100"
						style="box-shadow: 7px 7px 4px #343a40; border: 1px solid #b2abab;">
						<h4 class="card-header">Latest News in Privacy</h4>
						<div class="card-body">
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Sapiente esse necessitatibus neque.</p>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">Learn More</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-8 mb-8">
				<div class="card h-100"
					style="box-shadow: 7px 7px 4px #343a40; border: 1px solid #b2abab;">
					<h4 class="card-header">ARM Tool - Request Free Total</h4>
					<form>
						<div class="card-body">

							<div class="form-group row">
								<label for="inputEmail3" class="col-sm-3 col-form-label">Name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="inputEmail3"
										placeholder="Email">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputEmail3" class="col-sm-3 col-form-label">Email</label>
								<div class="col-sm-9">
									<input type="email" class="form-control" id="inputEmail3"
										placeholder="Email">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword3" class="col-sm-3 col-form-label">Organization</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="inputPassword3"
										placeholder="Password">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword3" class="col-sm-3 col-form-label">Country</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="inputPassword3"
										placeholder="Password">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword3" class="col-sm-3 col-form-label">Expectation
									from Tool</label>
								<div class="col-sm-9">
									<textarea type="text" class="form-control" id="inputPassword3"
										placeholder="Password"></textarea>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-3"></div>
								<div class="col-sm-9">
									<div class="form-check">
										<input class="form-check-input" type="checkbox"
											id="gridCheck1"> <label class="form-check-label"
											for="gridCheck1"> Example checkbox </label>
									</div>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-10"></div>
							</div>

						</div>
						<div class="card-footer" style="text-align: right;">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<p class="sint">
			<span>Our Customers</span>
		</p>
		<div class="row">
			<!-- <div class="col-lg-2 col-sm-4 mb-4">
				<img class="img-fluid" src="http://placehold.it/500x300" alt="">
			</div>
			<div class="col-lg-2 col-sm-4 mb-4">
				<img class="img-fluid" src="http://placehold.it/500x300" alt="">
			</div>
			<div class="col-lg-2 col-sm-4 mb-4">
				<img class="img-fluid" src="http://placehold.it/500x300" alt="">
			</div>
			<div class="col-lg-2 col-sm-4 mb-4">
				<img class="img-fluid" src="http://placehold.it/500x300" alt="">
			</div>
			<div class="col-lg-2 col-sm-4 mb-4">
				<img class="img-fluid" src="http://placehold.it/500x300" alt="">
			</div>
			<div class="col-lg-2 col-sm-4 mb-4">
				<img class="img-fluid" src="http://placehold.it/500x300" alt="">
			</div> -->
		</div>
	</div>
	<!-- /.container -->

	<!-- Footer --><%@include file="./shared/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${vendor}/jquery/jquery.min.js"></script>
	<script src="${vendor}/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
