package ro.ionutbogdan.cinema.services;

import ro.ionutbogdan.cinema.dao.StudioDAO;

public class StudioService {
    private StudioDAO daoStudio;


    public void setDao(StudioDAO dao) {
        this.daoStudio = dao;
    }
}
