package com.file.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.db.DBConnect;

import com.entity.Files;
@WebServlet("/upload")
@MultipartConfig
public class UploadFile extends HttpServlet{
	
	private static Connection conn;
	public UploadFile(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Part p = req.getPart("files");
        String fileName = p.getSubmittedFileName();
        
        String remark = req.getParameter("remark");
        
        HttpSession session = req.getSession();
        
        try {
			conn = DBConnect.getConn();
			
			PreparedStatement ps = conn.prepareStatement("insert into img_details(img_name, remark) values(?,?)");
			ps.setString(1,  fileName);
			ps.setString(2, remark);
			
			int i = ps.executeUpdate();
			
			if(i == 1 ) {
				String path = getServletContext().getRealPath("")+"imgs";
				File file = new File(path);
				p.write(path+File.separator+fileName);
				
				session.setAttribute("msg", "Upload Success");
				
				resp.sendRedirect("content.jsp");
			}
			else {
				System.out.print("error on server");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
        
        
        
	}
	
	public List<Files> getAllFiles() {
		List<Files> list = new ArrayList<Files>();
        Files d = null;
		try {

			String sql = "select * from img_details order by id desc";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Files();
				d.setId(rs.getInt(1));
				d.setImg_name(rs.getString(2));
				d.setRemark(rs.getString(3));
				
				list.add(d);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
