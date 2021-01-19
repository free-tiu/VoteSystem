package com.tp.toolbean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.tp.valuebean.TempSingle;
import com.tp.valuebean.VoteSingle;

//数据库操作类
public class DB {
	private Statement stm;
	private ResultSet rs;
	private static final String Driver = "com.mysql.cj.jdbc.Driver";
    private static final String url = "jdbc:mysql://127.0.0.1:3306/tb_db?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=GMT%2B8";
    private static final String user = "root";
    private static final String password = "root";
    
    Connection con = null;
    
	/*
	 * @功能 加载数据库驱动程序
	 */
	public void loadDrive() {
		try {
			Class.forName(Driver);	//加载数据库驱动程序
		} catch (ClassNotFoundException e) {
			System.out.println("加载数据库驱动程序失败！");
			e.printStackTrace();	//向控制台输出提示信息
		}
	}
	/*
	 * @功能 获取数据库连接
	 */
	public void getCon() {
		loadDrive();		//加载数据库驱动程序
		try {
			con = DriverManager.getConnection(url, user, password);		//获取连接 
		} catch (Exception e) {
			System.out.println("连接数据库失败");
			e.printStackTrace();
		}
	}
	/*
	 * @功能 获取Statement对象
	 */
	public void getStm() {
		getCon();		//获取数据库连接
		try {
			stm = con.createStatement();	//获取Statement对象
		} catch (Exception e) {
			System.out.println("获取Statement对象失败！");
			e.printStackTrace();
		}
	}
	/*
	 * @功能 查询数据表，获取结果集
	 */
	public void getRs(String sql) {
		getStm();
		try {
			rs = stm.executeQuery(sql);		//执行SQL语句查询数据表获取结果集
		} catch (Exception e) {
			System.out.println("查询数据库失败！");
			e.printStackTrace();
		}
	}
	/*
	 * @功能 关闭数据库连接
	 */
	public void closed() {
		try {
			if (rs != null) {
				rs.close();		//关闭结果集
			}
			if (stm != null) {
				rs.close();		//关闭statement连接
			}
			if (con != null) {
				rs.close();		//关闭数据库连接
			}
		} catch (Exception e) {
			System.out.println("关闭数据库连接失败！");
			e.printStackTrace();
		}
	}
	/*
	 * @功能 查询数据表，获取投票评选项
	 */
	public List<VoteSingle> selevtVote(String sql) {
		List<VoteSingle> voteList = null;
		if (sql != null && !sql.equals("")) {
			getRs(sql);		//查询数据表获取结果
			if (rs != null) {
				voteList = new ArrayList<VoteSingle>();
				try {
					while (rs.next()) {		//依此将结果集中的记录封装到VoteSingle对象中
						VoteSingle voteSingle = new VoteSingle();
						voteSingle.setId(MyTools.intToStr(rs.getInt(1)));
						voteSingle.setTitle(rs.getString(2));
						voteSingle.setNum(MyTools.intToStr(rs.getInt(3)));
						voteSingle.setOrder(MyTools.intToStr(rs.getInt(4)));
						voteList.add(voteSingle);		//将VoteSingle类对象存储到List集合中
					}
				} catch (Exception e) {
					System.out.println("封装tb_vote表中数据失败！");
					e.printStackTrace();
				} finally {
					closed();	//关闭数据库
				}
			}
		}
		return voteList;
	}
	/*
	 * @功能 查询数据表，获取指定IP最后一次的投票记录
	 */
	public TempSingle sellectTemp(String sql) {
		TempSingle tempSingle = null;
		if (sql != null && !sql.equals("")) {
			getRs(sql);
			if (rs != null) {
				try {
					while (rs.next()) {		//依此将结果集中的记录封装到TempSingle()对象中
						tempSingle = new TempSingle();
						tempSingle.setId(MyTools.intToStr(rs.getInt(1)));
						tempSingle.setVotelp(rs.getString(2));
						tempSingle.setVoteMSEL(rs.getLong(3));
						tempSingle.setVoteTime(rs.getString(4));
					}
				} catch (Exception e) {
					System.out.println("封装tb_temp表中数据失败！");
					e.printStackTrace();
				} finally {
					closed();		//关闭数据库
				}
			}
		}
		return tempSingle;	//返回TempSingle类对象中
	}
	/*
	 * @功能 更新数据表，实现票数的累加操作
	 */
	public int updata(String sql) {
		int i = -1;
		if (sql != null && !sql.equals("")) {
			getStm();	//获取对象
			if (rs != null) {
				try {
					i = stm.executeUpdate(sql);		//执行SQL语句更新数据表
				} catch (Exception e) {
					System.out.println("更新数据库失败！");
					e.printStackTrace();
				} finally {
					closed();		//关闭数据库
				}
			}
		}
		return i;
	}
}
