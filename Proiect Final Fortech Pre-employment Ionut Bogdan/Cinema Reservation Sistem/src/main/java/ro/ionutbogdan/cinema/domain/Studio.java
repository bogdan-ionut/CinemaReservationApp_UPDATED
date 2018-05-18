package ro.ionutbogdan.cinema.domain;

import java.util.Date;
import java.util.List;

public class Studio extends AbstractModel{
    String studioName;
    List<Date> showTimes;
    List<Seat> seats;
    int rows;
    int columns;

}
