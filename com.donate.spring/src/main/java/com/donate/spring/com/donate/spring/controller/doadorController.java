package com.donate.spring.com.donate.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.donate.spring.com.donate.spring.entidades.doador;
import com.donate.spring.com.donate.spring.services.servico;

@Controller
public class doadorController {

    @Autowired
    private servico servico;

    @GetMapping({"/doador", "/"})
    public String ListagemDoador(Model modelo){
        modelo.addAttribute("doador", servico.listagem());
        return "doador";
    }

    @GetMapping("/doador/cadastra")
    public String creatFormDoador(Model modelo){
        doador doar = new doador();
        modelo.addAttribute("doador", doar);
        return "cadastraDoador";
    }

    @PostMapping("/doador")
    public String salvar(@ModelAttribute("doador") doador doar){
        servico.guardarDoador(doar);
        return "redirect:/daodor";
    }

    @GetMapping("/doador/cadastraDoador/{id}")
    public String editar(@PathVariable Long id, Model modelo){
        modelo.addAttribute("doador", servico.procurarId(id));
        return "editarDoador";
    } 

    @PostMapping("/doador/{id}")
    public String atualizar(@PathVariable Long id, @ModelAttribute("doador") doador doar, Model modelo){
        doador doarExtend = servico.procurarId(id);
        doarExtend.setNomeDoador(doar.getNomeDoador());
        doarExtend.setTelDoador(doar.getTelDoador());
        doarExtend.setCepDoador(doar.getCepDoador());
        doarExtend.setCidadeDoador(doar.getCidadeDoador());
        doarExtend.setEnderecoDoador(doar.getEnderecoDoador());
        doarExtend.setDataRetirada(doar.getDataRetirada());
        doarExtend.setComentairos(doar.getComentairos());

        return "redirect:/doador";
    }

    @GetMapping("/doador/{id}")
    public String delet(@PathVariable Long id){
        servico.deleteDoador(id);
        return "redirect:/doador";
    }
    
    
}
