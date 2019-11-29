package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dbutil.SQLHelper;
import entity.BankCard;

public class BankDao {
	public boolean addBankCard(BankCard card) {
		boolean flag=false;
		String sql="insert into bankcard values(?,?,?,?,?)";
		flag=SQLHelper.executeUpdateByParams(sql, card.getBank_card_id(),card.getBankname(),card.getHostname(),card.getPwd(),card.getMoney());
		return flag;
	}
	public boolean validatepwd(String card_id,String Pwd) {
		boolean flag = false;
		String sql="select bank_card_pwd from bankcard where bank_card_id='"+card_id+"'";
		ResultSet rs=SQLHelper.executeQuery(sql);
		try{
			if(rs.next()&&rs.getString(1).equals(Pwd))
				flag=true;
			SQLHelper.closeConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return flag;
	}
	public BankCard queryBankCardById(String id)  {
		BankCard card = null;
		String sql = "select * from bankcard where bank_card_id='" + id + "'";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		if(dblist.size()>0){
		    card = new BankCard();
		    Object[] arr=dblist.get(0);
			card.setBank_card_id(arr[0].toString());
			card.setBankname(arr[1].toString());
			card.setHostname(arr[2].toString());
			card.setPwd(arr[3].toString());
			card.setMoney(Float.parseFloat(arr[4].toString()));
		}		
		return card;
	}
	public List<BankCard> queryBankCard() {
		List<BankCard> blist = new ArrayList<BankCard>();
		String sql = "select * from bankcard";
		List<Object[]> dblist=SQLHelper.executeQueryList(sql);
		for(Object[] arr:dblist){
			BankCard card=new BankCard();
			card.setBank_card_id(arr[0].toString());
			card.setBankname(arr[1].toString());
			card.setHostname(arr[2].toString());
			card.setPwd(arr[3].toString());
			card.setMoney(Float.parseFloat(arr[4].toString()));
			blist.add(card);
		}
		return blist;
	}
	public int updateBankCard(BankCard card) {
		String sql = "update bankcard set bank_card_pwd='"+card.getPwd()+"'where bank_card_id='"+card.getBank_card_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int updateBankCardMoney(BankCard card) {
		String sql = "update bankcard set money="+card.getMoney()+"where bank_card_id='"+card.getBank_card_id()+"'";
		return SQLHelper.executeUpdate(sql);
	}
	public int deleteBankCard(String card_id) {
		String sql = "delete from bankcard where bank_card_id='"+card_id+"'";
		return SQLHelper.executeUpdate(sql);
	}
}
