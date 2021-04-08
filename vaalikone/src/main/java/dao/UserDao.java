package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.Connections;
import data.User;
 
public class UserDao {
	
	private Connection conn;
	
    public User checkLogin(String email, String password) throws SQLException,
            ClassNotFoundException {
    	   
    	conn=Connections.getConnection();
    	
        String sql = "SELECT * FROM users WHERE email = ? and password = ?";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);
 
        ResultSet result = statement.executeQuery();
 
        User user = null;
        if (result.next()) {
            user = new User();
            user.setFullname(result.getString("fullname"));
            user.setEmail(email);
        }
       
        conn.close();
 
        return user;
    }
}
