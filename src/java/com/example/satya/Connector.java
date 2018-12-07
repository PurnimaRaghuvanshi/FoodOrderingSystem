/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.satya;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Satya Prakash
 */
public class Connector {
     private static Connection con;
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/fos","root","@satya123");
            
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return con;
    }
    
}
