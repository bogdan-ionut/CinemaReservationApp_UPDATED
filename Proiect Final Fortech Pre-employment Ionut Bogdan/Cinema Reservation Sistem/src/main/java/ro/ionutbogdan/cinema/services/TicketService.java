package ro.ionutbogdan.cinema.services;

import ro.ionutbogdan.cinema.dao.TicketDAO;

public class TicketService {
    private TicketDAO daoTicket;


    public void setDao(TicketDAO dao) {
        this.daoTicket = dao;
    }
}
