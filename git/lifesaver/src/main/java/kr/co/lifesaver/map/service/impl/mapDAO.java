package kr.co.lifesaver.map.service.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
import com.mysql.jdbc.Connection;

import kr.co.lifesaver.map.conn.MysqlConnection;
import kr.co.lifesaver.map.service.mapVO;

public class mapDAO {
	  StringBuffer sb = new StringBuffer();

	   ResultSet rs = null;
	   PreparedStatement pstmt = null;
	   Connection conn = null;


	   public mapDAO() {
		// TODO Auto-generated constructor stub
		   conn = MysqlConnection.getInstance().getConnection();
		   
	}
	   
	   public void addData(mapVO vo) {
		   sb.setLength(0);
		   

			
			
		   sb.append("insert into synthesize_situation_board ");
		   sb.append("(ssb_situation_num, ssb_situation_lat, ssb_situantion_lon, ssb_report_time) ");
		   sb.append(" values( (select count(ssb_situation_num)+1 from synthesize_situation_board a) , ?, ?, ?) ");
		   try {
			//pstmt.setInt(1, vo.getSsb_situation_num());
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getSsb_situation_lat());
			pstmt.setString(2, vo.getSsb_situation_lon());
			pstmt.setString(3, vo.getSsb_report_time());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
		   
	   }
	 
	   
} 
