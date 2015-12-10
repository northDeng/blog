package com.dao;

import java.sql.ResultSet;

import com.util.mysql.mysqlTools;

public interface serverDao {
	public void close();
	public ResultSet query(String sql);
	public int upDate(String sql);
}
