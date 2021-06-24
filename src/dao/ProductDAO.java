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

public class ProductDAO {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

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

	public boolean newPro(Product pro) { // product 객체에 저장해 전달해서 db에 등록

		try {
			conn = DBConnection.connect();
			String sql = "insert into product (pid,name,stock,price,files,visit,cate,psize,pcon,gender) values(cnt.NEXTVAL,?,?,?,?,?,?,?,?,?,?)"; // cnt.NEXTVAL��
																																					// ���옣�맆�븣留덈떎
																																					// �닽�옄媛�
																																					// 1�뵫
																																					// 利앷�
																																					// auto_increment��
																																					// 鍮꾩듂�븿
			pstmt = conn.prepareStatement(sql);
			// insert媛� �떎�뻾�맂 �떆媛� ���옣
			SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");

			Date time = new Date();

			String time1 = format1.format(time);

			pstmt.setString(1, pro.getName());
			pstmt.setInt(2, pro.getStock());
			pstmt.setInt(3, pro.getPrice());
			pstmt.setString(4, pro.getFiles());
			pstmt.setInt(5, pro.getVisit());
			pstmt.setString(6, pro.getCate());
			pstmt.setString(7, pro.getPsize());
			pstmt.setString(8, pro.getPcon());
			pstmt.setString(9, pro.getGender());
			pstmt.setString(10, time1);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
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

	public ArrayList<Product> showP() { // product 목록 전체 조회

		ArrayList<Product> datas = new ArrayList();
		try {
			conn = DBConnection.connect();

			String sql = "select * from product order by pid desc";
			pstmt = conn.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Product pro = new Product();

				pro.setPid(rs.getInt("pid"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setStock(rs.getInt("stock"));
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setPsize(rs.getString("psize"));
				pro.setPcon(rs.getString("pcon"));
				pro.setDay(rs.getString("day"));

				datas.add(pro);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			disconnect();
		}

		return datas;
	}

	public boolean delPro(int pid) {//product id 값을 받아서 상품 삭제

		try {
			conn = DBConnection.connect();
			String sql = "delete from product where pid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pid);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}

	public Product showP(int pid) { // pid 에 해당하는 product return

		Product pro = null;
		try {
			conn = DBConnection.connect();

			String sql = "select * from product where pid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pid);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				pro = new Product();

				pro.setPid(rs.getInt("pid"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setVisit(rs.getInt("visit"));
				pro.setStock(rs.getInt("stock"));
				pro.setCate(rs.getString("cate"));
				pro.setPsize(rs.getString("psize"));
				pro.setPcon(rs.getString("pcon"));
				pro.setGender(rs.getString("gender"));
				pro.setDay(rs.getString("day"));
				pro.setFiles(rs.getString("files"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			disconnect();
		}

		return pro;
	}

	// 최소값(min) 최대값(max)을 받아서 범위사이 products return
	public ArrayList<Product> showPscope(int min, int max) {
		ArrayList<Product> datas = new ArrayList();
		try {
			conn = DBConnection.connect();

			String sql = "select * from product where price>=? and price<=? order by pid desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, min);
			pstmt.setInt(2, max);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Product pro = new Product();

				pro.setPid(rs.getInt("pid"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setStock(rs.getInt("stock"));
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setPsize(rs.getString("psize"));
				pro.setPcon(rs.getString("pcon"));
				pro.setDay(rs.getString("day"));

				datas.add(pro);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			disconnect();
		}

		return datas;
	}

	// 최소값(min)을 받아서 범위보다 큰 products return
	public ArrayList<Product> showPscopeOver(int min) {
		ArrayList<Product> datas = new ArrayList();
		try {
			conn = DBConnection.connect();

			String sql = "select * from product where price>=? order by pid desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, min);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Product pro = new Product();

				pro.setPid(rs.getInt("pid"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setStock(rs.getInt("stock"));
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setPsize(rs.getString("psize"));
				pro.setPcon(rs.getString("pcon"));
				pro.setDay(rs.getString("day"));

				datas.add(pro);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			disconnect();
		}

		return datas;
	}

	// 최대값(max)을 받아서 범위보다 작은 products return
	public ArrayList<Product> showPscopUnder(int max) {
		ArrayList<Product> datas = new ArrayList();
		try {
			conn = DBConnection.connect();

			String sql = "select * from product where price<=? order by pid desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, max);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Product pro = new Product();

				pro.setPid(rs.getInt("pid"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setStock(rs.getInt("stock"));
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setPsize(rs.getString("psize"));
				pro.setPcon(rs.getString("pcon"));
				pro.setDay(rs.getString("day"));

				datas.add(pro);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			disconnect();
		}

		return datas;
	}

	public ArrayList<Product> searchP(String s) {

		ArrayList<Product> datas = new ArrayList();
		try {
			conn = DBConnection.connect();
			// select * from product where name like %s% �뒗 �긽�뭹�쓽 �뜲�씠�꽣以묒뿉 s(酉곗뿉�꽌 諛쏆븘�삩
			// �듅�젙臾몄옄�뿴)�씠 �엳�뒗吏�
			// 검색어를 이용해 해당 검색어가 들어있는 상품 전체 return
			String sql = "select * from product where name like ?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, ("%" + s + "%"));

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Product pro = new Product();

				pro.setPid(rs.getInt("pid"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setStock(rs.getInt("stock"));
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setPsize(rs.getString("psize"));
				pro.setPcon(rs.getString("pcon"));
				pro.setDay(rs.getString("day"));

				datas.add(pro);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			disconnect();
		}

		return datas;
	}

	public ArrayList<Product> showPorderasc(String s) { // product 내림차순 정렬 return


		ArrayList<Product> datas = new ArrayList();
		try {
			conn = DBConnection.connect();

			String sql = "select * from product order by ? asc";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, s);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Product pro = new Product();

				pro.setPid(rs.getInt("pid"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setStock(rs.getInt("stock"));
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setPsize(rs.getString("psize"));
				pro.setPcon(rs.getString("pcon"));
				pro.setDay(rs.getString("day"));

				datas.add(pro);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			disconnect();
		}

		return datas;
	}

	public ArrayList<Product> showPorderde(String s) { // product 오름차순 정렬 return


		ArrayList<Product> datas = new ArrayList();
		try {
			conn = DBConnection.connect();

			String sql = "select * from product order by ? desc";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, s);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Product pro = new Product();

				pro.setPid(rs.getInt("pid"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setStock(rs.getInt("stock"));
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setPsize(rs.getString("psize"));
				pro.setPcon(rs.getString("pcon"));
				pro.setDay(rs.getString("day"));

				datas.add(pro);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			disconnect();
		}

		return datas;
	}

}