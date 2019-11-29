package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dbutil.SQLHelper;
import entity.AccomodationStatus;

public class StatusDao {
	public boolean addStatus(AccomodationStatus status) {
		boolean flag=false;
		String sql="insert into accomodatingstatus values(?,?,?,?)";
		flag=SQLHelper.executeUpdateByParams(sql,status.getStu_id(),status.getDom_id(),status.getDate_begin(),status.getStatus());
		return flag;
	}
	
	public AccomodationStatus queryStatusById(String id) {
		AccomodationStatus status=null;
		String sql="select * from accomodatingstatus where stu_id='"+id+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
			status=new AccomodationStatus();
			Object[] arr=dblist.get(0);
			status.setStu_id(arr[0].toString());
			status.setDom_id(arr[1].toString());
			status.setDate_begin(arr[2].toString());
			status.setStatus(arr[3].toString());
		}
		return status;
	}
	public AccomodationStatus queryStatusById2(String id1,String id2) {
		AccomodationStatus status=null;
		String sql="select * from accomodatingstatus where stu_id='"+id1+"' and dom_id='"+id2+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
			status=new AccomodationStatus();
			Object[] arr=dblist.get(0);
			status.setStu_id(arr[0].toString());
			status.setDom_id(arr[1].toString());
			status.setDate_begin(arr[2].toString());
			status.setStatus(arr[3].toString());
		}
		return status;
	}
	public List<AccomodationStatus> queryStatus(){
		List<AccomodationStatus> StaList=new ArrayList<AccomodationStatus>();
		String sql="select * from accomodatingstatus";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			AccomodationStatus status=new AccomodationStatus();
			status.setStu_id(arr[0].toString());
			status.setDom_id(arr[1].toString());
			status.setDate_begin(arr[2].toString());
			status.setStatus(arr[3].toString());
			StaList.add(status);

		}
		return StaList;
	}
	public List<AccomodationStatus> queryStatus(String id){
		List<AccomodationStatus> StaList=new ArrayList<AccomodationStatus>();
		String sql="select * from accomodatingstatus where stu_id='"+id+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			AccomodationStatus status=new AccomodationStatus();
			status.setStu_id(arr[0].toString());
			status.setDom_id(arr[1].toString());
			status.setDate_begin(arr[2].toString());
			status.setStatus(arr[3].toString());
			StaList.add(status);

		}
		return StaList;
	}
	public int updateStatus(AccomodationStatus status) {
		String sql="update accomodatingstatus set date_begin='"+status.getDate_begin()+"',status='"+status.getStatus()+"' where stu_id='"+status.getStu_id()+"' and dom_id='"+status.getDom_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int updateRoom(AccomodationStatus status) {
		String sql="update accomodatingstatus set dom_id='"+status.getDom_id()+"',date_begin='"+status.getDate_begin()+"',status='"+status.getStatus()+"' where stu_id='"+status.getStu_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int deleteStatus(AccomodationStatus status) {
		String sql="delete from accomodatingstatus where stu_id='"+status.getStu_id()+"' and dom_id='"+status.getDom_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
}
