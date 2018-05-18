package ro.ionutbogdan.cinema.services;

import ro.ionutbogdan.cinema.dao.AdminDAO;

public class AdminService {
    private AdminDAO daoAdmin;


    public void setDao(AdminDAO dao) {
        this.daoAdmin = dao;
    }
}
