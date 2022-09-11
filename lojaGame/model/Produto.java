package com.generation.lojaGame.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table (name = "tb_produtos")
public class Produto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull(message = "O atributo nome é obrigatório!")
	@Size (min = 10, max = 1000, message = "O atributo nome deve conter no mínimo 10 e no máximo 1000 letras")
	private String nome;
	
	@NotBlank
	private int valor;
	
	@NotNull(message = "O atributo idioma é obrigatório!")
	@Size (min = 10, max = 1000, message = "O atributo idioma deve conter no mínimo 10 e no máximo 1000 letras")
	private String idioma;
	
	@NotNull(message = "O atributo texto é obrigatório!")
	@Size (min = 10, max = 1000, message = "O atributo texto deve conter no mínimo 10 e no máximo 1000 letras")
	private String genero;
	
	@NotNull(message = "O atributo texto é obrigatório!")
	@Size (min = 10, max = 1000, message = "O atributo texto deve conter no mínimo 10 e no máximo 1000 letras")
	private String classificacao;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getValor() {
		return valor;
	}

	public void setValor(int valor) {
		this.valor = valor;
	}

	public String getIdioma() {
		return idioma;
	}

	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getClassificacao() {
		return classificacao;
	}

	public void setClassificacao(String classificacao) {
		this.classificacao = classificacao;
	}
	
	
	
}
