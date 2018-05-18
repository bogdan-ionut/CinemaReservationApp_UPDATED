package ro.ionutbogdan.cinema.domain;

import java.util.Date;


public class Movie extends AbstractModel {

    public String movieName;
    public MovieType movieType;
    public MovieGenreType movieGenreType;
    public String movieDuration;
    public Date movieDate;



    public MovieType getMovieType() {
        return movieType;
    }

    public void setMovieType(MovieType movieType) {
        this.movieType = movieType;
    }

    public MovieGenreType getMovieGenreType() {
        return movieGenreType;
    }

    public void setMovieGenreType(MovieGenreType movieGenreType) {
        this.movieGenreType = movieGenreType;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieDuration() {
        return movieDuration;
    }

    public void setMovieDuration(String movieDuration) {
        this.movieDuration = movieDuration;
    }

    public Date getMovieDate() {
        return movieDate;
    }

    public void setMovieDate(Date movieDate) {
        this.movieDate = movieDate;
    }

    @Override
    public String toString() {
        return "Movie [movieName=" + movieName + ", movieType=" + movieType + ", movieGenreType="
                + movieGenreType + ", movieDuration=" + movieDuration + ", movieDate=" + movieDate + "]";
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((movieName == null) ? 0 : movieName.hashCode());
        result = prime * result + ((movieType == null) ? 0 : movieType.hashCode());
        result = prime * result + ((movieGenreType == null) ? 0 : movieGenreType.hashCode());
        result = prime * result + ((movieDuration == null) ? 0 : movieDuration.hashCode());
        result = prime * result + ((movieDate == null) ? 0 : movieDate.hashCode());

        return result;
    }


    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Movie other = (Movie) obj;
        if (movieName == null) {
            if (other.movieName != null)
                return false;
        } else if (!movieName.equals(other.movieName))
            return false;
        if (movieType == null) {
            if (other.movieType != null)
                return false;
        } else if (!movieType.equals(other.movieType))
            return false;
        if (movieGenreType == null) {
            if (other.movieGenreType != null)
                return false;
        } else if (!movieGenreType.equals(other.movieGenreType))
            return false;
        if (movieDuration != other.movieDuration)
            return false;
        if (movieDuration == null) {
            if (other.movieDuration != null)
                return false;
        } else if (!movieDuration.equals(other.movieDuration))
            return false;
        if (movieDate == null) {
            if (other.movieDate != null)
                return false;
        } else if (!movieDate.equals(other.movieDate))
            return false;
        return true;
    }



}
