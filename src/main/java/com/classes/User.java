package com.classes;


public class User {
	private int id_user;
    private String login;
	private String senha;
	private String nome_completo;
	private int idade;
	private String retorno;
	
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getNome_completo() {
		return nome_completo;
	}
	public void setNome_completo(String nome_completo) {
		this.nome_completo = nome_completo;
	}
	public int getIdade() {
		return idade;
	}
	public void setIdade(int idade) {
		this.idade = idade;
	}
	public String getRetorno() {
		return retorno;
	}
	public void setRetorno(String retorno) {
		this.retorno = retorno;
	}

    public static int Maioridade(int Idade){
	   int Resultado = Idade;
	   return Resultado;
    }
    
    public static String NomeCompleto(String Nome){
 	   String Resultado = Nome;
 	   return Resultado;
     }
	
}
