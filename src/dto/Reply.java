package dto;

public class Reply {
	private int rid;
	private int qid;
	private String day;
	private String rcon;
	private String id;//입력받을 관리자 id
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getRcon() {
		return rcon;
	}

	public void setRcon(String rcon) {
		this.rcon = rcon;
	}

}