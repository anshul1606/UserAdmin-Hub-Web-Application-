package com.admin.DAO;

import java.sql.*;




import com.admin.bean.UserBean;
import com.net.connect.Connect;


public class UserDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static int status = 0;
	static ResultSet rs = null;
	
	public static int Register(UserBean ub) {	
		try {
			con = Connect.getConnection();
			String sql = "insert into user_tb (UserName,User_Email,User_CNumber,User_Address,User_PinCode,User_Password) values(?,?,?,?,?,?);";
	        ps=con.prepareStatement(sql);
	        
	        ps.setString(1, ub.getUname());
	        ps.setString(2, ub.getUemail());
	        ps.setInt(3, ub.getUcnumber());
	        ps.setString(4, ub.getU_address());
	        ps.setInt(5, ub.getUpcode());
	        ps.setInt(6, ub.getUpassword());

	        status = ps.executeUpdate();
	      } catch (Exception e) {
	            e.printStackTrace();
	     }		
			return status;	
	  }
	public static int Login(UserBean ub) {	
	try {
		con = Connect.getConnection();
		String sql = 
		"select * from user_tb where UserName=? and User_Password=?;";
        ps=con.prepareStatement(sql);
        
        ps.setString(1, ub.getUname());
        ps.setInt(2, ub.getUpassword());

   rs = ps.executeQuery();
   if(rs.next())
	   status = 1;
   else
	   status = 0;
	} catch (Exception e) {
            e.printStackTrace();
	}		
		return status;		
	}
	public static ResultSet Show() {	
		try {
			con = Connect.getConnection();
			String sql = "select * from user_tb;";
	        ps=con.prepareStatement(sql);

	   rs = ps.executeQuery();
	  } catch (Exception e) {
	            e.printStackTrace();
		}		
			return rs;		
		}
	public static int AddUser(UserBean ub) {
		try {
			con=Connect.getConnection();
			String sql="insert into user_tb(UserName,User_Email,User_CNumber,User_Address,User_PinCode,User_Password) values(?,?,?,?,?,?);";
			ps=con.prepareStatement(sql);
			ps.setString(1, ub.getUname());
			ps.setString(2, ub.getUemail());
			ps.setInt(3, ub.getUcnumber());
			ps.setString(4, ub.getU_address());
			ps.setInt(5, ub.getUpcode());
			ps.setInt(6, ub.getUpassword());
			
			status=ps.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return status;
		
	}
	public static int Update(UserBean ub) {	
		try {
			con = Connect.getConnection();
			String sql = 
		"update user_tb set UserName=?,User_Email=?,User_CNumber=?,User_Address=?,User_PinCode=?,User_Password=? where UserName=?;";
		    ps=con.prepareStatement(sql);
		    
		    ps.setString(1, ub.getUname());
			ps.setString(2, ub.getUemail());
			ps.setInt(3, ub.getUcnumber());
			ps.setString(4, ub.getU_address());
			ps.setInt(5, ub.getUpcode());
			ps.setInt(6, ub.getUpassword());
			ps.setString(7, ub.getUname());

		    status = ps.executeUpdate();
		  } catch (Exception e) {
		        e.printStackTrace();
		 }		
			return status;	
		}
	public static ResultSet ShowUpdate(String un) {	
		try {
			con = Connect.getConnection();
			String sql = "select * from user_tb where UserName=?;";
	        ps=con.prepareStatement(sql);
	        
	        ps.setString(1, un);

	   rs = ps.executeQuery();
	  } catch (Exception e) {
	            e.printStackTrace();
		}		
			return rs;		
		}
	public static int Delete(String uname) {	
		try {
			con = Connect.getConnection();
			System.out.println("Attempting to delete record with username: " + uname);
			String sql = "delete from user_tb where UserName=?;";
	        ps=con.prepareStatement(sql);
	        
	        ps.setString(1, uname);

	        status = ps.executeUpdate();
	        if (status > 0) {
	            System.out.println("Record with User_Id " + uname + " deleted successfully.");
	        } else {
	            System.out.println("No record found with User_Id " + uname + ". Deletion failed.");
	        }
	      } catch (Exception e) {
	            e.printStackTrace();
	     
	     }		
			return status;	
	  }
}