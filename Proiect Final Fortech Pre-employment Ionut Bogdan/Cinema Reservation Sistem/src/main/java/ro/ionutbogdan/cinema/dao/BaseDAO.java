package ro.ionutbogdan.cinema.dao;

import ro.ionutbogdan.cinema.domain.AbstractModel;

import java.util.Collection;


public interface BaseDAO<T extends AbstractModel> {

	Collection<T> getAll();

	T update(T model);

	boolean delete(T model);

	T findById(Long id);
}
