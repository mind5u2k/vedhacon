<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="container">

	<p class="sint" style="padding-top: 13px;">
		<span>TCI Model</span>
	</p>
	<div class="row" style="margin-bottom: 32px;">
		<div class="col-lg-12">
			<div class="card h-100"
				style="box-shadow: 7px 7px 4px #343a40; border: 1px solid #b2abab;">
				<div class="card-body" style="font-size: 15px;">
					<p style="text-align: center;">
						<img class="img-fluid rounded mb-4" src="${images}/tciModel.png"
							style="margin-bottom: 9px !important;" alt="">
					</p>
					<p class="pointers">At Vedhacon, we believe in enablement first
						rather than consult and implement first. We follow TCI - Train,
						Consult & implement Model to ensure that our customers are first
						enabled through Training to bring them to a minimum benchmark of
						knowledge. Post training, the staff is expected to perform gap
						analysis before our SMEs get onboard for consulting. Once through
						with consulting, Team Vedhacon supports in implementation through
						various means. Implementation can involve Policies & Procedures
						definition, Education, Documentation, Tooling and Technical
						Controls Design etc.</p>

					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a>More Details</a></li>
					</ol>
					<div class="row">
						<!-- Sidebar Column -->
						<div class="col-lg-3 mb-4">
							<div class="list-group">
								<div onclick="train();" class="list-group-item active train"
									style="cursor: pointer;">Train</div>
								<div onclick="consult();" class="list-group-item consult"
									style="cursor: pointer;">Consult</div>
								<div onclick="implement();" class="list-group-item implement"
									style="cursor: pointer;">Implement</div>
							</div>
						</div>
						<!-- Content Column -->
						<div class="col-lg-9 mb-4 data">
							<c:if test="${title == 'TCI Model' }">
								<%@include file="train.jsp"%>
							</c:if>
							<c:if test="${title == 'Train' }">
								<%@include file="train.jsp"%>
							</c:if>
							<c:if test="${title == 'Consult' }">
								<%@include file="consult.jsp"%>
							</c:if>
							<c:if test="${title == 'Implement' }">
								<%@include file="implement.jsp"%>
							</c:if>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
</div>

<script>
	function train() {
		$(".train").addClass("active");
		$(".consult").removeClass("active");
		$(".implement").removeClass("active");
		$.ajax({
			type : "GET",
			url : "train",
			success : function(response) {
				$('.data').html(response);
			},
			error : function(e) {
				Console.log('Error: ' + e);
			}
		});
	}

	function consult() {
		$(".train").removeClass("active");
		$(".consult").addClass("active");
		$(".implement").removeClass("active");
		$.ajax({
			type : "GET",
			url : "consult",
			success : function(response) {
				$('.data').html(response);
			},
			error : function(e) {
				Console.log('Error: ' + e);
			}
		});
	}

	function implement() {
		$(".train").removeClass("active");
		$(".consult").removeClass("active");
		$(".implement").addClass("active");
		$.ajax({
			type : "GET",
			url : "implement",
			success : function(response) {
				$('.data').html(response);
			},
			error : function(e) {
				Console.log('Error: ' + e);
			}
		});
	}
</script>
<c:if test="${title == 'Train' }">
	<script>
		$(function() {
			$(window).scrollTop($('.pointers').offset().top);
			$(".train").addClass("active");
			$(".consult").removeClass("active");
			$(".implement").removeClass("active");
		});
	</script>
</c:if>

<c:if test="${title == 'Consult' }">
	<script>
		$(function() {
			$(window).scrollTop($('.pointers').offset().top);
			$(".train").removeClass("active");
			$(".consult").addClass("active");
			$(".implement").removeClass("active");
		});
	</script>
</c:if>


<c:if test="${title == 'Implement' }">
	<script>
		$(function() {
			$(window).scrollTop($('.pointers').offset().top);
			$(".train").removeClass("active");
			$(".consult").removeClass("active");
			$(".implement").addClass("active");
		});
	</script>
</c:if>
