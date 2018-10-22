package br.com.fiap.spring.dao.impl;

import org.springframework.stereotype.Repository;

import br.com.fiap.spring.dao.VagaDAO;
import br.com.fiap.spring.model.Vaga;

@Repository
public class VagaDAOImpl 
			extends GenericDAOImpl<Vaga, Integer> implements VagaDAO{


}
