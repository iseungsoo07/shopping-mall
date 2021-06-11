package dto;



import java.util.ArrayList;

public class QnASet {// QnA게시판과 댓글 집합을 보여주기 위한 클래스
	private QnA qna;
	private ArrayList<Reply> rlist = new ArrayList();

	public QnA getQna() {
		return qna;
	}

	public void setQna(QnA qna) {
		this.qna = qna;
	}

	public ArrayList<Reply> getRlist() {
		return rlist;
	}

	public void setRlist(ArrayList<Reply> rlist) {
		this.rlist = rlist;
	}

}
