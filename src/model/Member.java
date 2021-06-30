package model;

public class Member {
	private String id;
	private String pw;
	private String name;
	private String phone;
	private String email;
	private int zipcode;
	private String addr;
	private int rank;
	private int point;
	private int purchase; // 총 구매 금액

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getPurchase() {
		return purchase;
	}

	public void setPurchase(int purchase) {
		this.purchase = purchase;
	}

	public int calcDiscount() {
		int discount = 0;

		if (this.rank == 10) {
			discount = 10;
		} else if (this.rank == 9) {
			discount = 11;
		} else if (this.rank == 8) {
			discount = 12;
		} else if (this.rank == 7) {
			discount = 13;
		} else if (this.rank == 6) {
			discount = 14;
		} else if (this.rank == 5) {
			discount = 15;
		} else if (this.rank == 4) {
			discount = 16;
		} else if (this.rank == 3) {
			discount = 17;
		} else if (this.rank == 2) {
			discount = 18;
		} else {
			discount = 20;
		}

		return 100 - discount;
	}

}
