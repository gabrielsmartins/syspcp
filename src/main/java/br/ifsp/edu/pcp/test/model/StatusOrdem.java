package br.ifsp.edu.pcp.test.model;

public enum StatusOrdem {
	
	EMITIDA("Emitida"),
	INICIADA("Iniciada"),
	ENCERRADA("Encerrada"),
	CANCELADA("Cancelada");
	
	private String status;
	
	private StatusOrdem(String status) {
		this.status = status;
	}

	public String getStatus() {
		return status;
	}

}
