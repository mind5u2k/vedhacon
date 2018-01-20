<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="container">

	<p class="sint" style="padding-top: 13px;">
		<span>What & Why Privacy ?</span>
	</p>
	<div class="row" style="margin-bottom: 32px;">
		<%-- <div class="col-lg-12">
			<p style="text-align: center;">
				<img class="img-fluid rounded mb-4" src="${images}/privacy.png"
					style="margin: 0 !important;" alt="">
			</p>
		</div> --%>

		<div class="col-lg-12">
			<div class="card h-100"
				style="box-shadow: 7px 7px 4px #343a40; border: 1px solid #b2abab;">
				<div class="card-body" style="font-size: 15px;">
					<p style="text-align: center;">
						<img class="img-fluid rounded mb-4" src="${images}/privacy.png"
							style="margin: 0 !important;" alt="">
					</p>
					<p>"What is Privacy & Why is it important? Privacy can simply
						be defined as the right to be left alone OR ability of an
						individual to stop information about self from being known to
						people other than they choose to give. Right to Privacy may not be
						absolute in certain cases where it is collected by governments and
						as per law of the land for National Identification, Security &
						Emergency services.</p>
					<p class="pointers">Without privacy life would be too risky. An
						individual would be highly vulnerable to control by others and
						shall lose freedom. An individual can be manipulated, harmed or
						exploited in absence of privacy or due to privacy breach. Hence,
						Privacy is extremely important for an individual to feel secure
						and free."</p>

					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a>More Details</a></li>
					</ol>
					<div class="row">
						<!-- Sidebar Column -->
						<div class="col-lg-3 mb-4">
							<div class="list-group">
								<div onclick="privacyLaw();" class="list-group-item pl"
									style="cursor: pointer;">Privacy Laws</div>
								<div onclick="gdpr();" class="list-group-item gdp"
									style="cursor: pointer;">GDPR</div>
								<div onclick="dataProtectionIndia();"
									class="list-group-item dpf" style="cursor: pointer;">Data
									Protection Framework for India</div>
							</div>
						</div>
						<!-- Content Column -->
						<div class="col-lg-9 mb-4 data">
							<c:if test="${title == 'Privacy' }">
								<%@include file="privacyLaw.jsp"%>
							</c:if>
							<c:if test="${title == 'Privacy Laws' }">
								<%@include file="privacyLaw.jsp"%>
							</c:if>
							<c:if test="${title == 'GDPR' }">
								<%@include file="gdpr.jsp"%>
							</c:if>

							<c:if test="${title == 'Data Protection Framework' }">
								<%@include file="dataProtectionIndia.jsp"%>
							</c:if>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>


</div>
<script>
	function privacyLaw() {
		$(".pl").addClass("active");
		$(".gdp").removeClass("active");
		$(".dpf").removeClass("active");
		$.ajax({
			type : "GET",
			url : "privacyLaws",
			success : function(response) {
				$('.data').html(response);
			},
			error : function(e) {
				Console.log('Error: ' + e);
			}
		});
	}

	function gdpr() {
		$(".pl").removeClass("active");
		$(".gdp").addClass("active");
		$(".dpf").removeClass("active");
		$.ajax({
			type : "GET",
			url : "gdpr",
			success : function(response) {
				$('.data').html(response);
			},
			error : function(e) {
				Console.log('Error: ' + e);
			}
		});
	}

	function dataProtectionIndia() {
		$(".pl").removeClass("active");
		$(".gdp").removeClass("active");
		$(".dpf").addClass("active");
		$.ajax({
			type : "GET",
			url : "dataProtectionIndia",
			success : function(response) {
				$('.data').html(response);
			},
			error : function(e) {
				Console.log('Error: ' + e);
			}
		});
	}
</script>
<c:if test="${title == 'Privacy' }">
	<script>
		$(function() {
			$(".pl").addClass("active");
			$(".gdp").removeClass("active");
			$(".dpf").removeClass("active");
		});
	</script>
</c:if>

<c:if test="${title == 'Privacy Laws' }">
	<script>
		$(function() {
			$(window).scrollTop($('.pointers').offset().top);
			$(".pl").addClass("active");
			$(".gdp").removeClass("active");
			$(".dpf").removeClass("active");
		});
	</script>
</c:if>

<c:if test="${title == 'GDPR' }">
	<script>
		$(function() {
			$(window).scrollTop($('.pointers').offset().top);
			$(".pl").removeClass("active");
			$(".gdp").addClass("active");
			$(".dpf").removeClass("active");
		});
	</script>
</c:if>


<c:if test="${title == 'Data Protection Framework' }">
	<script>
		$(function() {
			$(window).scrollTop($('.pointers').offset().top);
			$(".pl").removeClass("active");
			$(".gdp").removeClass("active");
			$(".dpf").addClass("active");
		});
	</script>
</c:if>
