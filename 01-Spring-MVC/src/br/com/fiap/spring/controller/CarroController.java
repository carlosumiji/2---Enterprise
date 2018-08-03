package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Carro;

@Controller
@RequestMapping("carro")
public class CarroController {

	//M�todo que abre a p�gina com o formul�rio
	@GetMapping("cadastro")
	public String abrirHome() {
		return "carro/cadastro"; 
	}
	
	//Metodo que Processa as infoma��o do formul�rio
	@PostMapping("cadastro")
	public ModelAndView processarForm(Carro c){
		System.out.println( c.getPlaca() + " " + c.getPreco() + " " + c.isAutomatico() + " " + c.getMarcas());
		//Enviar valores para a tela
		ModelAndView retorno = 
				new ModelAndView("carro/cadastro");//pasta + pagina jsp
		//Adicionar os valores para a p�gina
		retorno.addObject("msg", "Contato enviado!");
		retorno.addObject("placa", c.getPlaca());
		return retorno;
	}
}
