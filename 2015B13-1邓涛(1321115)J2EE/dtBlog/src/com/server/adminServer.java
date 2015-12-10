package com.server;
import java.sql.ResultSet;

import com.admin.*;
import com.dao.serverDao;
import com.util.fenyepage.page;
import com.util.mysql.mysqlTools;
public class adminServer extends server{

	/**
	 * 对user表进行查询
	 * @return 返回一个ResultSet类型的结果集
	 */
	public ResultSet query(){
		String sql = "select * from User";
		return this.query(sql);
		 
	}
	/**
	 * 根据name对user表进行查询
	 * @param name
	 * @return
	 */
	public ResultSet query_name(String name){
		String sql = "select * from User where name = '"+name+"'";
		return this.query(sql);
	}
	/**
	 * 对uesr表进行插入
	 * @param name
	 * @param password
	 * @return
	 */
	public int insert(String name,String password){
		return this.upDate("insert into user(name,password) values('"+name+"','"+password+"');");
	}
	/**
	 * 对user表进行更新操作
	 * @param name 用户的登录名
	 * @param password 用户的密码
	 * 修改对应用户的密码
	 * @return
	 */
	public int upDate(String name,String password){
		return this.upDate("update User set password='"+password+"'where name='"+name+"'");
	}
	/**
	 * 重载上面的函数
	 * @param name 用户的登录名
	 * @param password用户的密码
	 * @param level 用户的操作等级
	 * @return
	 */
	public int upDate(String name,String password,String level){
		return this.upDate("update User set password='"+password+"', level='"+level+"' where name='"+name+"'");
	}
	/**
	 * 对user表进行删除操作
	 * @param value 对应数据里的属性值
	 * @return
	 */
	public int delete(String value){
		return super.upDate( "delete from  User where name='"+value+"'");
	}
	
	/**
	 * 对blogregister表注册操作
	 * @param admin 注册用户
	 * @return
	 */
	public int admin_register(admin admin){
		String sql = "insert into blogregister values('"+admin.getStuNum()+"','"+admin.getPassword()+"','"+admin.getStuName()+"','"+admin.getZhuanye()
				+"','"+admin.getBanji()+"','"+admin.getSex()+"','"+admin.getEmail()+"','"+admin.getPhone()+"','"+admin.getQq()+"','"+admin.getZyxxcj()
				+"','"+admin.getHjqk()+"','"+admin.getShsj()+"')";
		return this.upDate(sql);
	}
	/**
	 * 处理uers表分页信息
	 */
	public void dealPageInfo(page page){
		int pageStat = (page.getPageNow()-1)*page.getPageSize();
		String sql1 ="select * from user limit "+pageStat+","+page.getPageSize();
		String sql2 = "select count(id) C from user";
		this.dealPageInfo(sql1, sql2, page);
	}
	
	
	
}
