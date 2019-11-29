package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dbutil.SQLHelper;
import entity.Dormitory;

public class DormitoryDao {
	public boolean addDorm(Dormitory dorm) {
		boolean flag=false;
		String sql="insert into dormitory values(?,?,?,?,?,?)";
		flag=SQLHelper.executeUpdateByParams(sql,dorm.getId(),dorm.getDept(),dorm.getClasss(),dorm.getPwd(),dorm.getNum_available(),dorm.getNum_present());
		return flag;
	}
	public boolean validatePwd(Dormitory dorm) {
		boolean flag = false;
		String sql="select pwd from dormitory where id='"+dorm.getId()+"'";
		ResultSet rs=SQLHelper.executeQuery(sql);
		try{
			if(rs.next()&&rs.getString(1).equals(dorm.getPwd()))
				flag=true;
			SQLHelper.closeConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return flag;
	}
	public Dormitory queryDormById(String id) {
		Dormitory dorm=null;
		String sql="select * from dormitory where id='"+id+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
			dorm=new Dormitory();
			Object[] arr=dblist.get(0);
			dorm.setId(arr[0].toString());
			dorm.setDept(arr[1].toString());
			dorm.setClasss(arr[2].toString());
			dorm.setPwd(arr[3].toString());
			dorm.setNum_available(Integer.parseInt(arr[4].toString()));
			dorm.setNum_present(Integer.parseInt(arr[5].toString()));
		}
		return dorm;
	}
	public List<Dormitory> queryDorm() {
		List<Dormitory> dlist = new ArrayList<Dormitory>();
		String sql = "select * from dormitory";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			Dormitory dorm=new Dormitory();
			dorm.setId(arr[0].toString());
			dorm.setDept(arr[1].toString());
			dorm.setClasss(arr[2].toString());
			dorm.setPwd(arr[3].toString());
			dorm.setNum_available(Integer.parseInt(arr[4].toString()));
			dorm.setNum_present(Integer.parseInt(arr[5].toString()));
			dlist.add(dorm);
		}
		return dlist;
	}
	public int updateDorm(Dormitory dorm) {
		String sql="update dormitory set dept='"+dorm.getDept()+"',class='"+dorm.getClasss()+"',pwd='"+dorm.getPwd()+"',num_available='"+dorm.getNum_available()+"',num_present="+dorm.getNum_present()+" where id='"+dorm.getId()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	

}
