package br.com.fiap.spring.model;

public enum Nivel {

	PLENO("Pleno"), JUNIOR("J�nior"), SENIOR("S�nior");
	
	private final String label;
	
	private Nivel(String label) {
		this.label = label;
	}

	public String getLabel() {
		return label;
	}
	
}