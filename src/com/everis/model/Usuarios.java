package com.everis.model;


public class Usuarios {

	private String nome;
	private String departamento;
	private String usuario;
	private String senha;
	private Integer nivel;

	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome; 
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getDepartamento() {
		return departamento;
	}

	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}

	public Integer getNivel() {
		return nivel;
	}

	public void setNivel(Integer nivel) {
		this.nivel = nivel;
	}

}
