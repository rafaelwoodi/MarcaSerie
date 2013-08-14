package com.banco;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.classes.User;

public class UserDao  {   
   
	// a conexão com o banco de dados
	private Connection connection;
 
    public UserDao() {
	  this.connection = new ConnectionFactory().getConnection();
	   }
    public void adiciona(User user) {
        String sql = "insert into usuarios " +
                "(id_user,login,senha,nome_completo,idade, tipo)" +
                " values (seq_user.nextval,?,?,?,?, 'U')";
    
        try {
            // prepared statement para inserção
            PreparedStatement stmt = connection.prepareStatement(sql);
    
            // seta os valores
            stmt.setString(1,user.getLogin());
            stmt.setString(2,user.getSenha());
            stmt.setString(3,user.getNome_completo());
            stmt.setLong(4,user.getIdade());
            
            // executa
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public String login(User user) {
        String sql = "select login,senha from usuarios where login=? and senha=? and tipo = 'U'";
        String retorno = "";
        
        try {
            // prepared statement para inserção
            PreparedStatement stmt = connection.prepareStatement(sql);
    
            // seta os valores
            stmt.setString(1,user.getLogin());
            stmt.setString(2,user.getSenha());
            
            ResultSet rs = stmt.executeQuery();
            rs = stmt.executeQuery(sql);
            
            while(rs.next()) {
            	retorno = rs.getString("login");
            }
            
            System.out.println(retorno);
            
            // executa
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return retorno;
    }
    public List<User> getLista() {
        try {
            List<User> users = new ArrayList<User>();
            PreparedStatement stmt = this.connection.
                    prepareStatement("select * from usuarios where tipo = 'U'");
            ResultSet rs = stmt.executeQuery();
    
            while (rs.next()) {
                // criando o objeto Contato
                User user = new User();
                user.setId_user(rs.getInt("id_user"));
                user.setLogin(rs.getString("login"));
                user.setSenha(rs.getString("senha"));
                user.setNome_completo(rs.getString("nome_completo"));
                user.setIdade(rs.getInt("idade"));
                
                // adicionando o objeto à lista
                users.add(user);
            }
            rs.close();
            stmt.close();
            return users;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void altera(User user) {
        String sql = "update usuarios set login=?, senha=?,"+
                "nome_completo=?, idade=? where id_user=?";
    
        try {
            PreparedStatement stmt = connection
                    .prepareStatement(sql);
            stmt.setString(1,user.getLogin());
            stmt.setString(2,user.getSenha());
            stmt.setString(3,user.getNome_completo());
            stmt.setLong(4,user.getIdade());
            stmt.setInt(5,user.getId_user());
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void apaga(User user) {
        String sql = "delete from usuarios where id_user=?";
    
        try {
            PreparedStatement stmt = connection
                    .prepareStatement(sql);
            stmt.setInt(1,user.getId_user());
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
