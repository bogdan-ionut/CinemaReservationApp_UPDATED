package ro.ionutbogdan.cinema.dao;

import ro.ionutbogdan.cinema.domain.Movie;

import java.util.Collection;

public interface MovieDAO extends BaseDAO<Movie> {

    Collection<Movie> searchByMovieName(String query);
}
