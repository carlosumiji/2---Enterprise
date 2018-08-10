package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Plano;

@Controller
@RequestMapping("plano")
public class PlanoController {

	@GetMapping("cadastrar")
	public String abrirForm() {
		return "academia/plano";
	}
	
	@PostMapping("cadastrar")
	private ModelAndView processarForm(Plano plano) {
		ModelAndView retorno = new ModelAndView("academia/plano");
		retorno.addObject("msg", "Plano registrado");
		retorno.addObject("p", plano);
		//retorno.addObject("p", plano.getPlano());
		//retorno.addObject("p", plano.getValor());
		//retorno.addObject("p", plano.getDescricao());
		return retorno;
	}
}
