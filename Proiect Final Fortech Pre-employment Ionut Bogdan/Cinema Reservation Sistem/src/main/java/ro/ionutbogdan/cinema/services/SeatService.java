package ro.ionutbogdan.cinema.services;

import ro.ionutbogdan.cinema.dao.SeatDAO;

public class SeatService {
    private SeatDAO daoSeat;


    public void setDao(SeatDAO dao) {
        this.daoSeat = dao;
    }
}
