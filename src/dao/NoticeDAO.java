package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import db.DBmanager;
import model.Notice;

public class NoticeDAO {

	Connection conn;
	PreparedStatement pstmt;

	// ȭ�鿡 ��ü ���������ִ� �޼ҵ�
	public ArrayList<Notice> showN(int cnt) {// cnt: �󸶸�ŭ ���������� ���� ����

		ArrayList<Notice> datas = new ArrayList<>();
		try {
			conn = DBmanager.connect();
			// �������� ������ ��ŭ�޾ƿ��� sql
			String sql = "select * from notice limit 0,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cnt);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Notice notice = new Notice();

				notice.setNid(rs.getInt("nid"));
				notice.setNtitle(rs.getString("ntitle"));
				notice.setNcon(rs.getString("ncon"));
				notice.setVisitor(rs.getInt("visitor"));
				notice.setDay(rs.getString("day"));
				// day�� ���߿� ó������ oracle���� ó�� or �˰��򿡼� ó��

				datas.add(notice);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return datas;
	}

	// ���� ��� �޼ҵ�
	public boolean newNotice(Notice n) {// ���� ��ü�� �Ű������� ����
		try {
			conn = DBmanager.connect();
			String sql = "insert into notice (nid,ntitle,ncon,visitor,day) values(?,?,?,?,now())";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, n.getNid());
			pstmt.setString(2, n.getNtitle());
			pstmt.setString(3, n.getNcon());
			pstmt.setInt(4, n.getVisitor());// ��ȸ�� ó�� �˰����ʿ�
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return true;
	}

	// ��������(������ �����ڶ��)
	public boolean delNotice(int nid) {
		try {
			conn = DBmanager.connect();
			String sql = "delete from notice where mid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nid);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return true;
	}

	public ArrayList<Notice> getDBList() {

		ArrayList<Notice> datas = new ArrayList();
		try {
			conn = DBmanager.connect();
			String sql = "select * from test order by id asc";
			pstmt = conn.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Notice noti = new Notice();

				noti.setNid(rs.getInt("nid"));
				noti.setNtitle(rs.getString("ntitle"));
				noti.setNcon(rs.getString("ncon"));
				noti.setVisitor(rs.getInt("visitor"));
				noti.setDay(rs.getString("day"));

				datas.add(noti);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return datas;
	}
}