package com.donate.spring.com.donate.spring.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.donate.spring.com.donate.spring.entidades.doador;

@Repository
public interface doadorRepositorio extends JpaRepository<doador, Long>  {
    
}
