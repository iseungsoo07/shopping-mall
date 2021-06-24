package model;

public class ProductReview {

	private int reviewid; // 리뷰  id
	private int productid; // 리뷰한 상품 id
	private String userid; // 리뷰를 쓴 사용자 id
	private String productsize; // 상품 크기 
	private int rating; // 평점 (1 ~ 5)
	private String reviewcon; // 리뷰 내용
	private String day; // 등록 날짜

	public int getReviewid() {
		return reviewid;
	}

	public void setReviewid(int reviewid) {
		this.reviewid = reviewid;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getProductsize() {
		return productsize;
	}

	public void setProductsize(String productsize) {
		this.productsize = productsize;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getReviewcon() {
		return reviewcon;
	}

	public void setReviewcon(String reviewcon) {
		this.reviewcon = reviewcon;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

}
