package com.example.techblog.dao;

import com.example.techblog.entities.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    // method to insert user to database

    public boolean saveUser(User user){

        boolean f = false;
        try{

            // user->database;

            String query =  "insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2,user.getEmail());
            pstmt.setString(3,user.getPassword());
            pstmt.setString(4,user.getGender());
            pstmt.setString(5,user.getAbout());

            pstmt.executeUpdate();
            f = true;



        }catch (Exception e){
            e.printStackTrace();
        }
        return f;
    }

    // get user by useremail and userpassword

    public User getUserByEmailAndPassword(String email, String password){

        User user = null;
        try{

            String query = "select * from user where email =? and password=?";
            PreparedStatement ptsmt = con.prepareStatement(query);
            ptsmt.setString(1,email);
            ptsmt.setString(2,password);

            ResultSet set = ptsmt.executeQuery();
            if (set.next()) {


                user = new User();
                String name = set.getString("name");
                user.setName(name);
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("rdate"));
                user.setProfile(set.getString("profile"));



            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
}
