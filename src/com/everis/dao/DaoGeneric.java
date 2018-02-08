package com.everis.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.everis.jpautil.JPAUtil;

public class DaoGeneric<E> {

	public Boolean salvar(E entidade) {

		EntityManager entityManager = JPAUtil.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();

		entityManager.merge(entidade);
		entityTransaction.commit();
		entityManager.close();

		return true;
	}

	public boolean removePorId(E entidade, int id) {
		EntityManager entityManager = JPAUtil.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();

		Query HQL = entityManager.createQuery("delete from " + entidade.getClass().getCanonicalName() + " where id_demanda = ?");
		HQL.setParameter(1, id);
		HQL.executeUpdate();
		entityTransaction.commit();
		entityManager.close();
		return true;
	}

	public List<E> buscarUsuarios(Class<E> entidade) {

		EntityManager entityManager = JPAUtil.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();

		@SuppressWarnings("unchecked")
		List<E> listaUsuarios = entityManager.createQuery("from " + entidade.getName()).getResultList();

		entityTransaction.commit();
		entityManager.close();

		return listaUsuarios;
	}

	public List<E> buscarRms(Class<E> entidade, String usuario) {

		EntityManager entityManager = JPAUtil.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();

		Query HQL = entityManager.createQuery("from " + entidade.getName() + " where dono = ?");
		HQL.setParameter(1, usuario);

		@SuppressWarnings("unchecked")
		List<E> listaUsuarios = HQL.getResultList();
		entityTransaction.commit();
		entityManager.close();

		return listaUsuarios;
	}
}
