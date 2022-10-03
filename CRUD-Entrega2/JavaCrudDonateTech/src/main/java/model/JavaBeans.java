package model;

public class JavaBeans {
	
	private int codDoador;
	private String nomeDoador;
	private String telDoador;
	private String cidadeDoador;
	private String cepDoador;
	private String enderecoDoador;
	private String dataRetirada;
	private String comentarios;
	
	
	public JavaBeans() {
		super();
		
		
	}
	public JavaBeans(int codDoador, String nomeDoador, String telDoador, String cidadeDoador, String cepDoador,
			String enderecoDoador, String dataRetirada, String comentarios) {
		super();
		this.codDoador = codDoador;
		this.nomeDoador = nomeDoador;
		this.telDoador = telDoador;
		this.cidadeDoador = cidadeDoador;
		this.cepDoador = cepDoador;
		this.enderecoDoador = enderecoDoador;
		this.dataRetirada = dataRetirada;
		this.comentarios = comentarios;
	}
	public int getCodDoador() {
		return codDoador;
	}
	public void setCodDoador(int codDoador) {
		this.codDoador = codDoador;
	}
	public String getNomeDoador() {
		return nomeDoador;
	}
	public void setNomeDoador(String nomeDoador) {
		this.nomeDoador = nomeDoador;
	}
	public String getTelDoador() {
		return telDoador;
	}
	public void setTelDoador(String telDoador) {
		this.telDoador = telDoador;
	}
	public String getCidadeDoador() {
		return cidadeDoador;
	}
	public void setCidadeDoador(String cidadeDoador) {
		this.cidadeDoador = cidadeDoador;
	}
	public String getCepDoador() {
		return cepDoador;
	}
	public void setCepDoador(String cepDoador) {
		this.cepDoador = cepDoador;
	}
	public String getEnderecoDoador() {
		return enderecoDoador;
	}
	public void setEnderecoDoador(String enderecoDoador) {
		this.enderecoDoador = enderecoDoador;
	}
	public String getDataRetirada() {
		return dataRetirada;
	}
	public void setDataRetirada(String dataRetirada) {
		this.dataRetirada = dataRetirada;
	}
	public String getComentarios() {
		return comentarios;
	}
	public void setComentarios(String comentarios) {
		this.comentarios = comentarios;
	}
	
	
	

}
