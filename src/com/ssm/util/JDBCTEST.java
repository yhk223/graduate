package com.ssm.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ssm.entity.lbmessages;

public class JDBCTEST {
	private final static  String URL="jdbc:mysql://localhost:3306/study"; 
	private final static  String UNAME="root";
	private final static  String PWD="123";
	 static Connection connection=null;
	 static PreparedStatement pstr=null;
    public static  List<lbmessages> findlbmessage() throws ClassNotFoundException, SQLException {
    	  Class.forName("com.mysql.jdbc.Driver");
          connection = DriverManager.getConnection(URL,UNAME,PWD);
          
          String sql="select * from lbmessages order by id desc";
    	  pstr = connection.prepareStatement(sql);
    	  List<lbmessages> lblist=new ArrayList<>();
    	ResultSet  rs=pstr.executeQuery();
    	 while(rs.next()) {
    		 int ID=rs.getInt("id");
    		 String saver =rs.getString("saver");
    		 String savetime =rs.getString("savetime");
    		 String content =rs.getString("content");
    		 String recontent =rs.getString("recontent");
    		 String bclass =rs.getString("bclass");
    		 String sname =rs.getString("sname");
    		lbmessages lb=new lbmessages(ID,saver,content,recontent,bclass,sname,savetime);
    		lblist.add(lb);
    	 }
    	 connection.close();
    	 pstr.close();
    	 System.out.println(lblist);
    	 return lblist;
    }
}