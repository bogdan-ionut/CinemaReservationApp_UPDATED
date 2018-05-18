package ro.ionutbogdan.cinema.WEB;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import ro.ionutbogdan.cinema.dao.*;
import ro.ionutbogdan.cinema.dao.inMemory.*;
import ro.ionutbogdan.cinema.services.*;

@Configuration
public class ApplicationConfiguration {

    // User config___________________________________

    @Bean
    public UserService userService() {
        UserService ems = new UserService();

        ems.setDao(userDAO());
        return ems;
    }

    @Bean
    public UserDAO userDAO() {
        return new IMUserDAO();
    }

    // Movie config___________________________________

    @Bean
    public MovieService movieService() {
        MovieService ems = new MovieService();

        ems.setDao(movieDAO());
        return ems;
    }

    @Bean
    public MovieDAO movieDAO() {
        return new IMMovieDAO();
    }

    // Admin config___________________________________

    @Bean
    public AdminService adminService() {
        AdminService ems = new AdminService();

        ems.setDao(adminDAO());
        return ems;
    }

    @Bean
    public AdminDAO adminDAO() {
        return new IMAdminDAO();
    }

    // Seat config___________________________________

    @Bean
    public SeatService seatService() {
        SeatService ems = new SeatService();

        ems.setDao(seatDAO());
        return ems;
    }

    @Bean
    public SeatDAO seatDAO() {
        return new IMSeatDAO();
    }

    // Studio config___________________________________

    @Bean
    public StudioService studioService() {
        StudioService ems = new StudioService();

        ems.setDao(studioDAO());
        return ems;
    }

    @Bean
    public StudioDAO studioDAO() {
        return new IMStudioDAO();
    }

    // Ticket config___________________________________

    @Bean
    public TicketService ticketService() {
        TicketService ems = new TicketService();

        ems.setDao(ticketDAO());
        return ems;
    }

    @Bean
    public TicketDAO ticketDAO() {
        return new IMTicketDAO();
    }
}
