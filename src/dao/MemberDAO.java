package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

	//  회원가입
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

	//  로그인
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

		String sql = "UPDATE member SET name = ?, phone = ?, email = ?, zipcode = ?, addr = ?";

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, member.getName());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(3, member.getEmail());
			pstmt.setInt(4, member.getZipcode());
			pstmt.setString(5, member.getAddr());

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

				if (db_pw.equals(pw)) {
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

	// 비밀번호 변경
	public boolean updatePw(String id, String pw, String new_pw) {
		conn = DBConnection.connect();

		String db_pw = null;
		String sel_sql = "SELECT pw FROM member WHERE id = ?";
		String up_sql = "UPDATE member SET pw = ? WHERE id = ?";

		try {
			pstmt = conn.prepareStatement(sel_sql);
			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				db_pw = rs.getString("pw");

				if (db_pw.equals(pw)) {
					pstmt = conn.prepareStatement(up_sql);
					pstmt.setString(1, new_pw);
					pstmt.setString(2, id);

					pstmt.executeUpdate();
				} else {
					return false;
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		disconnect();
		return true;
	}

	//  아이디 찾기
	public ArrayList<String> findID(String name, String email) {
		conn = DBConnection.connect();

		String sql = "SELECT id FROM member WHERE name = ? and email = ?";
		ArrayList<String> id_list = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				id_list = new ArrayList<String>();
				id_list.add(rs.getString("id"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

		disconnect();
		return id_list;
	}

	// 비밀번호 재발급
	public String reissuancePW(String id, String email) {
		conn = DBConnection.connect();

		char[] tmp = new char[16];
		for (int i = 0; i < tmp.length; i++) {
			int div = (int) Math.floor(Math.random() * 2);

			if (div == 0) { // 0이면 숫자로
				tmp[i] = (char) (Math.random() * 10 + '0');
			} else { // 1이면 알파벳
				tmp[i] = (char) (Math.random() * 26 + 'A');
			}
		}

		String new_pw = new String(tmp);

		String sql = "UPDATE member SET pw = ? WHERE id = ? and email = ?";

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, new_pw);
			pstmt.setString(2, id);
			pstmt.setString(3, email);

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

		disconnect();
		return new_pw;
	}

	// 아이디 중복 검사
	public boolean isIdDup(String id) {
		conn = DBConnection.connect();

		String sql = "SELECT id FROM member";

		try {
			pstmt = conn.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				if (rs.getString(1).equals(id)) {
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
}
