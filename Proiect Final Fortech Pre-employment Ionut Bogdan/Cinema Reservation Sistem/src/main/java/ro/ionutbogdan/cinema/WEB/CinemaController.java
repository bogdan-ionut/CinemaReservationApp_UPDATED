package ro.ionutbogdan.cinema.WEB;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import ro.ionutbogdan.cinema.domain.MovieGenreType;
import ro.ionutbogdan.cinema.domain.MovieType;
import ro.ionutbogdan.cinema.services.MovieService;
import ro.ionutbogdan.cinema.domain.Movie;

import javax.xml.bind.ValidationException;
import java.util.Collection;
import java.util.Date;

@Controller
@RequestMapping("/")
public class CinemaController {

    private int index = 0;

    @RequestMapping("")
    public ModelAndView cinema() {
        return new ModelAndView("cinema");
    }

    @RequestMapping("/Home")
    public String Home() {
        return "/";
    }

    @RequestMapping("/seatSelector")
    public String seatSelector() {
        return "seatSelector";
    }

    @RequestMapping("/ticketTypeSelector")
    public String ticketTypeSelector() {
        return "ticketTypeSelector";
    }

    /*
    @RequestMapping("/addMovie")
    public String addMovie() {
        return "addMovie";
    }
    */

    //-------TRY-------ADD-----------FUNCTIONALITY------------------------

    @RequestMapping("/addMovie")
    public ModelAndView addMovie() {
        ModelAndView modelAndView = new ModelAndView("addMovie");
        modelAndView.addObject("movie", new Movie());
        return modelAndView;
    }

    @Autowired
    public MovieService movieService;

    @RequestMapping("/moviesList")
    public ModelAndView moviesList() throws ValidationException {
        ModelAndView result = new ModelAndView("moviesList");


        Collection<Movie> moviesList = movieService.listAll();
        result.addObject("movies", moviesList);

        return result;
    }


    //---------------------------------------------------

    @RequestMapping("/adminPage")
    public String adminPage() {
        return "adminPage";
    }

    @RequestMapping("/editMovie")
    public String editMovie() {
        return "editMovie";
    }

    @RequestMapping("/delete")
    public String delete(long id) {
        movieService.delete(id);
        return "redirect:/moviesList";
    }

    @RequestMapping("/printTicket")
    public String printTicket() {
        return "printTicket";
    }

    @RequestMapping("/ticketConfirmation")
    public String ticketConfirmation() {
        return "ticketConfirmation";
    }

    @RequestMapping("/news")
    public String news() {
        return "news";
    }


    @RequestMapping(method = RequestMethod.POST, value = "/save")
    public ModelAndView save(Movie movie) throws ValidationException { //am schimbat model and view cu string

        movieService.save(movie);

        RedirectView redirectView = new RedirectView("/moviesList");
        ModelAndView result = new ModelAndView();
        result.setView(redirectView);
        return result;
        //return "redirect:/";
    }

    public void initializeMovies() {

        try {
            Movie movie1 = new Movie();
            movie1.setMovieName("Black Panther");
            movie1.setMovieDuration("134");
            movie1.setMovieDate(new Date("01/29/2018"));
            movie1.setMovieType(MovieType.THREE_D);
            movie1.setMovieGenreType(MovieGenreType.SCI_FI);
            movieService.save(movie1);

            Movie movie2 = new Movie();
            movie2.setMovieName("Jumanji: Welcome to the Jungle");
            movie2.setMovieDuration("119");
            movie2.setMovieDate(new Date("12/29/2017"));
            movie2.setMovieType(MovieType.THREE_D);
            movie2.setMovieGenreType(MovieGenreType.COMEDY);
            movieService.save(movie2);

            Movie movie3 = new Movie();
            movie3.setMovieName("Thor: Ragnarok");
            movie3.setMovieDuration("130");
            movie3.setMovieDate(new Date("10/10/2017"));
            movie3.setMovieType(MovieType.THREE_D);
            movie3.setMovieGenreType(MovieGenreType.FICTION);
            movieService.save(movie3);

            Movie movie4 = new Movie();
            movie4.setMovieName("King Arthur: Legend of the Sword");
            movie4.setMovieDuration("126");
            movie4.setMovieDate(new Date("19/04/2017"));
            movie4.setMovieType(MovieType.TWO_D);
            movie4.setMovieGenreType(MovieGenreType.FICTION);
            movieService.save(movie4);

            Movie movie5 = new Movie();
            movie5.setMovieName("Fantastic Beasts and Where to Find Them");
            movie5.setMovieDuration("133");
            movie5.setMovieDate(new Date("18/11/2016"));
            movie5.setMovieType(MovieType.THREE_D);
            movie5.setMovieGenreType(MovieGenreType.FICTION);
            movieService.save(movie5);

            Movie movie6 = new Movie();
            movie6.setMovieName("Logan Lucky");
            movie6.setMovieDuration("119");
            movie6.setMovieDate(new Date("09/09/2017"));
            movie6.setMovieType(MovieType.TWO_D);
            movie6.setMovieGenreType(MovieGenreType.ACTION);
            movieService.save(movie6);


        } catch (ValidationException e) {
            e.printStackTrace();
        }
    }
}
