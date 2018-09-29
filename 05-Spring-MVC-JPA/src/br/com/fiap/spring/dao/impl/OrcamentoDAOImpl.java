package br.com.fiap.spring.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.fiap.spring.dao.OrcamentoDAO;
import br.com.fiap.spring.model.Orcamento;

@Repository
public class OrcamentoDAOImpl 
			extends GenericDAOImpl<Orcamento, Integer> implements OrcamentoDAO{

	@Override
	public List<Orcamento> buscarPorDescricao(String desc) {
		return em.createQuery("from Orcamento where upper(descricao) "
				+ "like upper(:descricao)",Orcamento.class)
				.setParameter("descricao", "%"+desc+"%")
				.getResultList();
	}

	@Override
	public void aprovar(int codigo) {
		Orcamento orcamento = read(codigo);
		orcamento.setAprovado(true);
		update(orcamento);
	}

}
