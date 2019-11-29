package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dbutil.SQLHelper;
import entity.Administrator;

public class AdminDao {
	public boolean addAdmin(Administrator ad){
		boolean flag=false;
		String sql="insert into administrator values(?,?,?)";
		flag=SQLHelper.executeUpdateByParams(sql, ad.getId(),ad.getName(),ad.getPwd());
		return flag;
	}
	public boolean validatepwd(Administrator ad) {
		boolean flag = false;
		String sql="select pwd from administrator where id='"+ad.getId()+"'";
		ResultSet rs=SQLHelper.executeQuery(sql);
		try{
			if(rs.next()&&rs.getString(1).equals(ad.getPwd()))
				flag=true;
			SQLHelper.closeConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return flag;
	}
	public String queryAdminname(String id) {
		Administrator ad=queryAdminById(id);
		String sql="select name from administrator where id='"+ad.getId()+"'";
		ResultSet rs=SQLHelper.executeQuery(sql);
		try{
			if(rs.next()&&rs.getString(1).equals(ad.getName()))
			{}
			SQLHelper.closeConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return ad.getName();
	}
	public Administrator queryAdminById(String id)  {
		Administrator ad = null;
		String sql = "select * from administrator where id='" + id + "'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
		    ad = new Administrator();
		    Object[] arr=dblist.get(0);
			ad.setId(arr[0].toString());
			ad.setName(arr[1].toString());
			ad.setPwd(arr[2].toString());
		}		
		return ad;
	}
	public List<Administrator> queryAdmin() {
		List<Administrator> adlist = new ArrayList<Administrator>();
		String sql = "select * from administrator";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			Administrator ad=new Administrator();
			ad.setId(arr[0].toString());
			ad.setName(arr[1].toString());
			ad.setPwd(arr[2].toString());
			adlist.add(ad);
		}
		return adlist;
	}
	public int updateAdmin(Administrator ad) {
		String sql = "update administrator set pwd='"+ad.getPwd()+"'where id='"+ad.getId()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int deleteAdmin(Administrator ad) {
		String sql = "delete from administrator where id='"+ad.getId()+"'";
		return SQLHelper.executeUpdate(sql);
	}
}
