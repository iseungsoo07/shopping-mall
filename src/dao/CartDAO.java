package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import db.DBConnection;
import model.Cart;

public class CartDAO {
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
	public boolean newCart(Cart c) {
		try {
			conn = DBConnection.connect();
			String sql = "insert into cart (cid,pid,id,count,psize,name,price,total,files,deli,discount,pay,day) values((select nvl(max(cid), 0) + 1 from cart),?,?,?,?,?,?,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);

			SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");

			Date time = new Date();

			String time1 = format1.format(time);

			pstmt.setInt(1, c.getPid());
			pstmt.setString(2, c.getId());
			pstmt.setInt(3, c.getCount());
			pstmt.setString(4, c.getSize());
			pstmt.setString(5, c.getName());
			pstmt.setInt(6, c.getPrice());
			pstmt.setInt(7, c.getTotal());
			pstmt.setString(8, c.getFiles());
			pstmt.setInt(9, c.getDeli());
			pstmt.setInt(10, c.getDiscount());
			pstmt.setInt(11, c.getPay());			
			pstmt.setString(12, time1);

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

	public ArrayList<Cart> showC(String id) {
		ArrayList<Cart> datas = new ArrayList<>();
		try {
			conn = DBConnection.connect();
			String sql = "select * from cart where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);


			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Cart c = new Cart();

				c.setCid(rs.getInt("cid"));
				c.setPid(rs.getInt("pid"));
				c.setId(rs.getString("id"));
				c.setName(rs.getString("name"));
				c.setCount(rs.getInt("count"));
				c.setPrice(rs.getInt("price"));
				c.setSize(rs.getString("psize"));
				c.setTotal(rs.getInt("total"));
				c.setFiles(rs.getString("files"));
				c.setDeli(rs.getInt("deli"));
				c.setDiscount(rs.getInt("discount"));
				c.setPay(rs.getInt("pay"));
				c.setDay(rs.getString("day"));
				datas.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			disconnect();
		}

		return datas;
	}
	public boolean delCart(int cid) {
		try {
			conn = DBConnection.connect();
			String sql = "delete from cart where cid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  cid);
			pstmt.executeUpdate();

		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}

	public double grade(String id) {
		int rank;
		double i=0;
		try {
			conn = DBConnection.connect();
			String sql = "select rank from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  id);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())  { 
				rank =rs.getInt("rank");

				if(rank==10) {
					i = 0.10;

				} else if(rank==9) {
					i = 0.11;

				} else if(rank==8) {
					i = 0.12;

				} else if(rank==7) {
					i = 0.13;

				} else if(rank==6) {
					i = 0.14;

				} else if(rank==5) {
					i = 0.15;

				} else if(rank==4) {
					i = 0.16;

				} else if(rank==3) {
					i = 0.17;

				} else if(rank==2) {
					i = 0.18;

				} 
				else {
					i = 0.20;
					
				}
			}

		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {

			disconnect();
		}

		return i;

	}
}
