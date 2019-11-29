package dbutil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SQLHelper {
	private static String driver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://127.0.0.1:3306/card_system?serverTimezone=GMT", user = "root", pwd = "123456789";
	private static Connection conn=null;
	static {
		try {
			Class.forName(driver);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	public static void closeConnection(){
		try {
		  if(conn!=null && !conn.isClosed())
		    conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	public static List<Object[]> executeQueryList(String sql){
		List<Object[]> list=new ArrayList<Object[]>();
		ResultSet rs=null;
		try {
		    conn = DriverManager.getConnection(url, user, pwd);
			Statement cmd = conn.createStatement();
			rs=cmd.executeQuery(sql);
			ResultSetMetaData metaRs= rs.getMetaData();
			int colsNum=metaRs.getColumnCount();
			while(rs.next()){
				Object[] arr=new Object[colsNum];
				for(int i=0;i<arr.length;i++)
					arr[i]=rs.getObject(i+1);
				list.add(arr);
			}
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}
	public static Object executeSingleQuery(String sql){
		Object obj=null;
		try {
		    conn = DriverManager.getConnection(url, user, pwd);
			Statement cmd = conn.createStatement();
			ResultSet rs=cmd.executeQuery(sql);
			if(rs.next())
				obj=rs.getObject(1);
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return obj;
	}
	public static ResultSet executeQuery(String sql){
		ResultSet rs=null;
		try {
		    conn = DriverManager.getConnection(url, user, pwd);
			Statement cmd = conn.createStatement();
			rs=cmd.executeQuery(sql);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return rs;
	}
	
	public static boolean executeUpdateByParams(String sql,Object... params){//可变参数
		boolean flag=false;
		try {
			 Connection conn = DriverManager.getConnection(url, user, pwd);
			 PreparedStatement cmd=conn.prepareStatement(sql);
			 for(int i=0;i<params.length;i++){
				 //System.out.println(params[i]+" "+params.length);
				if(params[i] instanceof String)
					cmd.setString(i+1, params[i].toString());
				   
				else if(params[i] instanceof Integer)
					cmd.setInt(i+1, (Integer)params[i]);
				else if(params[i] instanceof Double)
					cmd.setDouble(i+1, (Double)params[i]);
				else if(params[i] instanceof Float)
					cmd.setFloat(i+1, (Float)params[i]);
				else
					cmd.setObject(i+1, params[i]);
			 }
			 flag=cmd.execute();
			 conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}
	public static int executeUpdate(String sql){
		int r=0;
		try {
			Connection conn = DriverManager.getConnection(url, user, pwd);
			Statement cmd = conn.createStatement();
			r=cmd.executeUpdate(sql);
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return r;
	}
}
