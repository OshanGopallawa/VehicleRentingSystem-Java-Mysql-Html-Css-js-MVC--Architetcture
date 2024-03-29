package com.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.test.DBConnect;
import com.test.Reservation;

public class CardDBUtil {
	
	private static Connection con =null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	private static Card card;
	
	
	public static boolean insertcarddetaisl(String cardno,String type,String username,String cvc,String expdate) {
		boolean isSuccess = false;
	try{
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "Insert into card VALUES ('"+cardno +"','" + type + "','"+ username +"', '"+cvc +"', '"+ expdate+"')";
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs>0)
		{
			isSuccess =true;
		}
		
		else {
			isSuccess =false;
		}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	Card c = new Card(cardno,type,username,cvc,expdate);
	
	ArrayList <Card> c1 = new ArrayList<> ();
	
	c1.add(c);

	return isSuccess;
}
	

    public static boolean editCard(String cardno, String type, String username, String cvc, String expdate) {
        boolean isSuccess = false;
        con = DBConnect.getConnection();

        try {
        	String sql = "UPDATE card SET type=?, username=?, cvc=?, expdate=? WHERE cardno=?";
        	PreparedStatement stmt = con.prepareStatement(sql);

        	// Set the parameters for the PreparedStatement
        	stmt.setString(1, type);
        	stmt.setString(2, username);
        	stmt.setString(3, cvc);
        	stmt.setString(4, expdate);
        	stmt.setString(5, cardno);

        	int rows = stmt.executeUpdate();
         

           

            if (rows > 0) {
                isSuccess = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } 
        

        return isSuccess;
    }

    public static List<Card> getCardDetails(String cardno) {
        List<Card> cardList = new ArrayList<>();
        con = DBConnect.getConnection();

        try {
            String sql = "SELECT * FROM card WHERE cardno='"+cardno + "'";
            stmt = con.createStatement();
            
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String cardNumber = rs.getString(1);
                String cardType = rs.getString(2);
                String cardUsername = rs.getString(3);
                String cardCVC = rs.getString(4);
                String cardExpDate = rs.getString(5);

                Card card = new Card(cardNumber, cardType, cardUsername, cardCVC, cardExpDate);
                cardList.add(card);
            }
            
            
        } catch (SQLException e) {
            e.printStackTrace();
        } 
        

        return cardList;
    }
    
    public static Card getSingleCard(String cardno) {
    Card c = null;
    
    try {
   String query = "SELECT * FROM card WHERE cardno=?";
    
    PreparedStatement pt = con.prepareStatement(query);
    pt.setString(1, cardno); // Set the parameter value
    
    ResultSet rs = pt.executeQuery();
    
    while (rs.next()) {
        String cardNumber = rs.getString(1);
        String cardType = rs.getString(2);
        String cardUsername = rs.getString(3);
        String cardCVC = rs.getString(4);
        String cardExpDate = rs.getString(5);

        Card card = new Card(cardNumber, cardType, cardUsername, cardCVC, cardExpDate);
        // You can do something with the 'card' object here
    }
    
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    return card;
    	
    
    }
    
    public static boolean deleteCard(String cardno) {
        boolean result = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "DELETE FROM card WHERE cardno='" + cardno + "'";

            int res = stmt.executeUpdate(sql);

            if (res > 0) {
                result = true;
            } else {
                result = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

}