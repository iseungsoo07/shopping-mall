package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import db.DBConnection;
import model.Product;
import model.ProductReview;

public class ProductReviewDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public void disconnect() {
		try {
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
			if (rs != null) {
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// db에 productReview 등록
	public boolean newProReview(ProductReview proreview) {
		try {
			conn = DBConnection.connect();
			String sql = "insert into productreview (reviewid,productid,userid,productsize,rating,reviewcon,day) values((select nvl(max(reviewid), 0) + 1 from productreview),?,?,?,?,?,?)";
			// reviewid�뒗 �옄�룞利앷� �꽕�젙�빐�몺
			pstmt = conn.prepareStatement(sql);
			SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			Date time = new Date();
			String time1 = format1.format(time);

			// productid,userid,productsize,rating,reviewcon,day

			pstmt.setInt(1, proreview.getProductid());
			pstmt.setString(2, proreview.getUserid());
			pstmt.setString(3, proreview.getProductsize());
			pstmt.setInt(4, proreview.getRating());
			pstmt.setString(5, proreview.getReviewcon());
			pstmt.setString(6, time1);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}

	// 상세 페이지에서 해당 product에 대한 후기 return(전해주는 값으로 product 말고 pid가 편하면 수정해도됨)
	public ArrayList<ProductReview> showR(int productId) { // �뙎湲� 議고쉶湲곕뒫 �긽�뭹 蹂꾨줈(pid)濡� �굹�돣
		ArrayList<ProductReview> datas = new ArrayList<>();
		try {
			conn = DBConnection.connect();

			String sql = "select * from productreview where pid=? order by reviewid desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productId);
//			pstmt.setInt(1, pro.getPid());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ProductReview proReview = new ProductReview();
				// reviewid,productid,userid,productsize,rating,reviewcon,day
				proReview.setReviewid(rs.getInt("reviewid"));
				proReview.setProductid(rs.getInt("productid"));
				proReview.setUserid(rs.getString("userid"));
				proReview.setProductsize(rs.getString("productsize"));
				proReview.setReviewcon(rs.getString("reviewcon"));
				proReview.setDay(rs.getString("day"));
				datas.add(proReview);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			disconnect();
		}

		return datas;
	}

	// review 삭제
	public boolean deleteProReview(ProductReview proreview) {
		try {
			conn = DBConnection.connect();
			String sql = "delete from productreview where reviewid=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, proreview.getReviewid());
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}

	// review 수정 일단 내용, 평점만 수정 가능하게 해둠
	public boolean updateProReview(ProductReview proreview) {
		try {
			conn = DBConnection.connect();
			String sql = "update productreview set reviewcon=?,rating=? where reviewid=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, proreview.getReviewcon());
			pstmt.setInt(2, proreview.getRating());
			pstmt.setInt(3, proreview.getReviewid());
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}

}