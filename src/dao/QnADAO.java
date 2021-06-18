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
import dto.QnA;
import dto.QnASet;
import dto.Reply;


public class QnADAO {
	Connection conn;
	PreparedStatement pstmt;
	int qcnt=1;
	int rcnt=1;
	
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
	// QnA 보여주는 메서드-댓글도 함께 보여줄 예정
	public ArrayList<QnA> showQ(){
		ArrayList<QnA> datas=new ArrayList();
		try {
			conn=DBmanager.connect();
			String sql="select * from QnA order by qid desc";
			pstmt=conn.prepareStatement(sql);

			

			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {//게시글 모음
	
				QnA q=new QnA();
				
				q.setDay(rs.getString("day"));//date타입을 이용해서 불러봤는데 안되면 바꿔야함
				q.setQid(rs.getInt("qid"));
				q.setQcon(rs.getString("qcon"));
				q.setQtitle(rs.getString("qtitle"));
			
				
				q.setQstatenum(rs.getInt("qstatenum"));
				System.out.println(rs.getInt("qstatenum"));
				// qstatenum이 0보다 크면 qstate를 답변완료로 바꿔주고 0일 경우는 접수완료로 바꿔줌
				if(rs.getInt("qstatenum")>0) {
					String sqla="update QnA set qstate='답변완료' where qid=?";
					pstmt=conn.prepareStatement(sqla);

					pstmt.setInt(1, rs.getInt("qid"));
					pstmt.executeUpdate();
					q.setQstate(rs.getString("qstate"));
				} else {
					String sqla="update QnA set qstate='접수완료' where qid=?";
					pstmt=conn.prepareStatement(sqla);

					pstmt.setInt(1, rs.getInt("qid"));
					pstmt.executeUpdate();
					q.setQstate(rs.getString("qstate"));
				}
				
				q.setSort(rs.getString("sort"));
				

				datas.add(q);
				

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
	
	
	public ArrayList<QnASet> getAll(int qid){  // qid에 맞는 QnA와 댓글들을 한번에 출력

		ArrayList<QnASet> datas=new ArrayList();
		
		try {
			conn=DBConnection.connect();
			String sql="select * from QnA where qid=?";
			pstmt=conn.prepareStatement(sql);

			pstmt.setInt(1, qid);

			ResultSet rs=pstmt.executeQuery();
			
			while(rs.next()) {
				QnASet qnas=new QnASet();
				QnA qna=new QnA();
				qna.setQid(rs.getInt("qid"));
				qna.setDay(rs.getString("day"));
				qna.setQtitle(rs.getString("qtitle"));
				qna.setQstate(rs.getString("qstate"));
				qna.setQstatenum(Integer.parseInt(rs.getString("qstatenum")));
				qna.setQcon(rs.getString("qcon"));
				qna.setSort(rs.getString("sort"));
				qna.setId(rs.getString("id"));
				

				ArrayList<Reply> rlist=new ArrayList();

				String sql2="select * from reply where qid=? order by rid desc";
				pstmt=conn.prepareStatement(sql2);
				pstmt.setInt(1, qid);
				ResultSet rs2=pstmt.executeQuery();
				int c=0;
				while(rs2.next()) {
					Reply r=new Reply();
					r.setRid(rs2.getInt("rid"));
					r.setQid(rs2.getInt("qid"));
					r.setDay(rs2.getString("day"));
					r.setRcon(rs2.getString("rcon"));
					
					rlist.add(r);
					
				}
				rs2.close();
				
				qnas.setQna(qna);
				qnas.setRlist(rlist);

				datas.add(qnas);

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
			String sql="insert into QnA (qid,qtitle,qcon,qstate,sort,day,id) values(cnt2.NEXTVAL,?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			
			SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm");
			
					
			Date time = new Date();
					
			String time1 = format1.format(time);
			
					
			//System.out.println(time1); //ex) 2021-06-11 11:52:18 현재시간출력
		
			
			pstmt.setString(1, qna.getQtitle());
			pstmt.setString(2, qna.getQcon());
			
			pstmt.setString(3, "접수완료");
			pstmt.setString(4, qna.getSort());
			pstmt.setString(5, time1); //
			pstmt.setString(6, qna.getId());
			
		
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
			String sql1="insert into reply (rid,qid,rcon,day) values(cnt3.NEXTVAL,?,?,?)";//id는 관리자만 하므로 스크립트릿으로 뺄지 확인
			pstmt=conn.prepareStatement(sql1);
			
			pstmt.setInt(1, reply.getQid());
			pstmt.setString(2, reply.getRcon());
			pstmt.setString(3, time1);
			
			
			pstmt.executeUpdate();
			String sql2="update QnA set qstatenum=qstatenum+1 where qid=?"; //댓글이 달렸을시 qstatenum을 1을 더해줌
			
			pstmt=conn.prepareStatement(sql2);
			pstmt.setInt(1, reply.getQid());
			pstmt.executeUpdate();
			String sql3="select * from QnA order by qid desc";
			pstmt=conn.prepareStatement(sql3);

			

			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {//게시글 모음
				
				QnA q=new QnA();
				
				q.setDay(rs.getString("day"));//date타입을 이용해서 불러봤는데 안되면 바꿔야함
				q.setQid(rs.getInt("qid"));
				q.setQcon(rs.getString("qcon"));
				q.setQtitle(rs.getString("qtitle"));
			
				
				q.setQstatenum(rs.getInt("qstatenum"));
				System.out.println(rs.getInt("qstatenum"));
				if(rs.getInt("qstatenum")>0) {
					String sqla="update QnA set qstate='답변완료' where qid=?"; //qstatenum이 0보다 크면 답변완료 0이면 접수완료로 바꿔줌 (댓글삭제하거나 댓글을 새로 만들떄마다 확인
					pstmt=conn.prepareStatement(sqla);

					pstmt.setInt(1, rs.getInt("qid"));
					pstmt.executeUpdate();
					q.setQstate(rs.getString("qstate"));
				} else {
					String sqla="update QnA set qstate='접수완료' where qid=?";
					pstmt=conn.prepareStatement(sqla);

					pstmt.setInt(1, rs.getInt("qid"));
					pstmt.executeUpdate();
					q.setQstate(rs.getString("qstate"));
				}
				
				q.setSort(rs.getString("sort"));
				

				
				

			}
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
	public boolean delReply(int rid, int qid){
		try {
			conn=DBmanager.connect();
			Reply reply = new Reply();
			String sql2="update QnA set qstatenum= qstatenum - 1 where qid=?";
			pstmt=conn.prepareStatement(sql2);
			pstmt.setInt(1, qid);
			System.out.println(reply.getQid());
			pstmt.executeUpdate();
			String sql="delete from reply where rid=?";//관리자 일 경우 삭제
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, rid);
			pstmt.executeUpdate();
			
			
			String sql3="select * from QnA order by qid desc";
			pstmt=conn.prepareStatement(sql3);

			

			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {//게시글 모음
				
				QnA q=new QnA();
				
				q.setDay(rs.getString("day"));//date타입을 이용해서 불러봤는데 안되면 바꿔야함
				q.setQid(rs.getInt("qid"));
				q.setQcon(rs.getString("qcon"));
				q.setQtitle(rs.getString("qtitle"));
			
				
				q.setQstatenum(rs.getInt("qstatenum"));
				System.out.println(rs.getInt("qstatenum"));
				if(rs.getInt("qstatenum")>0) {
					String sqla="update QnA set qstate='답변완료' where qid=?";
					pstmt=conn.prepareStatement(sqla);

					pstmt.setInt(1, rs.getInt("qid"));
					pstmt.executeUpdate();
					q.setQstate(rs.getString("qstate"));
				} else {
					String sqla="update QnA set qstate='접수완료' where qid=?";	//qstatenum이 0보다 크면 답변완료 0이면 접수완료로 바꿔줌 (댓글삭제하거나 댓글을 새로 만들떄마다 확인)
					pstmt=conn.prepareStatement(sqla);

					pstmt.setInt(1, rs.getInt("qid"));
					pstmt.executeUpdate();
					q.setQstate(rs.getString("qstate"));
				}
				
				q.setSort(rs.getString("sort"));
				

				
				

			}
		
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
	
	public ArrayList<QnA> show(int qid1) { //qid에 맞는 QnA 상세내용 출력

		ArrayList<QnA> datas=new ArrayList();
		try {
			conn=DBmanager.connect();
			String sql="select * from QnA where qid=?";
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, qid1);
			
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				QnA qna = new QnA();
 
				qna.setQid(rs.getInt("qid"));
				qna.setId(rs.getString("id"));
				qna.setQtitle(rs.getString("qtitle"));
				qna.setQcon(rs.getString("qcon"));
				qna.setDay(rs.getString("day"));
				
				datas.add(qna);
				
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
	public ArrayList<QnA> searchQtitle(String s) { // QnA 제목 검색

		ArrayList<QnA> datas=new ArrayList();
		try {
			conn=DBmanager.connect();
			//NoticeDAO의 searchNtitle 쿼리문과 동작 동일
			String sql="select * from QnA where qtitle like ?";
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1,  ("%"+s+"%"));
			
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				QnA qna = new QnA();
 
				qna.setQid(rs.getInt("qid"));
				qna.setQtitle(rs.getString("qtitle"));
				qna.setQcon(rs.getString("qcon"));
				qna.setDay(rs.getString("day"));
				qna.setSort(rs.getString("sort"));
				qna.setQstate(rs.getString("qstate"));
				datas.add(qna);
				
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}

		return datas;
	}
	public ArrayList<QnA> searchQcon(String s) {// QnA 내용 검색

		ArrayList<QnA> datas=new ArrayList();
		try {
			conn=DBmanager.connect();
			//NoticeDAO의 searchNcon 쿼리문과 동작 동일
			String sql="select * from QnA where qcon like ?";
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1,  ("%"+s+"%"));
			
			System.out.println(sql);
			ResultSet rs=pstmt.executeQuery();

			while(rs.next()) {
				QnA qna=new QnA();
				
				qna.setQid(rs.getInt("qid"));
				qna.setQtitle(rs.getString("qtitle"));
				qna.setQcon(rs.getString("qcon"));
				qna.setDay(rs.getString("day"));
				qna.setSort(rs.getString("sort"));
				qna.setQstate(rs.getString("qstate"));

				datas.add(qna);
				

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
}
