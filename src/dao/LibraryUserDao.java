package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dbutil.SQLHelper;
import entity.LibraryUser;

public class LibraryUserDao {
	public boolean addUser(LibraryUser user) {
		boolean flag=false;
		String sql="insert into libraryuser values(?,?,?)";
		flag=SQLHelper.executeUpdateByParams(sql, user.getStu_id(),user.getName(),user.getPwd());
		return flag;
	}
	public String queryUsername(String id) {
		LibraryUser user=queryUserById(id);
		String sql="select name from libraryuser where stu_id='"+user.getStu_id()+"'";
		ResultSet rs=SQLHelper.executeQuery(sql);
		try{
			if(rs.next()&&rs.getString(1).trim().equals(user.getName()))
			{}
			SQLHelper.closeConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return user.getName();
	}
	public boolean validatepwd(LibraryUser user) {
		boolean flag = false;
		String sql="select pwd from libraryuser where stu_id='"+user.getStu_id()+"'";
		ResultSet rs=SQLHelper.executeQuery(sql);
		try{
			if(rs.next()&&rs.getString(1).equals(user.getPwd()))
				flag=true;
			SQLHelper.closeConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return flag;
	}
	public LibraryUser queryUserById(String id)  {
		LibraryUser user = null;
		String sql = "select * from libraryuser where stu_id='" + id + "'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
		    user = new LibraryUser();
		    Object[] arr=dblist.get(0);
			user.setStu_id(arr[0].toString());
			user.setName(arr[1].toString());
			user.setPwd(arr[2].toString());
			
		}		
		return user;
	}
	public List<LibraryUser> queryUser() {
		List<LibraryUser> ulist = new ArrayList<LibraryUser>();
		String sql = "select * from libraryuser";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			LibraryUser user=new LibraryUser();
			user.setStu_id(arr[0].toString());
			user.setName(arr[1].toString());
			user.setPwd(arr[2].toString());
			ulist.add(user);
		}
		return ulist;
	}
	public int updatePwd(LibraryUser user) {
		String sql = "update libraryuser set pwd='"+user.getPwd()+"'where stu_id='"+user.getStu_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int deleteUser(LibraryUser user) {
		String sql = "delete from libraryuser where stu_id='"+user.getStu_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
}
