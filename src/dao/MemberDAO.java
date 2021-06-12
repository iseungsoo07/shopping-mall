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
		} finally {
			disconnect();
		}
		return false;
	}

	// 회원정보 가져오기
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
		} finally {
			disconnect();
		}

		return member;

	}

	// 회원정보 수정
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
		} finally {
			disconnect();
		}

		return true;
	}

	// 회원탈퇴
	public boolean delete(String id, String pw) {
		conn = DBConnection.connect();

		String sel_sql = "SELECT pw FROM member WHERE id = ?";
		String del_sql = "DELETE FROM member WHERE id = ?";
		String db_pw = null;

		try {
			pstmt = conn.prepareStatement(sel_sql);
			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				db_pw = rs.getString("pw");
				
				if(db_pw.equals(pw)) {
					pstmt = conn.prepareStatement(del_sql);
					pstmt.setString(1, id);
					pstmt.executeUpdate();
				} else {
					System.out.println("비밀번호 오류");
					return false;
				}
			} 

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}

		return true;
	}

	// 회원탈퇴-비밀번호 확인
	public boolean deleteConfirm(String id, String pw) {

		boolean b = false;
		ResultSet rs = null;
		try {
			String sql = "select * from member where id = ? and pw = ?";
			conn = DBConnection.connect();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();

			if (rs.next())
				b = true;

		} catch (Exception e) {

			System.out.println("deleteConfirm err : " + e);

		} finally {

			try {

				if (rs != null)
					rs.close();

				if (pstmt != null)
					pstmt.close();

				if (conn != null)
					conn.close();

			} catch (Exception e2) {

				// TODO: handle exception

			}

		}

		return b;

	}

}
