package model;

public class Product {
	private int pid; // 상품 id
	private String name; // 상품 명
	private int price; // 상품 가격
	private int visit; // 조회수
	
	private String cate; // 카테고리
	private int ssize; // 상품 사이즈
	private int msize; // 상품 사이즈
	private int lsize; // 상품 사이즈
	private int xlsize; // 상품 사이즈
	public int getSsize() {
		return ssize;
	}

	public void setSsize(int ssize) {
		this.ssize = ssize;
	}

	public int getMsize() {
		return msize;
	}

	public void setMsize(int msize) {
		this.msize = msize;
	}

	public int getLsize() {
		return lsize;
	}

	public void setLsize(int lsize) {
		this.lsize = lsize;
	}

	public int getXlsize() {
		return xlsize;
	}

	public void setXlsize(int xlsize) {
		this.xlsize = xlsize;
	}

	public int getXxlsize() {
		return xxlsize;
	}

	public void setXxlsize(int xxlsize) {
		this.xxlsize = xxlsize;
	}

	private int xxlsize; // 상품 사이즈
	
	private String pcon; // 상품 설명
	private String gender; // 성별
	private String files; // 이미지 경로
	private String day; // 등록 날짜

	public int getVisit() {
		return visit;
	}

	public void setVisit(int visit) {
		this.visit = visit;
	}

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	
	public String getPcon() {
		return pcon;
	}

	public void setPcon(String pcon) {
		this.pcon = pcon;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getFiles() {
		return files;
	}

	public void setFiles(String files) {
		this.files = files;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}



}
