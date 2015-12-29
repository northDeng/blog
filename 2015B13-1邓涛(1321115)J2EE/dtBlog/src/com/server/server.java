package com.server;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dao.serverDao;
import com.util.mysql.mysqlTools;
import com.util.page.page;
/**
 * 实现serverdao的方法
 * @author Administrator
 *
 */
public  class server implements serverDao{
	public mysqlTools mt=null;
	private int rs;
	private ResultSet res=null;
	public server(){
		mt = new mysqlTools();
	}
	/**
	 * 关闭连接
	 */
	public void close(){
		mt.close();
	}
	/**
	 * 查询语句
	 */
	public ResultSet query(String sql){
		return res = this.mt.execute_dql(sql);
	}
	/**
	 * 更新语句
	 *@param sql 更新语句
	 *@return 返回一个int类型的数值  0代表失败 其他数值代表成功 
	*/
	public int upDate(String sql) {
		return rs = this.mt.execute_dml(sql);
	}
	/**
	 * 处理分页信息
	 * @param sql1  查询返回当前页显示的多行信息
	 * @param sql2   查询总页数
	 * @param page 传入的page对象
	 */
	public void dealPageInfo(String sql1,String sql2,page page){
		int rowCount=0;
		this.res = this.mt.execute_dql(sql1); 
		page.setRes(res);
		this.res = this.mt.execute_dql(sql2);
		try {
			while(res.next()){
				rowCount= Integer.parseInt(res.getString("C"));	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		page.setRowCount(rowCount);
		page.setPageCount((int)Math.ceil(page.getRowCount()/page.getPageSize()));
		
	}
	
}
