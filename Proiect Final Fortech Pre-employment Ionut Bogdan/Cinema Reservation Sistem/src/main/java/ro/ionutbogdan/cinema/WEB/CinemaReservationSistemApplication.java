package ro.ionutbogdan.cinema.WEB;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
@EnableAutoConfiguration(exclude = {DataSourceAutoConfiguration.class})
public class CinemaReservationSistemApplication {

    public static void main(String[] args) {

        ConfigurableApplicationContext context = SpringApplication.run(CinemaReservationSistemApplication.class, args);

        context.getBean(CinemaController.class).initializeMovies();
    }
}

