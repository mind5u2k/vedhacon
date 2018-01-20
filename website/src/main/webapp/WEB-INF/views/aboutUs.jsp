<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="container">

	<p class="sint">
		<span>About Us</span>
	</p>
	<div class="row">

		<div class="col-lg-12">
			<div class="card h-100"
				style="box-shadow: 7px 7px 4px #343a40; border: 1px solid #b2abab;">
				<div class="card-body" style="font-size: 15px;">
					<p style="text-align: center;">
						<img class="img-fluid rounded mb-4" src="${images}/aboutUs.png"
							style="border-bottom: 1px solid #ccc; margin-bottom: 9px !important;"
							alt="">
					</p>
					<p>"Vedhacon is a young Organization established in 2016 with
						the focus on emerging ""An Era of Privacy"".
					<p>With ever chang ing human needs, business environment and
						increasing digitization, Data/Information is at the core of every
						activity. With increasing use of Data which could be personal to
						an individual, Privacy of that individual is at risk. Breach of
						the personal information can impact an individual adversely either
						financially, physically, socially or mentally.</p>
					<p>It becomes increasing important that we work towards an ""An
						Era of Privacy"" to make the world a safer place to live.</p>
					<p>At Vedhacon, we believe that Privacy is of utmost important
						today and we would like to contribute towards achieving a
						successful ""An Era of Privacy."""</p>
				</div>
			</div>


		</div>
	</div>


	<p class="sint team" style="padding-top: 13px;">
		<span>Team</span>
	</p>
	<div class="row">

		<div class="col-lg-12">
			<div class="card h-100"
				style="box-shadow: 7px 7px 4px #343a40; border: 1px solid #b2abab;">
				<div class="card-body" style="font-size: 15px;">
					<p>"Team Vedhacon is group of Privacy Enthusiasts who have a
						significant knowledge of privacy, its importance & implications,
						various laws across geographies, implementation and emerging
						trends.</p>
					<p>""Privacy First"" - Our key focus is ""Privacy First""
						through Train, Consult & Implement (TCI) Model. We believe in
						enablement rather than outsourcing. Our vision is to create a vast
						talent pool of Privacy Professionals to meet the industry demand
						and contribute towards and ""An Era of Privacy"" ."</p>
				</div>
			</div>


		</div>
	</div>


	<p class="sint partners" style="padding-top: 13px;">
		<span>Our Partners</span>
	</p>
	<div class="row" style="margin-bottom: 32px;">
		<div class="col-lg-12">
			<div class="card h-100"
				style="box-shadow: 7px 7px 4px #343a40; border: 1px solid #b2abab;">
				<div class="card-body" style="font-size: 15px;">
					<p class="card-text" style="font-size: 15px;">"We are in the
						process of establishing relationship with other Individual Privacy
						Enthusiasts, Training & Consulting Organizations, Legal Firms,
						Industry Bodies and Government Institutions across the globe to
						build a strong network to provide better and integrated services
						to the society.</p>
					<p>You would shortly see these associations and affiliations
						here to get centralized services."</p>
				</div>
			</div>


		</div>
	</div>
	
	
</div>
<c:if test="${title == 'Team' }">
	<script>
		$(function() {
			$(window).scrollTop($('.team').offset().top);
		});
	</script>
</c:if>

<c:if test="${title == 'Partners' }">
	<script>
		$(function() {
			$(window).scrollTop($('.partners').offset().top);
		});
	</script>
</c:if>
