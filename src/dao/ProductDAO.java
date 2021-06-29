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

	// 상품 추가
	public boolean newPro(Product pro) { // product 객체에 저장해 전달해서 db에 등록

		try {
			conn = DBConnection.connect();
			String sql = "insert into product (pid,name,xxlsize,price,files,visit,cate,ssize,pcon,gender,day,msize,lsize,xlsize) values((select nvl(max(pid), 0) + 1 from product),?,?,?,?,?,?,?,?,?,?,?,?,?)"; // cnt.NEXTVAL��

			pstmt = conn.prepareStatement(sql);
			// insert媛� �떎�뻾�맂 �떆媛� ���옣
			SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");

			Date time = new Date();

			String time1 = format1.format(time);

			pstmt.setString(1, pro.getName());
			pstmt.setInt(2, pro.getXxlsize());
			pstmt.setInt(3, pro.getPrice());
			pstmt.setString(4, pro.getFiles());
			pstmt.setInt(5, pro.getVisit());
			pstmt.setString(6, pro.getCate());
			pstmt.setInt(7, pro.getSsize());
			
			
			pstmt.setString(8, pro.getPcon());
			pstmt.setString(9, pro.getGender());
			pstmt.setString(10, time1);
			pstmt.setInt(11, pro.getMsize());
			pstmt.setInt(12, pro.getLsize());
			pstmt.setInt(13, pro.getXlsize());
			
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

	// 상품 페이지에 전체 상품 보여주기
	public ArrayList<Product> showP() { // product 목록 전체 조회

		ArrayList<Product> datas = new ArrayList<>();

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
			
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setSsize(rs.getInt("ssize"));
				pro.setMsize(rs.getInt("msize"));
				pro.setLsize(rs.getInt("lsize"));
				pro.setXlsize(rs.getInt("xlsize"));
				pro.setXxlsize(rs.getInt("xxlsize"));
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

	// 상품 삭제
	public boolean delPro(int pid) { // product id 값을 받아서 상품 삭제

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

	// 특정 상품을 가져오기 위한 메소드
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
			
				pro.setCate(rs.getString("cate"));
				pro.setSsize(rs.getInt("ssize"));
				pro.setMsize(rs.getInt("msize"));
				pro.setLsize(rs.getInt("lsize"));
				pro.setXlsize(rs.getInt("xlsize"));
				pro.setXxlsize(rs.getInt("xxlsize"));
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
	// 가격 필터링
	public ArrayList<Product> showPscope(int min, int max) {
		ArrayList<Product> datas = new ArrayList<>();
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
				
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setSsize(rs.getInt("ssize"));
				pro.setMsize(rs.getInt("msize"));
				pro.setLsize(rs.getInt("lsize"));
				pro.setXlsize(rs.getInt("xlsize"));
				pro.setXxlsize(rs.getInt("xxlsize"));
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
		ArrayList<Product> datas = new ArrayList<>();
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
				
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setSsize(rs.getInt("ssize"));
				pro.setMsize(rs.getInt("msize"));
				pro.setLsize(rs.getInt("lsize"));
				pro.setXlsize(rs.getInt("xlsize"));
				pro.setXxlsize(rs.getInt("xxlsize"));
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
			
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setSsize(rs.getInt("ssize"));
				pro.setMsize(rs.getInt("msize"));
				pro.setLsize(rs.getInt("lsize"));
				pro.setXlsize(rs.getInt("xlsize"));
				pro.setXxlsize(rs.getInt("xxlsize"));
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

		ArrayList<Product> datas = new ArrayList<>();
		try {
			conn = DBConnection.connect();
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
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setSsize(rs.getInt("ssize"));
				pro.setMsize(rs.getInt("msize"));
				pro.setLsize(rs.getInt("lsize"));
				pro.setXlsize(rs.getInt("xlsize"));
				pro.setXxlsize(rs.getInt("xxlsize"));
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

	// 주어진 파라미터에 따라 값을 정렬
	public ArrayList<Product> showPorderasc(String s) { // product 오름차순 정렬 return

		ArrayList<Product> datas = new ArrayList<>();
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
				
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setSsize(rs.getInt("ssize"));
				pro.setMsize(rs.getInt("msize"));
				pro.setLsize(rs.getInt("lsize"));
				pro.setXlsize(rs.getInt("xlsize"));
				pro.setXxlsize(rs.getInt("xxlsize"));
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
	
	public ArrayList<Product> showBestSeller() { // product 목록 전체 조회

		ArrayList<Product> datas = new ArrayList<>();

		try {
			conn = DBConnection.connect();
			String sql = "SELECT * FROM (SELECT A.*, ROWNUM AS RNUM FROM (SELECT * FROM product ORDER BY visit DESC) A WHERE ROWNUM <= 4) WHERE RNUM > 0 ORDER BY visit DESC";
			
			pstmt = conn.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Product pro = new Product();

				pro.setPid(rs.getInt("pid"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
			
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setSsize(rs.getInt("ssize"));
				pro.setMsize(rs.getInt("msize"));
				pro.setLsize(rs.getInt("lsize"));
				pro.setXlsize(rs.getInt("xlsize"));
				pro.setXxlsize(rs.getInt("xxlsize"));
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
	
	public void updateStock(int pid, int ssize, int msize, int lsize, int xlsize, int xxlsize) {
		ArrayList<Product> datas = new ArrayList<>();

		try {
			conn = DBConnection.connect();
			String sql = "UPDATE product SET ssize = ?, msize = ?, lsize = ?, xlsize = ?, xxlsize = ? WHERE pid = ?"; 
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ssize);
			pstmt.setInt(2, msize);
			pstmt.setInt(3, lsize);
			pstmt.setInt(4, xlsize);
			pstmt.setInt(5, xxlsize);
			pstmt.setInt(6, pid);

			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			disconnect();
		}

	}
	

	public ArrayList<Product> showPorderde(String s) { // product 내림차순 정렬 return

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
			
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setSsize(rs.getInt("ssize"));
				pro.setMsize(rs.getInt("msize"));
				pro.setLsize(rs.getInt("lsize"));
				pro.setXlsize(rs.getInt("xlsize"));
				pro.setXxlsize(rs.getInt("xxlsize"));
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

	public ArrayList<Product> showPByCategory(String category) {
		conn = DBConnection.connect();

		ArrayList<Product> datas = new ArrayList<>();
		String sql = "SELECT * FROM product WHERE cate = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Product pro = new Product();

				pro.setPid(rs.getInt("pid"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				
				pro.setFiles(rs.getString("files"));
				pro.setVisit(rs.getInt("visit"));
				pro.setCate(rs.getString("cate"));
				pro.setGender(rs.getString("gender"));
				pro.setSsize(rs.getInt("ssize"));
				pro.setMsize(rs.getInt("msize"));
				pro.setLsize(rs.getInt("lsize"));
				pro.setXlsize(rs.getInt("xlsize"));
				pro.setXxlsize(rs.getInt("xxlsize"));
				pro.setPcon(rs.getString("pcon"));
				pro.setDay(rs.getString("day"));

				datas.add(pro);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		disconnect();
		return datas;
	}
	
	public void visitUp(int pid) {
		try {
			conn = DBConnection.connect();

			String sql = "update product set visit=((select visit from product where pid=?)+1) where pid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pid);
			pstmt.setInt(2, pid);

			rs = pstmt.executeQuery();

			System.out.println("visit ++");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			disconnect();
		}

	}
	
}