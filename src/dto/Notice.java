package dto;

public class Notice {
	private int nid;
	private String ntitle;
	private String ncon;
	private int visitor;
	private String day;
	private String sort;
	private String id;
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public int getNid() {
		return nid;
	}

	public void setNid(int nid) {
		this.nid = nid;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNcon() {
		return ncon;
	}

	public void setNcon(String ncon) {
		this.ncon = ncon;
	}

	public int getVisitor() {
		return visitor;
	}

	public void setVisitor(int visitor) {
		this.visitor = visitor;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

}