package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import db.DBmanager;
import dto.Notice;
import dto.QnA;
import dto.QnASet;
import dto.Reply;


public class QnADAO {
	Connection conn;
	PreparedStatement pstmt;
	int qcnt=1;
	int rcnt=1;
	// QnA 보여주는 메서드-댓글도 함께 보여줄 예정
	public ArrayList<QnASet> showQ(){
		ArrayList<QnASet> datas=new ArrayList();
		try {
			conn=DBmanager.connect();
			String sql="select * from message limit 0,?";
			pstmt=conn.prepareStatement(sql);

			pstmt.setInt(1, 10);//한 페이지당  게시글 10개씩 보여질 예정

			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {//게시글 모음
				QnASet qd=new QnASet();
				QnA q=new QnA();

				q.setDay(rs.getDate("day")+"일");//date타입을 이용해서 불러봤는데 안되면 바꿔야함
				q.setQid(rs.getInt("qid"));
				q.setQcon(rs.getString("qcon"));
				q.setId(rs.getString("id"));
				q.setQstate(rs.getString("qstate"));

				ArrayList<Reply> rlist=new ArrayList();

				String sql2="select * from reply where qid=? order by day desc";
				pstmt=conn.prepareStatement(sql2);
				pstmt.setInt(1, rs.getInt("qid"));
				ResultSet rs2=pstmt.executeQuery();
				
				while(rs2.next()) {//해당 게시글에서 댓글 모음
					Reply r=new Reply();
					r.setDay(rs2.getDate("day")+"일");
					r.setRid(rs2.getInt("rid"));
					r.setQid(rs2.getInt("qid"));
					r.setRcon(rs2.getString("rcon"));
					r.setId(rs2.getString("ID"));
					
					rlist.add(r);
				
				}
				rs2.close();
				

				qd.setQna(q);
				qd.setRlist(rlist);

				datas.add(qd);

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
	
	//새 QnA게시글 생성
	public  boolean newQnA(QnA qna){
		
		try {
			conn=DBmanager.connect();
			String sql="insert into QnA (qid,id,qcon,qstate,sort,day) values(?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			
			SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
			
					
			Date time = new Date();
					
			String time1 = format1.format(time);
			
					
			//System.out.println(time1); //ex) 2021-06-11 11:52:18 현재시간출력
		
			pstmt.setInt(1, qcnt);//auto_increment 알고리즘 필요 (QID)
			pstmt.setString(2, qna.getId());
			pstmt.setString(3, qna.getQcon());
			pstmt.setString(4, qna.getQstate());
			pstmt.setString(5, qna.getSort());
			pstmt.setString(6, time1); //
			//qstate(답변상태)controller에서 처리 필요할듯
		
			qcnt++;
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
	
	//게시물 삭제
	public  boolean delQnA(int qid){//게시을 삭제하기 위해 게시글 번호받아오기
		try {
			conn=DBmanager.connect();
			String sql="delete from QnA where qid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, qid);
			pstmt.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;//삭제 실패할시 false출
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
	
	//댓글작성
	public boolean newReply(Reply reply){
		try {
			conn=DBmanager.connect();
			SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
			
			
			Date time = new Date();
					
			String time1 = format1.format(time);
			String sql="insert into reply (rid,qid,rcon,day) values(?,?,?,?)";//id는 관리자만 하므로 스크립트릿으로 뺄지 확인
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, rcnt);//rid auto_increment알고리즘
			pstmt.setInt(2, reply.getQid());
			pstmt.setString(3, reply.getRcon());
			pstmt.setString(4, time1);
			
			rcnt++;
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
	

	
	
	//댓글삭제
	public boolean delReply(int id){
		try {
			conn=DBmanager.connect();
			String sql="delete from reply where id=?";//관리자 일 경우 삭제
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
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

}
