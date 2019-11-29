package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dbutil.SQLHelper;
import entity.CardUser;

public class CardUserDao {
	public boolean addUser(CardUser user) {
		boolean flag=false;
		String sql="insert into carduser values(?,?,?,?,?,?,?,?)";
		flag=SQLHelper.executeUpdateByParams(sql, user.getId(),user.getBank_card_id(),user.getHostname(),user.getPwd(),user.getStatus(),user.getBalance(),user.getConsumption_today(),user.getRecent_recharge());
		return flag;
	}
	public String queryUserBankCard(String id) {
		CardUser user=queryUserById(id);
		String sql="select bank_card_id from carduser where card_id='"+user.getId()+"'";
		ResultSet rs=SQLHelper.executeQuery(sql);
		try{
			if(rs.next()&&rs.getString(1).trim().equals(user.getBank_card_id()))
			{}
			SQLHelper.closeConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return user.getBank_card_id();
	}
	public String queryUsername(String id) {
		CardUser user=queryUserById(id);
		String sql="select hostname from carduser where card_id='"+user.getId()+"'";
		ResultSet rs=SQLHelper.executeQuery(sql);
		try{
			if(rs.next()&&rs.getString(1).trim().equals(user.getHostname()))
			{}
			SQLHelper.closeConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return user.getHostname();
	}
	public String queryStatus(String id) {
		CardUser user=queryUserById(id);
		String sql="select card_status from carduser where card_id='"+user.getId()+"'";
		ResultSet rs=SQLHelper.executeQuery(sql);
		try{
			if(rs.next()&&rs.getString(1).trim().equals(user.getStatus()))
			{}
			SQLHelper.closeConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return user.getStatus();
	}
	public float queryBalance(String id){
		CardUser user=queryUserById(id);
		String sql="select balance from carduser where card_id='"+user.getId()+"'";
		ResultSet rs=SQLHelper.executeQuery(sql);
		try{
			if(rs.next()&&rs.getString(1).trim().equals(String.valueOf(user.getBalance())))
			{}
			SQLHelper.closeConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return user.getBalance();
	}
	public float queryConsumption(String id) {
		CardUser user=queryUserById(id);
		String sql="select consumption_today from carduser where card_id='"+user.getId()+"'";
		ResultSet rs=SQLHelper.executeQuery(sql);
		try{
			if(rs.next()&&rs.getString(1).trim().equals(String.valueOf(user.getConsumption_today())))
			{}
			SQLHelper.closeConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return user.getConsumption_today();
	}
	public float queryRecharge(String id) {
		CardUser user=queryUserById(id);
		String sql="select recent_recharge from carduser where card_id='"+user.getId()+"'";
		ResultSet rs=SQLHelper.executeQuery(sql);
		try{
			if(rs.next()&&rs.getString(1).trim().equals(String.valueOf(user.getRecent_recharge())))
			{}
			SQLHelper.closeConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return user.getRecent_recharge();
	}
	public boolean validatepwd(CardUser user) {
		boolean flag = false;
		String sql="select card_pwd from carduser where card_id='"+user.getId()+"'";
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
	public CardUser queryUserById(String id)  {
		CardUser user = null;
		String sql = "select * from carduser where card_id='" + id + "'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
		    user = new CardUser();
		    Object[] arr=dblist.get(0);
			user.setId(arr[0].toString());
			user.setBank_card_id(arr[1].toString());
			user.setHostname(arr[2].toString());
			user.setPwd(arr[3].toString());
			user.setStatus(arr[4].toString());
			user.setBalance(Float.parseFloat(arr[5].toString()));
			user.setConsumption_today(Float.parseFloat(arr[6].toString()));
			user.setRecent_recharge(Float.parseFloat(arr[7].toString()));
			
		}		
		return user;
	}
	public CardUser queryUserByName(String name)  {
		CardUser user = null;
		String sql = "select * from carduser where hostname='" + name + "'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
		    user = new CardUser();
		    Object[] arr=dblist.get(0);
			user.setId(arr[0].toString());
			user.setBank_card_id(arr[1].toString());
			user.setHostname(arr[2].toString());
			user.setPwd(arr[3].toString());
			user.setStatus(arr[4].toString());
			user.setBalance(Float.parseFloat(arr[5].toString()));
			user.setConsumption_today(Float.parseFloat(arr[6].toString()));
			user.setRecent_recharge(Float.parseFloat(arr[7].toString()));
			
		}		
		return user;
	}
	public List<CardUser> queryUser() {
		List<CardUser> ulist = new ArrayList<CardUser>();
		String sql = "select * from carduser";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			CardUser user=new CardUser();
			user.setId(arr[0].toString());
			user.setBank_card_id(arr[1].toString());
			user.setHostname(arr[2].toString());
			user.setPwd(arr[3].toString());
			user.setStatus(arr[4].toString());
			user.setBalance(Float.parseFloat(arr[5].toString()));
			user.setConsumption_today(Float.parseFloat(arr[6].toString()));
			user.setRecent_recharge(Float.parseFloat(arr[7].toString()));
			ulist.add(user);
		}
		return ulist;
	}
	public int updateName(CardUser user) {
		String sql = "update carduser set hostname='"+user.getHostname()+"'where card_id='"+user.getId()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int updatePwd(CardUser user) {
		String sql = "update carduser set card_pwd='"+user.getPwd()+"'where card_id='"+user.getId()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int updateBankCard(CardUser user) {
		String sql = "update carduser set bank_card_id='"+user.getBank_card_id()+"'where card_id='"+user.getId()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int updateStatus(CardUser user) {
		String sql = "update carduser set card_status='"+user.getStatus()+"'where card_id='"+user.getId()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int updateMoney(CardUser user) {
		String sql = "update carduser set balance="+user.getBalance()+",recent_recharge="+user.getRecent_recharge()+" where card_id='"+user.getId()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int updateConsumption(CardUser user) {
		String sql = "update carduser set consumption_today="+user.getConsumption_today()+" where card_id='"+user.getId()+"'";
		return SQLHelper.executeUpdate(sql);
	}
}
