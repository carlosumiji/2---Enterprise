package br.com.fiap.spring.dao.impl;

import org.springframework.stereotype.Repository;

import br.com.fiap.spring.dao.EmpresaDAO;
import br.com.fiap.spring.model.Empresa;

@Repository
public class EmpresaDAOImpl extends GenericDAOImpl<Empresa, Integer> implements EmpresaDAO{

}
