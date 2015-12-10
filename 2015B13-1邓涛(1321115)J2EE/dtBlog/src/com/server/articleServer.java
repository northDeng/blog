package com.server;

import java.sql.ResultSet;

import com.dao.serverDao;

public class articleServer extends server{

	/**
	 * 对article表进行查询
	 * @return
	 */
	public ResultSet query(){
		String sql = "select * from article";
		return this.query(sql);
		 
	}
	
	/**
	 * 对article表进行插入
	 * @param name文章人的名字
	 * @param article文章内容
	 * @return
	 */
	public int insert(String name,String article){
		String sql = "insert into article(name,article) values('"+name+"','"+article+"')";
		return this.upDate(sql);
	}
	/**
	 * 对article表进行更新操作
	 * @param name 
	 * @param article
	 * 修改对应用户的密码
	 * @return
	 */
	public int upDate(String name,String article){
		String sql = "update article set article='"+article+"'where name='"+name+"'";
		return this.upDate(sql);
	}
	/**
	 * 对article表进行删除操作
	 * @param name 查找人名字删除对应文章
	 * @return
	 */
	public int delete(String name){
		String sql = "delete from  article where name='"+name+"'";
		return this.mt.execute_dml(sql);
	}
}
