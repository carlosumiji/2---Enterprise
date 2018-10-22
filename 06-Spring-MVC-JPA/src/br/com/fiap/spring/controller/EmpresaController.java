package br.com.fiap.spring.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.EmpresaDAO;
import br.com.fiap.spring.model.Empresa;

@Controller
@RequestMapping("empresa")
public class EmpresaController {

	@Autowired
	private EmpresaDAO dao;
	
	//URL : empresa/cadastrar
	@GetMapping("cadastrar")
	public String cadastrar(Empresa empresa) {
		return "empresa/cadastro"; //VIEW - nome da pasta e arquivo JSP
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public String cadastrar(@Valid Empresa empresa, 
			BindingResult result,
			RedirectAttributes r) {
		
		if (result.hasErrors()) {
			return cadastrar(empresa); 
		}
		dao.create(empresa);
		r.addFlashAttribute("msg", "Empresa cadastrada!");
		return "redirect:/empresa/cadastrar"; //URL
	}
	
}
