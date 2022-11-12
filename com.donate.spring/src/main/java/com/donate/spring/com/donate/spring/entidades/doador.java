package com.donate.spring.com.donate.spring.entidades;

import javax.persistence.*;

@Entity
@Table(name = "doador")
public class doador {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    
    @Column(name = "nomeDoador", nullable = false )
    private String nomeDoador;

    @Column(name = "telDoador", nullable = false )
    private String telDoador;

    @Column(name = "cidadeDoador", nullable = false)
    private String cidadeDoador;

    @Column(name= "cepDoador", nullable = false)
    private String cepDoador;

    @Column(name = "enderecoDoador", nullable = false)
    private String enderecoDoador;

    @Column(name = "dataRetirada", nullable = false)
    private String dataRetirada;

    @Column(name = "comentarios")
    private String comentairos;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public String getComentairos() {
        return comentairos;
    }

    public void setComentairos(String comentairos) {
        this.comentairos = comentairos;
    }

    @Override
    public String toString() {
        return "doadr [id=" + id + ", nomeDoador=" + nomeDoador + ", telDoador=" + telDoador + ", cidadeDoador="
                + cidadeDoador + ", cepDoador=" + cepDoador + ", enderecoDoador=" + enderecoDoador + ", dataRetirada="
                + dataRetirada + ", comentairos=" + comentairos + "]";
    }

}
