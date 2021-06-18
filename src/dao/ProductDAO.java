package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import db.DBConnection;
import db.DBmanager;
import dto.Product;

public class ProductDAO {

	Connection conn;
	PreparedStatement pstmt;
	public void disconnect() {
		try {
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public boolean newPro(Product pro){ //뷰로부터 받아온 데이터들을 DB에 삽입하는 메소드
		try {
			conn=DBmanager.connect();
			String sql="insert into product (pid,name,stock,price,files) values(cnt.NEXTVAL,?,?,?,?)"; //cnt.NEXTVAL은 저장될때마다 숫자가 1씩 증가 auto_increment와 비슷함
			pstmt=conn.prepareStatement(sql);
			// insert가 실행된 시간 저장
			SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm");


			Date time = new Date();

			String time1 = format1.format(time);


			pstmt.setString(1, pro.getName());
			pstmt.setInt(2, pro.getStock());
			pstmt.setInt(3, pro.getPrice());
			pstmt.setString(4, pro.getFiles());
			pstmt.executeUpdate();

		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
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
	public ArrayList<Product> showP(){ //DB에서 Notice 테이블의 정보를 받아와 datas에 저장

		ArrayList<Product> datas=new ArrayList();
		try {
			conn=DBConnection.connect();
			
			String sql="select * from product order by pid asc";
			pstmt=conn.prepareStatement(sql);



			ResultSet rs=pstmt.executeQuery();

			while(rs.next()) {
				Product pro=new Product();
				
				
				pro.setPid(rs.getInt("pid"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setStock(rs.getInt("stock"));
				pro.setFiles(rs.getString("files"));
				
			
			
				datas.add(pro);

				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		finally {
			disconnect();
		}

		return datas;
	}


}
