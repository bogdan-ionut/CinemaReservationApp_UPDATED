package ro.ionutbogdan.Spring_SQL_JSP.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ro.ionutbogdan.Spring_SQL_JSP.models.Movie;

public interface MovieRepository extends JpaRepository<Movie,Integer> {
}
