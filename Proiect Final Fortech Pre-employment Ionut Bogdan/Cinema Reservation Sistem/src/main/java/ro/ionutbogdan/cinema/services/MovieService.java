package ro.ionutbogdan.cinema.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ro.ionutbogdan.cinema.dao.MovieDAO;
import ro.ionutbogdan.cinema.domain.Movie;

import javax.xml.bind.ValidationException;
import java.util.*;


public class MovieService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MovieService.class);

    private MovieDAO daoMovie;

    public Collection<Movie> listAll() {
        return daoMovie.getAll();
    }

    public Collection<Movie> search(String query) {
        LOGGER.debug("Searching for " + query);
        return daoMovie.searchByMovieName(query);
    }

    public boolean delete(Long movieID) {
        LOGGER.debug("Deleting movie by name: " + movieID);
        Movie movie1 = daoMovie.findById(movieID);
        if (movie1 != null) {
            daoMovie.delete(movie1);
            return true;
        }

        return false;
    }

    public Movie get(Long movieID) {
        LOGGER.debug("Getting movie by name: " + movieID);
        return daoMovie.findById(movieID);

    }

    public void save(Movie movie) throws ValidationException {
        LOGGER.debug("Saving movie: " + movie);
        //validate(movie);

        daoMovie.update(movie);
    }

//    private void validate(Movie movie) throws ValidationException {
//        Date currentDate = new Date();
//        List<String> errors = new LinkedList<>();
//        if (StringUtils.isEmpty(movie.getMovieName())) {
//            errors.add("Movies Name is Empty");
//        }
//
//        if (StringUtils.isEmpty(movie.getMovieDuration())) {
//            errors.add("Movie Duration is Empty");
//        }
//
//        if (movie.getMovieDate() == null) {
//            errors.add("Movie Date is Empty");
//        } else {
//            if (currentDate.after(movie.getMovieDate())) {
//                errors.add("Movie Date is in the past");
//            }
//        }
//
//        if (!errors.isEmpty()) {
//            throw new ValidationException(String.valueOf(errors.toArray(new String[] {})));
//        }
//    }

    public MovieDAO getDao() {
        return daoMovie;
    }

    public void setDao(MovieDAO dao) {
        this.daoMovie = dao;
    }

}
