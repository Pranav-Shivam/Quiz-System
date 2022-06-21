package com.dao;

import java.sql.*;
import com.entities.*;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean f = false;
        try {
            String query = "insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getName());
            pt.setString(2, user.getEmail());
            pt.setString(3, user.getPassword());
            pt.setString(4, user.getGender());
            pt.setString(5, user.getAbout());
            pt.executeUpdate();
            f = true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return f;
    }

    public User getUserByEmailAndPassWord(String email, String password) {
        User user = null;
        try {
            String query="select * from user where email=? and password=?";
            PreparedStatement pt=con.prepareStatement(query);
            pt.setString(1, email);
            pt.setString(2, password);
            ResultSet rs=pt.executeQuery();
            
            if(rs.next())
            {
                user=new User();
                String name=rs.getString("name");
                user.setName(name);
                user.setId(rs.getInt("iduser"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setGender(rs.getString("gender"));
                user.setAbout(rs.getString("about"));
                user.setDateTime(rs.getTimestamp("rdate"));
                user.setProfile(rs.getString("profile"));
                
            }
            
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
    public boolean updateUser(User user)
    {
        boolean f=false;
        try {
            String query="update user set name=? , email=? , password=? , about=? , profile=? where iduser=? ";
            PreparedStatement pt=con.prepareStatement(query);
            pt.setString(1, user.getName());
            pt.setString(2, user.getEmail());
            pt.setString(3, user.getPassword());
            pt.setString(4, user.getAbout());
            pt.setString(5, user.getProfile());
            pt.setInt(6, user.getId());
            pt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
