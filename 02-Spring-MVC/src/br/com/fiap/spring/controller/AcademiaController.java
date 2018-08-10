package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Aluno;

@Controller
@RequestMapping("academia")
public class AcademiaController {

	@GetMapping("cadastrar")
	public String abrirForm() {
		return "academia/form";//pasta + jsp
	}
	
	@PostMapping("cadastrar")
	private ModelAndView processarForm(Aluno aluno) {
		ModelAndView retorno = new ModelAndView("academia/sucesso");
		retorno.addObject("msg", "Aluno registrado");
		retorno.addObject("a", aluno);
		return retorno;
	}
}
