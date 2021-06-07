package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import db.DBConnection;
import dto.Member;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;

	public void disconnect() {
		try {
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public boolean regist(Member mb) {
		DBConnection.connect();

		String sql = "INSERT INTO member (id, pw, name, phone, email, addr) VALUES (?, ?, ?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mb.getId());
			pstmt.setString(2, mb.getPw());
			pstmt.setString(3, mb.getName());
			pstmt.setString(4, mb.getPhone());
			pstmt.setString(5, mb.getEmail());
			pstmt.setString(6, mb.getAddr());

			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		
		return true;

	}
}
