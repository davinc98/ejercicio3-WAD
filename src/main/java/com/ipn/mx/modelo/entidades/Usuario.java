/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.mx.modelo.entidades;

import java.io.Serializable;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author leoj_
 */
@Data
@NoArgsConstructor
public class Usuario implements Serializable{
    private int idUsuario;
    private String nombre;
    private String paterno;
    private String materno;
    private String email;
    private String nombreUsuario;
    private String claveUsuario;
    private String tipoUsuario;
    
    
    //CREAR TABLA BD
    //CRAER DAO
    //CREAR SERLVLET CONTROLADOR
    //CREAR PAGINAs DE USUARIO
    
    //BUSCAR LA FORMA DE QUE EL METODO CONECTAR A BASE DE DATOS NO SE DUPLIQUE
            //PARA CREAR UN DATASOURCE
}
