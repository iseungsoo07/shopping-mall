package model;

/**
 * @author abc17
 *
 */
public class Product {
	private int pid; // �긽�뭹 id
	private String name; // �긽�뭹 紐�
	private int price; // �긽�뭹 媛�寃�
	private int visit; // 議고쉶�닔
	
	private String cate; // 移댄뀒怨좊━
	private int ssize; // �긽�뭹 �궗�씠利�
	private int msize; // �긽�뭹 �궗�씠利�
	private int lsize; // �긽�뭹 �궗�씠利�
	private int xlsize; // �긽�뭹 �궗�씠利�
	public int getSsize() {
		return ssize;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", name=" + name + ", price=" + price + ", visit=" + visit + ", cate=" + cate
				+ ", ssize=" + ssize + ", msize=" + msize + ", lsize=" + lsize + ", xlsize=" + xlsize + ", xxlsize="
				+ xxlsize + ", pcon=" + pcon + ", gender=" + gender + ", files=" + files + ", day=" + day + "]\n";
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

	private int xxlsize; // �긽�뭹 �궗�씠利�
	
	private String pcon; // �긽�뭹 �꽕紐�
	private String gender; // �꽦蹂�
	private String files; // �씠誘몄� 寃쎈줈
	private String day; // �벑濡� �궇吏�

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
