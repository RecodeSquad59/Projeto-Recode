package com.donate.spring.com.donate.spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.donate.spring.com.donate.spring.entidades.doador;
import com.donate.spring.com.donate.spring.repositorio.doadorRepositorio;

@Service
public class servicoImpl implements servico {

    @Autowired
    private doadorRepositorio repositorio;

    @Override
    public List<doador> listagem() {
        
        return repositorio.findAll();
    }

    @Override
    public doador guardarDoador(doador doador) {
        
        return repositorio.save(doador);
    }

    @Override
    public doador procurarId(Long id) {
        
        return repositorio.findById(id).get();
    }

    @Override
    public doador atualizarDoador(doador doador) {
        
        return repositorio.save(doador);
    }

    @Override
    public void deleteDoador(long id) {
        
        repositorio.deleteById(id);
    }
    
}
