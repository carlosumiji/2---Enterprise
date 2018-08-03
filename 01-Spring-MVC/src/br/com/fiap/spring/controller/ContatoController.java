package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("contato")
public class ContatoController {

		//Método que abre a página com o formulário
		@GetMapping("enviar")
		public String abrirHome() {
			return "contato/form"; 
		}
		
		//Metodo que Processa as infomação do formulário
		@PostMapping("enviar")
		public ModelAndView processarForm(String nome, String telefone, String email){
			System.out.println(nome + " " + telefone + " " + email);
			//Enviar valores para a tela
			ModelAndView retorno = 
					new ModelAndView("contato/form");//pasta + pagina jsp
			//Adicionar os valores para a página
			retorno.addObject("msg", "Contato enviado!");
			retorno.addObject("nome", nome);
			return retorno;
		}
}
