package com.util.page;

import java.sql.ResultSet;

public class page {
	private int pageNow=1;//当前页，默认当前页为1
	private int pageCount;//总页数
	private int pageSize=10;//当前页显示行数，默认当前行数为10
	private int rowCount;//总行数
	//private String gotoUrl;//跳转页
	//private int pageWhole;//一次翻多少页
	private ResultSet res=null;
	public ResultSet getRes() {
		return res;
	}
	public void setRes(ResultSet res) {
		this.res = res;
	}
	
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}
	/**
	 * 上一页
	 */
	public int upPage(){
		int pageUp=1;
		if(this.pageNow>1 )
			pageUp =this.pageNow-1;
		
		return pageUp;
	}
	/**
	 * 下一页
	 */
	public int downPage(){
		int pageDown=this.pageNow;
		if(this.pageNow<this.pageCount){
			pageDown=this.pageNow+1;
		}
		return pageDown;
			
	}

}
