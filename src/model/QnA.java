package model;

public class QnA {
	private int qid;
	private String id;
	private String qtitle;

	public String getQtitle() {
		return qtitle;
	}

	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}

	private String qcon;
	private String qstate;
	private String day;
	private String sort;
	private int qstatenum;

	public int getQstatenum() {
		return qstatenum;
	}

	public void setQstatenum(int qstatenum) {
		this.qstatenum = qstatenum;
	}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getQcon() {
		return qcon;
	}

	public void setQcon(String qcon) {
		this.qcon = qcon;
	}

	public String getQstate() {
		return qstate;
	}

	public void setQstate(String qstate) {
		this.qstate = qstate;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

}