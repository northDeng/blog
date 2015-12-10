package com.util.mysql;

import java.sql.*;

public class mysqlTools {
	private String userName="root";
	private String userPassword="root";
	private String dbName="blog";
	private Connection conn=null;
	private Statement stmt=null;
	private ResultSet rs=null;
	public mysqlTools(String userName,String userPassword,String dbName){
		this.userName = userName;
		this.userPassword = userPassword;
		this.dbName = dbName;
		this.conn();   
	}
	public mysqlTools(){
		this.conn();
	}
	public void conn(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/"+this.dbName+"?useUnicode=true&characterEncoding=UTF-8"; 
			conn=DriverManager.getConnection(url,this.userName,this.userPassword);
			stmt=conn.createStatement();
		} catch (ClassNotFoundException e) {
			System.out.println("连接出现异常");
		} catch (SQLException e) {
			System.out.println("连接数据库出现错误");
		}
	}
	public ResultSet execute_dql(String sql){
		
		 try {
			String url="jdbc:mysql://localhost/"+this.dbName+"?"; 
			conn=DriverManager.getConnection(url,this.userName,this.userPassword);
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("sql查询语句错误");
		}
		
		 return rs;
	}
	public int execute_dml(String sql){
		int result=-1;
		try {
			result = stmt.executeUpdate(sql);
			if(result == 0){
				return 0;//执行失败
			}else {
				return result;//执行成功
				
			}
		} catch (Exception e) {
			System.out.println("执行语句出现错误:"+e.getMessage());
		}
		return 0;
	}
	
public void close(){
		if(rs != null)
			try {
				rs.close();
			} catch (SQLException e1) {
				System.out.println("结果集关闭异常");
			}
		try {
			stmt.close();
		} catch (SQLException e) {
			System.out.println("数据库关闭异常");
		}
		try {
			conn.close();
			
		} catch (SQLException e) {
			System.out.println("连接关闭异常");
		}
	}
	
	
	
}
