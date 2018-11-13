package com.everis.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.everis.jpautil.JPAUtil;
import com.everis.model.Rms;

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

	public boolean removePorId(E entidade, String id) {
		EntityManager entityManager = JPAUtil.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();

		Query HQL = entityManager
				.createQuery("delete from " + entidade.getClass().getCanonicalName() + " where id_demanda = ?");
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

	public List<E> buscarRmsPorStatus(Class<E> entidade, String usuario, String status) {

		EntityManager entityManager = JPAUtil.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		if (status == null || status.isEmpty()) {
			status = "Todos";
		}
		
		if (status.equals("Todos")) {
			Query HQL = entityManager.createQuery("from " + entidade.getName() + " where dono = ?");
			HQL.setParameter(1, usuario);
			@SuppressWarnings("unchecked")
			List<E> listaUsuarios = HQL.getResultList();
			entityTransaction.commit();
			entityManager.close();
			return listaUsuarios;
		} else {
			Query HQL = entityManager.createQuery("from " + entidade.getName() + " where dono = ? and demanda = ?");
			HQL.setParameter(1, usuario);
			HQL.setParameter(2, status);
			@SuppressWarnings("unchecked")
			List<E> listaUsuarios = HQL.getResultList();
			entityTransaction.commit();
			entityManager.close();
			return listaUsuarios;
		}

	}

	public List<E> buscarRmsPorId(Class<E> entidade, String id) {

		EntityManager entityManager = JPAUtil.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();

		Query HQL = entityManager.createQuery("from " + entidade.getName() + " where id_demanda = ?");
		HQL.setParameter(1, id);
		@SuppressWarnings("unchecked")
		List<E> listaUsuarios = HQL.getResultList();
		entityTransaction.commit();
		entityManager.close();

		return listaUsuarios;
	}

	public Rms buscarRmsObjectPorId(Class<E> entidade, String id) {

		EntityManager entityManager = JPAUtil.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();

		Query HQL = entityManager.createQuery("from " + entidade.getName() + " where id_demanda = ?");
		HQL.setParameter(1, id);
		Rms rms = (Rms) HQL.getSingleResult();
		entityTransaction.commit();
		entityManager.close();

		return rms;
	}

	public boolean verificarSeRmsJaEstaCadastrada(Class<E> entidade, String id) {

		EntityManager entityManager = JPAUtil.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();

		Query HQL = entityManager.createQuery("from " + entidade.getName() + " where id_demanda = ?");
		HQL.setParameter(1, id);
		try {
			HQL.getSingleResult();
		} catch (Exception e) {
			return false;
		}

		entityTransaction.commit();
		entityManager.close();

		return true;
	}
}
