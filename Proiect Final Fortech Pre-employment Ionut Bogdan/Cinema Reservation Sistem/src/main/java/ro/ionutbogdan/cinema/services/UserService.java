package ro.ionutbogdan.cinema.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ro.ionutbogdan.cinema.domain.User;
import ro.ionutbogdan.cinema.dao.UserDAO;

import java.util.Collection;

public class UserService {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserService.class);

    public UserDAO getDao() {
        return dao;
    }

    public void setDao(UserDAO dao) {
        this.dao = dao;
    }

    private UserDAO dao;

    public Collection<User> listAll() {
        return dao.getAll();
    }


}
