package com.bookdeal.online.dao;

public class UserDao {
	public static boolean isvalidcredentials(String username,String password)
	{
		if(username.equals("Jeni") && password.equals("jeni@123"))
		{
			return true;
		
		}
		else
		{
			return false;
		}
	}
	

}
