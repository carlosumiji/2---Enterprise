package br.com.fiap.spring.model;

public class Festa {
	
	private int id;
	
	private String endereco;
	
	private boolean lembrancinhas;
	
	private int quantidade;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public boolean isLembrancinhas() {
		return lembrancinhas;
	}

	public void setLembrancinhas(boolean lembrancinhas) {
		this.lembrancinhas = lembrancinhas;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

}
