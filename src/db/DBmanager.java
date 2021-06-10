package db;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBmanager {
   static Connection conn=null;
   
   public static Connection connect() {//DBMS¿Í ¿¬°áÀ» À§ÇÑ ¸Þ¼Òµå
      try {   
        
         Context initContext = new InitialContext();
         String path="java:/comp/env/";
         String dePath="jdbc/orcl"; 
         DataSource ds = (DataSource) initContext.lookup(path+dePath);
         conn = ds.getConnection();
      } catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      return conn;
   }
}