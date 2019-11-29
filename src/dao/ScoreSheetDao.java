package dao;

import java.util.ArrayList;
import java.util.List;

import dbutil.SQLHelper;
import entity.ScoreSheet;

public class ScoreSheetDao {
	public boolean addScore(ScoreSheet sheet) {
		boolean flag=false;
		String sql="insert into scoresheet values(?,?,?,?,?,?)";
		flag=SQLHelper.executeUpdateByParams(sql,sheet.getStu_id(),sheet.getName(),sheet.getSubject_id(),sheet.getSubject(),sheet.getScore(),sheet.getCredit());
		return flag;
	}
	public ScoreSheet quertSheetById(String id) {
		ScoreSheet sheet=null;
		String sql="select * from scoresheet where stu_id='"+id+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
			sheet=new ScoreSheet();
			Object[] arr=dblist.get(0);
			sheet.setStu_id(arr[0].toString());
			sheet.setName(arr[1].toString());
			sheet.setSubject_id(arr[2].toString());
			sheet.setSubject(arr[3].toString());
			sheet.setScore(Float.parseFloat(arr[4].toString()));
			sheet.setCredit(Float.parseFloat(arr[5].toString()));
		}
		return sheet;
	}
	public ScoreSheet querySheetByIds(String id1,String id2) {
		ScoreSheet sheet=null;
		String sql="select * from scoresheet where stu_id='"+id1+"' and subject_id='"+id2+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
			sheet=new ScoreSheet();
			Object[] arr=dblist.get(0);
			sheet.setStu_id(arr[0].toString());
			sheet.setName(arr[1].toString());
			sheet.setSubject_id(arr[2].toString());
			sheet.setSubject(arr[3].toString());
			sheet.setScore(Float.parseFloat(arr[4].toString()));
			sheet.setCredit(Float.parseFloat(arr[5].toString()));
		}
		return sheet;
	}
	public List<ScoreSheet> querySheet() {
		List<ScoreSheet> ScoreList=new ArrayList<ScoreSheet>();
		String sql="select * from scoresheet";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			ScoreSheet sheet=new ScoreSheet();
			sheet.setStu_id(arr[0].toString());
			sheet.setName(arr[1].toString());
			sheet.setSubject_id(arr[2].toString());
			sheet.setSubject(arr[3].toString());
			sheet.setScore(Float.parseFloat(arr[4].toString()));
			sheet.setCredit(Float.parseFloat(arr[5].toString()));
			ScoreList.add(sheet);
		}
		return ScoreList;
	}
	public List<ScoreSheet> querySheet(String id) {
		List<ScoreSheet> ScoreList=new ArrayList<ScoreSheet>();
		String sql="select * from scoresheet where stu_id='"+id+"'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			ScoreSheet sheet=new ScoreSheet();
			sheet.setStu_id(arr[0].toString());
			sheet.setName(arr[1].toString());
			sheet.setSubject_id(arr[2].toString());
			sheet.setSubject(arr[3].toString());
			sheet.setScore(Float.parseFloat(arr[4].toString()));
			sheet.setCredit(Float.parseFloat(arr[5].toString()));
			ScoreList.add(sheet);
		}
		return ScoreList;
	}
	public int updateSheet(ScoreSheet sheet) {
		String sql="update scoresheet set score="+sheet.getScore()+",credit="+sheet.getCredit()+" where stu_id='"+sheet.getStu_id()+"' and subject_id='"+sheet.getSubject_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int deleteSheet(ScoreSheet sheet) {
		String sql="delete from scoresheet where stu_id='"+sheet.getStu_id()+"' and subject_id='"+sheet.getSubject_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
}
