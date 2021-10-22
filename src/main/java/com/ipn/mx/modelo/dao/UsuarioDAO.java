/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.mx.modelo.dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author leoj_
 */
public class UsuarioDAO {
    private final String SQL_INSERT = "";
    private final String SQL_UPDATE = "";
    private final String SQL_DELETE = "";
    private final String SQL_READ = "";
    private final String SQL_READ_ALL = "";
    
    private Connection conexion;
    
    public Connection conectar(){
        String user = "iewcorrxmgvsmo";
        String pwd = "a7750a2841c65540faa134f8c25978da1ea8dd72aaca9a853f0c30f2ac424fb7";
        String url="jdbc:postgresql://ec2-44-198-24-0.compute-1.amazonaws.com:5432/d5luuaqm2h0rv1";
        String pgDriver = "org.postgresql.Driver";
        
        try{
            Class.forName(pgDriver);
            conexion = DriverManager.getConnection(url, user, pwd);
        }catch(Exception e){
            e.printStackTrace();
        }
        return conexion;
    };
}
