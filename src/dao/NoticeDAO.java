package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import db.DBConnection;
import db.DBmanager;
import dto.Notice;
import dto.Paging;



public class NoticeDAO {

	Connection conn;
	PreparedStatement pstmt;
	int nid;
	int visitor;
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
	
	public ArrayList<Notice> showN(){ //DB에서 Notice 테이블의 정보를 받아와 datas에 저장

		ArrayList<Notice> datas=new ArrayList();
		try {
			conn=DBConnection.connect();
			
			String sql="select * from notice order by nid desc";
			pstmt=conn.prepareStatement(sql);



			ResultSet rs=pstmt.executeQuery();

			while(rs.next()) {
				Notice notice=new Notice();

				notice.setNid(rs.getInt("nid"));
				notice.setNtitle(rs.getString("ntitle"));
				notice.setNcon(rs.getString("ncon"));
				notice.setVisitor(rs.getInt("visitor"));
				notice.setDay(rs.getString("day"));
				notice.setSort(rs.getString("sort"));
			
				datas.add(notice);

				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		finally {
			disconnect();
		}

		return datas;
	}


	public boolean newNotice(Notice n){ //뷰로부터 받아온 데이터들을 DB에 삽입하는 메소드
		try {
			conn=DBmanager.connect();
			String sql="insert into notice (nid,ntitle,ncon,day) values(cnt.NEXTVAL,?,?,?)"; //cnt.NEXTVAL은 저장될때마다 숫자가 1씩 증가 auto_increment와 비슷함
			pstmt=conn.prepareStatement(sql);
			// insert가 실행된 시간 저장
			SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm");


			Date time = new Date();

			String time1 = format1.format(time);


			pstmt.setString(1, n.getNtitle());
			pstmt.setString(2, n.getNcon());
			pstmt.setString(3, time1);
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


	
	public boolean delNotice(int nid){ // 삭제할 공지사항의 nid를 뷰로부터 받아와 삭제
		try {
			conn=DBmanager.connect();
			String sql="delete from notice where nid=?";
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

	public ArrayList<Notice> show(int nid1) { // 뷰로부터 상세내용을 볼 nid를 받아와 뷰에 출력해줌

		ArrayList<Notice> datas=new ArrayList();
		try {
			conn=DBmanager.connect();
			String sql="select * from Notice where nid=?";
			pstmt=conn.prepareStatement(sql);

			pstmt.setInt(1, nid1);

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
			String sql2="update Notice set visitor=visitor+1 where nid=?";
			pstmt=conn.prepareStatement(sql2);
			pstmt.setInt(1, nid1);
			pstmt.executeUpdate();
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
	public ArrayList<Notice> searchNtitle(String s) { 

		ArrayList<Notice> datas=new ArrayList();
		try {
			conn=DBmanager.connect();
			//select * from Notice where ntitle like %s% 는 ntitle의 데이터중에 s(뷰에서 받아온 특정문자열)이 있는지 확인하는 쿼리문 
			String sql="select * from Notice where ntitle like ?";
			pstmt=conn.prepareStatement(sql);

			pstmt.setString(1, ("%"+s+"%"));
			
			ResultSet rs=pstmt.executeQuery();

			while(rs.next()) {
				Notice notice=new Notice();

				notice.setNid(rs.getInt("nid"));
				notice.setNtitle(rs.getString("ntitle"));
				notice.setNcon(rs.getString("ncon"));
				notice.setVisitor(rs.getInt("visitor"));
				notice.setDay(rs.getString("day"));
				notice.setSort(rs.getString("sort"));
				//day�� ���߿� ó������ oracle���� ó�� or �˰��򿡼� ó��

				datas.add(notice);


			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		finally {
			disconnect();
		}

		return datas;
	}
	public ArrayList<Notice> searchNcon(String s) {

		ArrayList<Notice> datas=new ArrayList();
		try {
			conn=DBmanager.connect();
			//select * from Notice where ncon like %s% 는 ncon의 데이터중에 s(뷰에서 받아온 특정문자열)이 있는지 확인하는 쿼리문 
			String sql="select * from Notice where ncon like ?";
			pstmt=conn.prepareStatement(sql);

			pstmt.setString(1, ("%"+s+"%"));


			ResultSet rs=pstmt.executeQuery();

			while(rs.next()) {
				Notice notice=new Notice();

				notice.setNid(rs.getInt("nid"));
				notice.setNtitle(rs.getString("ntitle"));
				notice.setNcon(rs.getString("ncon"));
				notice.setVisitor(rs.getInt("visitor"));
				notice.setDay(rs.getString("day"));
				notice.setSort(rs.getString("sort"));
				//day�� ���߿� ó������ oracle���� ó�� or �˰��򿡼� ó��

				datas.add(notice);


			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		finally {
			disconnect();
		}

		return datas;
	}
	/*
	// 리스트 페이지에 보여줄 로직(페이징 처리)
	public ArrayList<Notice> getList(int startRow, int endRow) {
		// 페이징 처리를 위한 sql / 인라인뷰, rownum 사용
		ArrayList datas = new ArrayList<>(); // list 객체 생성

		try {
			conn=DBmanager.connect();// 커넥션을 얻어옴
			String sql ="select * from (select nid,ntitle,ncon,visitor,day,sort,rownum as rn from Notice order by nid asc) where rn between ? and ?";

			int page = 1;



			int itemsInAPage = 10;

			int limitFrom = (page-1) * itemsInAPage;

			int totalPage =10;
			pstmt = conn.prepareStatement(sql); // sql 정의
			pstmt.setInt(1, limitFrom); // sql 물음표에 값 매핑
			pstmt.setInt(2, itemsInAPage);
			ResultSet rs = pstmt.executeQuery();
			rs = pstmt.executeQuery(); // sql 실행
			if (rs.next()) { // 데이터베이스에 데이터가 있으면 실행

				do {
					// 반복할 때마다 ExboardDTO 객체를 생성 및 데이터 저장
					Notice noti = new Notice();
					noti.setNid(rs.getInt("nid"));
					noti.setNtitle(rs.getString("ntitle"));
					noti.setNcon(rs.getString("ncon"));
					noti.setVisitor(rs.getInt("visitor"));
					noti.setDay(rs.getString("day"));
					noti.setSort(rs.getString("sort"));


					datas.add(noti); // list에 0번 인덱스부터 board 객체의 참조값을 저장
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect(); // DB 연결 종료 / Connection 반환
		}
		return datas; // list 반환
	}


	public int getCount(){
		int count = 0;
		String sql = "select count(*) from Notice";
		try {
			conn=DBmanager.connect();
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			rs = pstmt.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return count; // 총 레코드 수 리턴
	}

	public ArrayList<Notice> selectAllMember(Paging paging){



		int startNum = paging.getStartNum();
		int endNum = paging.getEndNum();



		String sql = "SELECT * FROM ("
				+ "SELECT * FROM ("
				+ "SELECT ROWNUM row_num, Notice.* FROM Notice"
				+ ") WHERE row_num >= ?"
				+ ") WHERE row_num <= ?";
		ArrayList<Notice> datas = new ArrayList<Notice>();
		try{
			conn=DBmanager.connect();// 커넥션을 얻어옴
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startNum);
			pstmt.setInt(2, endNum);
			ResultSet rs = pstmt.executeQuery();
			rs = pstmt.executeQuery();
			while(rs.next()){

				Notice noti = new Notice();
				noti.setNid(rs.getInt("nid"));
				noti.setNtitle(rs.getString("ntitle"));
				noti.setNcon(rs.getString("ncon"));
				noti.setVisitor(rs.getInt("visitor"));
				noti.setDay(rs.getString("day"));
				noti.setSort(rs.getString("sort"));


				datas.add(noti);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			disconnect();
		}
		return datas;
	}

	public int getAllCount() {
		String sql = "SELECT COUNT(*) as count FROM Notice";
		conn=DBmanager.connect();// 커넥션을 얻어옴
		int count = 0;
		try{
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			rs = pstmt.executeQuery();
			if(rs.next()){
				count = rs.getInt("count");
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			disconnect();
		}
		return count;
	}

*/



}