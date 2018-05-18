package ro.ionutbogdan.cinema.dao;

import ro.ionutbogdan.cinema.domain.User;

import java.util.Collection;

public interface UserDAO extends BaseDAO<User> {
    Collection<User> searchByName(String query);
}
