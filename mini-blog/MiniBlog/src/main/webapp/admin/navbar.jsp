<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">

	<div class="container-fluid">
		<b><a class="navbar-brand" href="index.jsp"
			style="font-size: 18 0%"><i class="fa-solid fa-blog"></i>MiniBlog</a></b>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			<b><li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index.jsp"><i
								class="fa-solid fa-house-user"></i>&nbsp; Home &nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;</a></li></b>
			
			<b><li class="nav-item"><a class="nav-link active"
						aria-current="page" href="content.jsp">Content</a></li></b>

					<b><li class="nav-item"><a class="nav-link active"
						aria-current="page" href="view_content.jsp">
							Content-Details</a></li></b>

				<b><li class="nav-item"><a class="nav-link active"
						aria-current="page" href="view_user.jsp">User-Details &nbsp;
							&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</a></li></b>
				<t>
			</ul>
			<!--  <form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-success" type="submit">Search</button>
			</form>    -->

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin </button>&nbsp;&nbsp;
								&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>