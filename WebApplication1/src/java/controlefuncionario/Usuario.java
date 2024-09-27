/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlefuncionario;

import java.sql.*;
import util.Conexao;

/**
 *
 * @author kaua_mellato
 */
public class Usuario {
    
    
    private String Email;
    private String Senha;
    
    
    
    public Usuario verificarlogin() throws ClassNotFoundException{
        
     Connection con = Conexao.conectar();
     Usuario user = null;    
     String sql = "select email, senha from usuario where email = ?";
    
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.getEmail());
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                user = new Usuario();
                
                user.setEmail(rs.getString("email"));
                user.setSenha(rs.getString("senha"));
            }
        } catch (SQLException e) {
            System.out.println("deu erro"+e);
            return null;
        }
        
        return user;
    
    }
    
    public boolean incluirUsuario()  throws  ClassNotFoundException{
    String sql = "insert into usuario(email, senha) values(? , ?)";
    Connection con = Conexao.conectar();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.getEmail());
            stm.setString(2, this.getSenha());
            stm.execute();
        } catch (SQLException e) {
            System.out.println("Não deu certo");
            return  false;
        }
        
        return true;
    }
            
    
    
    

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getSenha() {
        return Senha;
    }

    public void setSenha(String Senha) {
        this.Senha = Senha;
    }
    
}
