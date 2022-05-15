package org.tareq23.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.tareq23.entity.User;

public class UsersModel {

	public List<User> listUser(DataSource dataSource)
	{
//		System.out.println("list user method calling!!");
		List<User> _listUser = new ArrayList<>();
		
		Connection connect = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			connect = dataSource.getConnection();
			stmt = connect.createStatement();
			
			String query = "select * from users";
			
			rs = stmt.executeQuery(query);
			
			while(rs.next())
			{
				_listUser.add(new User(rs.getInt("users_id"),
						rs.getString("username"),rs.getString("email")));
//				System.out.println(rs.getString("username"));
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return _listUser;
	}

	public boolean addUser(DataSource dataSource,User user) {
		Connection connect = null;
		PreparedStatement preStmt = null;
		
		try {
			connect = dataSource.getConnection();
			String username = user.getUsername();
			String email = user.getEmail();
//			System.out.println(username+"\n"+email);
			String query = "insert into users (username,email) values(?,?)";
			preStmt = connect.prepareStatement(query);
			preStmt.setString(1, username);
			preStmt.setString(2, email);
			preStmt.execute();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
		
	}

	public void updateUser(DataSource dataSource, User updateUser) {
		
		Connection connect = null;
		PreparedStatement preStmt = null;
		
		try {
			connect = dataSource.getConnection();
			String username = updateUser.getUsername();
			String email = updateUser.getEmail();
//			System.out.println(username+"\n"+email);
			String query = "update users set username = ?, email = ? where users_id=?";
			preStmt = connect.prepareStatement(query);
			preStmt.setString(1, username);
			preStmt.setString(2, email);
			preStmt.setInt(3, updateUser.getUsers_id());
			preStmt.execute();
			
			
		} catch (SQLException e) {
			e.printStackTrace();	
		}
	}
	
}
