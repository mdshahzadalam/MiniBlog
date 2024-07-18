
<%@page import="com.file.servlet.UploadFile"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="com.db.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Files" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Content</title>
<%@include file="../components/allcss.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body class="bg-light">
	<%@include file="navbar.jsp"%>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-body">
						<p class="text-center fs-3">Image/Video upload</p>

						<%
						String msg = (String) session.getAttribute("msg");
						if (msg != null) {
						%>

						<h4 class="text-center text-success"><%=msg%></h4>
						<%
						session.removeAttribute("msg");
						}
						%>
						<form method="post" action="upload" enctype="multipart/form-data">
							<div class="mb-3">
								<label>Image/Video</label> <input type="file" name="files"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Content</label> <input type="text" name="remark"
									class="form-control">
							</div>
							<div class="text-center ">
								<button class="btn btn-success">Upload</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>


		<table class="table mt-4">
			<thead>
				<tr>
					<th scope="col">Image</th>
					<th scope="col">Remark</th>
				</tr>
			</thead>
			<tbody>
			
			<%
								UploadFile dao2 = new UploadFile(DBConnect.getConn());
								List<Files> list2 = dao2.getAllFiles();
								for (Files d : list2) {
			%>
			
			

				<%
				Connection conn = DBConnect.getConn();
				
				PreparedStatement ps = conn.prepareStatement("insert * from im_details");
				ResultSet rs = ps.executeQuery();

				while (rs.next()) {
				%>
				<tr>
				
				<!--  <%
					if(rs.getString("img_name").endsWith(".mp4")){%>
						<th scope="row"><img alt="" src="imgs/mp4.mp4" width="200px" height="100px"></th>
					<%}
					else if(rs.getString("img_name").endsWith(".pdf")){%>
						<th scope="row"><img alt="" src="imgs/pdf.jpg" width="200px" height="100px"></th>
					<%}
					else{%>
						<th scope="row"><img alt="" src="imgs/
						<%=rs.getString("img_name")%>" width="200px" height="100px"></th>
					<%}
				%>-->
				
					<th scope="row"><img alt="" src="imgs/
						<%=rs.getString("img_name")%>" width="200px" height="100px"></th>
					<td><%=rs.getString("remark") %></td>
					
					<td><a href="edit_image_details.jsp?id=<%=d.getId()%>"
										class="btn btn-sm btn-primary">Edit</a> 
										
										<a
										href="../deleteImage_details?id=<%=d.getId()%>"
										class="btn btn-sm btn-danger">Delete</a></td>

				</tr>
				<%
				}
				%>
				
				<%
				  }
				%>
				

			</tbody>
		</table>
	</div>

</body>
</html>