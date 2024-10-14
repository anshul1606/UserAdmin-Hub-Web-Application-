package com.admin.DAO;
import java.sql.*;



import com.admin.bean.OwnerAdminBean;
import com.admin.bean.AdminBean;
import com.net.connect.Connect;

public class AdminDAO {
  static Connection con = null;
  static PreparedStatement ps = null;
  static int status = 0;
  static ResultSet rs = null;
  
  public static int Register(AdminBean ab) {
	  try {
		  con = Connect.getConnection();
		String sql = "insert into admin_tb(Admin_FirstName,Admin_LastName,Admin_Email,Admin_CNumber,Admin_Address,Admin_PinCode,Admin_Password) values(?,?,?,?,?,?,?);";
		ps = con.prepareStatement(sql);
		
		ps.setString(1, ab.getAfname());
		ps.setString(2, ab.getAlname());
		ps.setString(3, ab.getAemail());
		ps.setInt(4, ab.getAcnumber());
		ps.setString(5, ab.getA_address());
		ps.setInt(6, ab.getApcode());
		ps.setInt(7, ab.getApassword());
		
    	status = ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	  return status;
  }
  public static int OwnerLogin(OwnerAdminBean oab) {
	  try {
		  con = Connect.getConnection();
		  String sql = "select * from owneradmin_tb where OwnerUserName=? and OwnerPassword=?;";
		  ps = con.prepareStatement(sql);
		
		  ps.setString(1, oab.getOuname());
		  ps.setInt(2, oab.getOpassword());
		
		  rs = ps.executeQuery();
		  	
		  if(rs.next())
		  	status = 1;
		  else
		  	status = 0;
		  	
		}catch (Exception e) {
			e.printStackTrace();
		}
			return status;
  }

  public static int Login(AdminBean ab) {
	  try {
		  con = Connect.getConnection();
		  String sql = "select * from admin_tb where Admin_Email=? and Admin_Password=?;";
		  ps = con.prepareStatement(sql);
		
		  ps.setString(1, ab.getAemail());
		  ps.setInt(2, ab.getApassword());
		
		  rs = ps.executeQuery();
		  	
		  if(rs.next())
		  	status = 1;
		  else
		  	status = 0;
		  	
		}catch (Exception e) {
			e.printStackTrace();
		}
			return status;
  }
  
  
public static int AddAdmin(AdminBean ab) {
	try {
		con=Connect.getConnection();
		String sql="insert into admin_tb(Admin_FirstName,Admin_LastName,Admin_Email,Admin_CNumber,Admin_Address,Admin_PinCode,Admin_Password) values(?,?,?,?,?,?,?);";
		ps=con.prepareStatement(sql);
		ps.setString(1, ab.getAfname());
		ps.setString(2, ab.getAlname());
		ps.setString(3, ab.getAemail());
		ps.setInt(4, ab.getAcnumber());
		ps.setString(5, ab.getA_address());
		ps.setInt(6, ab.getApcode());
		ps.setInt(7, ab.getApassword());
		status=ps.executeUpdate();
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	return status;
	
}
public static ResultSet Show() {	
	try {
		con = Connect.getConnection();
		String sql = "select * from admin_tb;";
        ps=con.prepareStatement(sql);

   rs = ps.executeQuery();
  } catch (Exception e) {
            e.printStackTrace();
	}		
		return rs;		
	}
public static ResultSet ShowUpdate(String un) {	
	try {
		con = Connect.getConnection();
		String sql = "select * from admin_tb where Admin_Email=?;";
        ps=con.prepareStatement(sql);
        
        ps.setString(1, un);

   rs = ps.executeQuery();
  } catch (Exception e) {
            e.printStackTrace();
	}		
		return rs;		
	}
public static int Update(AdminBean ab) {	
try {
	con = Connect.getConnection();
	String sql = 
"update admin_tb set Admin_FirstName=?,Admin_LastName=?,Admin_Email=?,Admin_CNumber=?,Admin_Address=?,Admin_PinCode=?,Admin_Password=? where Admin_Id=?;";
    ps=con.prepareStatement(sql);
    
    ps.setString(1, ab.getAfname());
	ps.setString(2, ab.getAlname());
	ps.setString(3, ab.getAemail());
	ps.setInt(4, ab.getAcnumber());
	ps.setString(5, ab.getA_address());
	ps.setInt(6, ab.getApcode());
	ps.setInt(7, ab.getApassword());
	ps.setInt(8,ab.getAid());

    status = ps.executeUpdate();
  } catch (Exception e) {
        e.printStackTrace();
 }		
	return status;	
}
public static int Delete(String aemail) {	
	try {
		con = Connect.getConnection();
		System.out.println("Attempting to delete record with email: " + aemail);
		String sql = "delete from admin_tb where Admin_Email=?;";
        ps=con.prepareStatement(sql);
        
        ps.setString(1, aemail);

        status = ps.executeUpdate();
      } catch (Exception e) {
            e.printStackTrace();
     
     }		
		return status;	
  }

}
