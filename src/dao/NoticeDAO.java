package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.Notice;
import db.DBmanager;



public class NoticeDAO {

	Connection conn;
	PreparedStatement pstmt;

	//화면에 전체 공지보여주는 메소드
	public ArrayList<Notice> showN(int cnt){//cnt: 얼마만큼 보여줄지에 관한 변수

		ArrayList<Notice> datas=new ArrayList();
		try {
			conn=DBmanager.connect();
			//공지에서 보여줄 만큼받아오는 sql
			String sql="select * from notice limit 0,?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, cnt);


			ResultSet rs=pstmt.executeQuery();

			while(rs.next()) {
				Notice notice=new Notice();

				notice.setNid(rs.getInt("nid"));
				notice.setNtitle(rs.getString("ntitle"));
				notice.setNcon(rs.getString("ncon"));
				notice.setVisitor(rs.getInt("visitor"));
				notice.setDay(rs.getString("day"));
				//day는 나중에 처리예정 oracle에서 처리 or 알고리즘에서 처리

				datas.add(notice);


			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
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

	//공지 등록 메소드
	public boolean newNotice(Notice n){//공지 객체를 매개변수로 받음
		try {
			conn=DBmanager.connect();
			String sql="insert into notice (nid,ntitle,ncon,visitor,day) values(?,?,?,?,now())";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, n.getNid());
			pstmt.setString(2, n.getNtitle());
			pstmt.setString(3, n.getNcon());
			pstmt.setInt(4, n.getVisitor());//조회수 처리 알고리즘필요
			pstmt.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
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


	// 공지삭제(계정이 관리자라면)
	public boolean delNotice(int nid){
		try {
			conn=DBmanager.connect();
			String sql="delete from notice where mid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, nid);
			pstmt.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
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
	public ArrayList<Notice> getDBList(){


		ArrayList<Notice> datas=new ArrayList();
		try {
			conn=DBmanager.connect();
			String sql="select * from test order by id asc";
			pstmt=conn.prepareStatement(sql);

			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
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
		}
		finally {
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