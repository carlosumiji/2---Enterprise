package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.OrcamentoDAO;
import br.com.fiap.spring.exception.KeyNotFoundException;
import br.com.fiap.spring.model.Orcamento;

@Controller
@RequestMapping("orcamento")
public class OrcamentoController {

	@Autowired
	private OrcamentoDAO dao;
	
	@Transactional
	@PostMapping("aprovar")
	public String aprovar(int codigo, RedirectAttributes r) {
		dao.aprovar(codigo);
		r.addFlashAttribute("msg", "Orçamento aprovado!");
		return "redirect:/orcamento/listar";
	}
	
	@Transactional
	@PostMapping("remover")
	public String excluir(int codigo, RedirectAttributes r) {
		try {
			dao.delete(codigo);
		} catch (KeyNotFoundException e) {
			e.printStackTrace();
		}
		r.addFlashAttribute("msg", "Orçamento excluido!");
		return "redirect:/orcamento/listar";
	}
	
	@Transactional
	@PostMapping("editar")
	public String processarEdicao(Orcamento orcamento, RedirectAttributes r) {
		dao.update(orcamento);
		r.addFlashAttribute("msg", "Orçamento atualizado");
		return "redirect:/orcamento/listar";
	}
	
	@GetMapping("editar/{id}")
	public ModelAndView editar(@PathVariable("id") int codigo) {
		return new ModelAndView("orcamento/edicao")
				.addObject("orcamento", dao.read(codigo));
	}
	
	@GetMapping("pesquisar")
	public ModelAndView pesquisar(String descricao) {
		return new ModelAndView("orcamento/lista")
				.addObject("orcamentos", dao.buscarPorDescricao(descricao));
	}
	
	@GetMapping("listar")
	public ModelAndView listar() {
		return new ModelAndView("orcamento/lista")
				.addObject("orcamentos", dao.list() );
	}
	
	@GetMapping("cadastrar")
	public String abrirFormulario(Orcamento orcamento) {
		return "orcamento/cadastro";
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public String processarForm(Orcamento orcamento, RedirectAttributes r) {		
		dao.create(orcamento);
		r.addFlashAttribute("msg", "Orçamento registrado!");
		return "redirect:/orcamento/cadastrar";
	}
	
}
