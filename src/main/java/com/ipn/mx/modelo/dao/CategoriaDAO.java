/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.mx.modelo.dao;

import com.ipn.mx.modelo.dto.CategoriaDTO;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author J.Perez
 */
public class CategoriaDAO {
    /*PARA LA BASE DE DATOS: STORE PROCEDURES
    ============================================================================
    
        create or replace function seleccionaTodoCategoria() returns Table(
            idCategoria int,
            nombreCategoria varchar,
            descripcionCategoria varchar
        ) as $$
                select * from Categoria;
        $$ language sql

        select seleccionaTodoCategoria();
    
    ============================================================================
    
    create or replace procedure spInsertarCategoria(
            nombre varchar,
            descripcion varchar
    )
    language sql
    as $$
            insert into categoria (nombrecategoria, descripcioncategoria) values (nombre, descripcion);
    $$

    call spInsertarCategoria('Categoria D', 'Categoria prueba.');
    
    ============================================================================
    
    create or replace procedure spActualizarCategoria(
            in id int,
            in nombre varchar,
            in descripcion varchar
    )
    language sql
    as $$
            update categoria set nombrecategoria=nombre, descripcioncategoria=descripcion where idcategoria=id;
    $$

    call spActualizarCategoria(5,'Categoria D', 'Categoria prueba actualizada.');
    
    ============================================================================
    
    create or replace procedure spEliminarCategoria(
            id int
    )
    language sql
    as $$
            delete from categoria where idcategoria=id;
    $$

    call spEliminarCategoria(5);
    
    ============================================================================
    
    
    
    */
    private final String SQL_INSERT = "";
    private final String SQL_UPDATE = "update Categoria set nombreCategoria = ?, descripcionCategoria = ? where idCategoria = ?";
    private final String SQL_DELETE = "delete from Categoria where idCategoria = ?";
    private final String SQL_READ = "select idCategoria,nombreCategoria,descripcionCategoria from Categoria where idCategoria = ?";
    private final String SQL_READ_ALL = "select * from seleccionaTodoCategoria()";
    
    private Connection conexion;
    
//    private void conectar(){
//        String user = "postgres";
//        String pwd = "admin";
//        String url="jdbc:postgresql://localhost:5432/Base3CM13";
//        String pgDriver = "org.postgresql.Driver";
//        
//        try{
//            Class.forName(pgDriver);
//            conexion = DriverManager.getConnection(url, user, pwd);
//        }catch(Exception e){
//            e.printStackTrace();
//        }
//    };
    
    private void conectar(){
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
    };
    
    public void create(CategoriaDTO dto) throws SQLException{
        conectar();
        CallableStatement ps = null;
        try{
            ps = conexion.prepareCall(SQL_INSERT);
            ps.setString(1, dto.getEntidad().getNombreCategoria());
            ps.setString(2, dto.getEntidad().getDescripcionCategoria());
            ps.executeUpdate();
        }finally{
            if(ps != null)
                ps.close();
            
            if (conexion != null)
                conexion.close();
        }
    }
    
    public void update(CategoriaDTO dto) throws SQLException{
        conectar();
        CallableStatement ps = null;
        try{
            ps = conexion.prepareCall(SQL_UPDATE);
            ps.setString(1, dto.getEntidad().getNombreCategoria());
            ps.setString(2, dto.getEntidad().getDescripcionCategoria());
            ps.setInt(3, dto.getEntidad().getIdCategoria());
            ps.executeUpdate();
        }finally{
            if(ps != null)
                ps.close();
            if(conexion != null)
                conexion.close();
        }
    }
    
    public void delete(CategoriaDTO dto) throws SQLException{
        conectar();
        CallableStatement ps = null;
        try{
            ps = conexion.prepareCall(SQL_DELETE);
            ps.setInt(1, dto.getEntidad().getIdCategoria());
            ps.executeUpdate();
        }finally{
            if(ps != null)
                ps.close();
            if(conexion != null)
                conexion.close();
        }
    }
    
    public CategoriaDTO read(CategoriaDTO dto) throws SQLException{
        conectar();
        CallableStatement ps = null;
        ResultSet rs = null;
        
        try{
            ps = conexion.prepareCall(SQL_READ);
            ps.setInt(1, dto.getEntidad().getIdCategoria());
            rs = ps.executeQuery();
            List resultados = obtenerResultados(rs);
            if(resultados.size()>0)
                return (CategoriaDTO)resultados.get(0);
            else
                return null;
        }finally{
            if(rs != null)
                rs.close();
            if(ps != null)
                ps.close();
            if(conexion != null)
                conexion.close();
        }
    }
    
    public List readAll() throws SQLException{
        conectar();
        CallableStatement ps = null;
        ResultSet rs = null;
        
        try{
            ps = conexion.prepareCall(SQL_READ_ALL);
            rs = ps.executeQuery();
            List resultados = obtenerResultados(rs);
            if(resultados.size() > 0)
                return resultados;
            else
                return null;
        }finally{
            if(rs != null)
                rs.close();
            if(ps != null)
                ps.close();
            if(conexion != null)
                conexion.close();
        }
    }

    private List obtenerResultados(ResultSet rs) throws SQLException{
        List resultados = new ArrayList();
        while(rs.next()){
            CategoriaDTO dto =  new CategoriaDTO();
            dto.getEntidad().setIdCategoria(rs.getInt("idCategoria"));
            dto.getEntidad().setNombreCategoria(rs.getString("nombreCategoria"));
            dto.getEntidad().setDescripcionCategoria(rs.getString("descripcionCategoria"));
            resultados.add(dto);
        }
        return resultados;
    }
    
    public static void main (String [] args){
        CategoriaDAO dao = new CategoriaDAO();
        CategoriaDTO dto = new CategoriaDTO();
        
//        dto.getEntidad().setIdCategoria(2);
        //dto.getEntidad().setNombreCategoria("Computo");
        //dto.getEntidad().setDescripcionCategoria("Cosas para la escuela");
        
        try {
            //dao.create(dto);
            //dao.update(dto);
            System.out.println(dao.readAll());
            //System.out.println(dao.read(dto));
            
//            dao.delete(dto);
        } catch (SQLException ex) {
            Logger.getLogger(CategoriaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
