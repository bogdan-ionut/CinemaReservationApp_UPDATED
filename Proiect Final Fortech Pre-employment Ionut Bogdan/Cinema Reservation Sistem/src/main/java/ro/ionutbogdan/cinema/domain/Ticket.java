package ro.ionutbogdan.cinema.domain;

import java.util.Date;

public class Ticket extends AbstractModel{
    Date ticketDate;
    String studioId;
    String seatId;
    float ticketPrice;
    enum ticketType {students, kids, adults, seniors}
    public Movie movie;


}
