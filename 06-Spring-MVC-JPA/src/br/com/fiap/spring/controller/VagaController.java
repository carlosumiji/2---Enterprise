package br.com.fiap.spring.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.EmpresaDAO;
import br.com.fiap.spring.dao.VagaDAO;
import br.com.fiap.spring.model.Nivel;
import br.com.fiap.spring.model.Vaga;

@Controller
@RequestMapping("vaga")
public class VagaController {

	@Autowired
	private VagaDAO dao;
	
	@Autowired
	private EmpresaDAO empresaDao;
	
	@GetMapping("listar")
	public ModelAndView listar() {
		return new ModelAndView("vaga/lista")
				.addObject("vagas", dao.list());
	}
	
	
	@GetMapping("cadastrar")
	public ModelAndView cadastrar(Vaga vaga) {		
		return new ModelAndView("vaga/cadastro")
				.addObject("empresas", empresaDao.list())
				.addObject("niveis", Nivel.values());
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView cadastrar(@Valid Vaga vaga, BindingResult result, RedirectAttributes r) {
		if (result.hasErrors()) {
			return cadastrar(vaga);
		}
		dao.create(vaga);
		r.addFlashAttribute("msg", "Vaga registrada");
		return new ModelAndView("redirect:/vaga/cadastrar");
	}
	
}
