package com.sds.icto.mysite.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.sds.icto.mysite.domain.*;
import com.sds.icto.mysite.exception.MemberDaoException;
@Repository
public class MemberDao {

	private Connection getConnection()
			throws ClassNotFoundException, SQLException {
			Connection conn = null;
			//1. ?úÎùº?¥Î≤Ñ Î°úÎî©
			Class.forName( "oracle.jdbc.driver.OracleDriver" );
			//2. connection ?ùÏÑ±
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(dbURL, "webdb", "webdb");
			return conn;
		}
		
	public void insert( MemberVo vo )		{
		try{
		//conn
		Connection conn = getConnection();
		//sql
		String sql = 
		"insert into MEMBER VALUES(member_no_seq.nextval, ?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement( sql );
		//bind
		pstmt.setString( 1, vo.getName() );
		pstmt.setString( 2, vo.getEmail() );
		pstmt.setString( 3, vo.getPassword());
		pstmt.setString( 4, vo.getGender());
		//execute		
		pstmt.executeUpdate();
		//close
		pstmt.close();
		conn.close();
		
		}catch(ClassNotFoundException | SQLException e){
			throw new MemberDaoException(e.getMessage());
		}
			
	}
	
	public MemberVo getMember( MemberVo vo ){
		MemberVo revo = null;
		try{
		//conn
			Connection conn = getConnection();
		//sql
			String sql = 
			"select * from member where email=? and password=?";
			PreparedStatement pstmt = conn.prepareStatement( sql );
		//bind
			pstmt.setString( 1, vo.getEmail() );
			pstmt.setString( 2, vo.getPassword());
		//execute		
			ResultSet rs = pstmt.executeQuery();
		//result
			
			if(rs.next()){
				Long no = rs.getLong(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				//String password = rs.getString(4);
				String gender = rs.getString(5);
				
				revo = new MemberVo();
				revo.setNo(no);
				revo.setName(name);
				revo.setEmail(email);
				revo.setGender(gender);
				//revo.setPassword(password);
			}
		//close
			rs.close();
			pstmt.close();
			conn.close();
		}catch(SQLException | ClassNotFoundException e){
			throw new MemberDaoException(e.getMessage());
		}
			return revo;
	}
}
