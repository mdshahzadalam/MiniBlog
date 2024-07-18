<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<b><a class="navbar-brand" href="index.jsp"
			style="font-size: 220%"><i class="fa-solid fa-blog"></i>MiniBlog</a></b>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<c:if test="${empty userObj }">
				
				<b><li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index.jsp"><i
								class="fa-solid fa-house-user"></i>&nbsp; Home &nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;</a></li></b>
								
					<b><li class="nav-item"><a class="nav-link active"
							aria-current="page" href="admin_login.jsp"><i
								class="fa-solid fa-right-to-bracket"></i>&nbsp; Admin
								&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</a></li></b>

					<b><li class="nav-item"><a class="nav-link active"
							aria-current="page" href="user_login.jsp"><i
								class="fa-solid fa-user"></i>&nbsp; User &nbsp;&nbsp;
								&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;</a></li></b>
				</c:if>




				<c:if test="${not empty userObj }">



					<form class="d-flex">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-success" type="submit">Search</button>
					</form>

					<div class="dropdown">
						<button class="btn btn-success dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">
							<i class="fa-solid fa-circle-user"></i> ${userObj.fullName }
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="change_password.jsp">Change
									Password</a></li>
							<li><a class="dropdown-item" href="userLogout">Logout</a></li>

						</ul>
					</div>




				</c:if>


				<!--  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>-->

			</ul>

		</div>
	</div>
</nav>