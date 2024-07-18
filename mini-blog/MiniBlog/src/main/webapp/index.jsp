
<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MiniBlog</title>
<%@include file="components/allcss.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 green;
}
</style>
</head>
<body>
	<%@include file="components/navbar.jsp"%>


	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="3" aria-label="Slide 4"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="4" aria-label="Slide 5"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="5" aria-label="Slide 6"></button>

		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/img-7.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>

			<div class="carousel-item">
				<img src="img/img-10.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/img-8.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/img-12.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/img-4.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/img-2.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>

	</div>


	<div class="container p-3">
		<b><p class="text-center fs-1 text-success">Key Features of
				our MiniBlog</p></b>

		<div class="row">
			<div class="col-md-6 paint-card">

				<div class="card paint-card">
					<div class="card-body">
						<b><p class="fs-10">Benefits of Blogging</p></b>
						<p>
						<li><b>Mental Clarity:</b> The act of wandering can clear
							your mind, reducing stress and anxiety. It’s a great way to
							disconnect from digital distractions and reconnect with yourself.
						</li>
						<li><b>Enhanced Creativity:</b> As mentioned, wandering
							stimulates creativity. The new environments and experiences can
							spark fresh ideas and perspectives.</li>

						<li><b>Physical Health:</b> Walking is a great form of
							exercise. It improves cardiovascular health, boosts your mood,
							and increases energy levels.</li>

						<li><b> Immersion:</b> When wandering in a new place, you get
							to experience the local culture in an authentic way. You see how
							people live, work, and play, gaining insights that a guided tour
							might not provide.</li>

						<li><b>Rediscovering Curiosity:</b> When you wander, you tap into a
							childlike sense of curiosity. Every corner turned, every path
							chosen, becomes a gateway to the unknown. It’s a chance to
							explore without preconceived notions or expectations, allowing
							the world to surprise and delight you.</li>
						</p>
					</div>
				</div>

			</div>

			<div class="col-md-6 paint-card">
				<img class="img" alt="" src="img/img-13.jpg" height="430px">
			</div>

		</div>
	</div>




	<hr>


	<div class="container p-2">
		<b><p class="text-center fs-2 ">Our Team</p></b>

		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card img">
					<div class="card-body text-center">
						<img src="img/shahzadphoto.jpeg" width="250px" height="300px">
						<p class="fw-bold fs-5">Md Shahzad Alam</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card img">
					<div class="card-body text-center">
						<img src="img/my-photo.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Md Shahzad Alam</p>
						<p class="fs-7">(Blogger)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card img">
					<div class="card-body text-center">
						<img src="img/my.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Md Shahzad Alam</p>
						<p class="fs-7">(Blogger)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card img">
					<div class="card-body text-center">
						<img src="img/shahzadphoto.jpeg" width="250px" height="300px">
						<p class="fw-bold fs-5">Md Shahzad Alam</p>
						<p class="fs-7">(Blogger)</p>
					</div>
				</div>
			</div>

		</div>

	</div>

	<%@include file="components/footer.jsp"%>
</body>
</html>