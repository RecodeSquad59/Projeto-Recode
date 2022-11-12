package com.donate.spring.com.donate.spring.services;
import java.util.List;

import com.donate.spring.com.donate.spring.entidades.doador;



public interface servico {
    
    public List<doador> listagem();

    public doador guardarDoador(doador doador);
    
    public doador procurarId(Long id);

    public doador atualizarDoador(doador doador);

    public void deleteDoador(long id);
}
