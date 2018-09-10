package com.fine.confernce;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class FineDao {

	private static FineDao instance = new FineDao();

	public static FineDao getInstance() {
		return instance;
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		DataSource ds = 
				//(DataSource)initCtx.lookup("java:comp/env/jdbc/fineinsight");
				(DataSource)initCtx.lookup("java:comp/env/jdbc/mysql");

		return ds.getConnection();
	}

	private void executeClose(ResultSet rs, PreparedStatement pstmt, Connection conn){
		if (rs != null) {
			try {
				rs.close();
			}
			catch (SQLException localSQLException) {

			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			}
			catch (SQLException localSQLException1) {
			}
		}
		if (conn != null) {
			try {
				conn.close();
			}
			catch (SQLException localSQLException2) {
			}
		}
	}

	public int confe_confirm(String phone , String name) throws Exception  {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		ResultSet rs = null;
		int count = 0;
		try {
			conn = getConnection();

			sql = "select count(*) from confe_info where confe_phone = ? and confe_name = ?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, phone);
			pstmt.setString(2, name);
			rs = pstmt.executeQuery();
			if (rs.next()) {
	          count = rs.getInt(1);
	        }
		}
		catch (Exception e)  {
			throw new Exception(e);
		}finally {
			executeClose(rs, pstmt, conn);
		}

		return count;
	}

	public void confe_insert(FineVo vo) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		try {
			conn = getConnection();

			sql = "insert into confe_info (confe_affiliation ,confe_position, confe_email ,confe_phone ,confe_name) values (?,?,?,?,?) ";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, vo.getConfe_affiliation());
			pstmt.setString(2, vo.getConfe_position());
			pstmt.setString(3, vo.getConfe_email());
			pstmt.setString(4, vo.getConfe_phone());
			pstmt.setString(5, vo.getConfe_name());
			pstmt.executeUpdate();
		}
		catch (Exception e) {
			throw new Exception(e);
		}
		finally {
			executeClose(null, pstmt, conn);
		}
	}

}
