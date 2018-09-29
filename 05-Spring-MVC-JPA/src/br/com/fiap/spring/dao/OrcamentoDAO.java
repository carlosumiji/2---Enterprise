package br.com.fiap.spring.dao;

import java.util.List;
import br.com.fiap.spring.model.Orcamento;

public interface OrcamentoDAO extends GenericDAO<Orcamento, Integer>{

	List<Orcamento> buscarPorDescricao(String desc);

	void aprovar(int codigo);
}
