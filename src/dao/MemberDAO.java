package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBConnection;
import model.Member;

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

	// 회원가입
	public boolean regist(Member member) {
		conn = DBConnection.connect();

		String sql = "INSERT INTO member (id, pw, name, phone, email, zipcode, addr) VALUES (?, ?, ?, ?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPw());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getPhone());
			pstmt.setString(5, member.getEmail());
			pstmt.setInt(6, member.getZipcode());
			pstmt.setString(7, member.getAddr());

			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}

		return true;
	}

	// 로그인
	public boolean login(String id, String pw) {
		conn = DBConnection.connect();

		String sql = "SELECT pw FROM member WHERE id = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				if ((rs.getString("pw").equals(pw))) {
					return true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		disconnect();
		return false;
	}

	// 회원 정보 가져오기
	public Member getMember(String id) {
		conn = DBConnection.connect();

		Member member = null;
		String sql = "SELECT * FROM member WHERE id = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				member = new Member();

				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setPhone(rs.getString("phone"));
				member.setEmail(rs.getString("email"));
				member.setZipcode(rs.getInt("zipcode"));
				member.setAddr(rs.getString("addr"));
				member.setRank(rs.getInt("rank"));
				member.setPoint(rs.getInt("point"));
				member.setPurchase(rs.getInt("purchase"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return member;

	}

	// 회원 정보 수정
	public boolean update(Member member) {
		conn = DBConnection.connect();

		String sql = "UPDATE member SET pw = ?, name = ?, phone = ?, email = ?, zipcode = ?, addr = ?";

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, member.getPw());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getPhone());
			pstmt.setString(4, member.getEmail());
			pstmt.setInt(5, member.getZipcode());
			pstmt.setString(6, member.getAddr());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		return true;
	}

	// 회원 탈퇴
	public boolean delete(String id) {
		conn = DBConnection.connect();

		String sql = "DELETE FROM member WHERE id = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		return true;
	}
}
