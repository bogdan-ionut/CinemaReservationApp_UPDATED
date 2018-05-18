//package ro.sci.teamLIV.WEB;
//
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//import Movie;
//import MovieService;
//
//import java.util.Collection;
//
//@Controller
//@RequestMapping("/adminPage")
//public class AdminController {
//
//    @RequestMapping("")
//    public ModelAndView adminPage() {
//        return new ModelAndView("adminPage");
//    }
//
//
//
//    // _____________________ ADAUGARE FILME _________________________
//
////    @Autowired
////    private MovieService movieService;
//
//
//
////    @RequestMapping("")
////    public ModelAndView list() {
////        ModelAndView result = new ModelAndView("movie/list");
////
////
////        Collection<Movie> movies = movieService.listAll();
////        result.addObject("movies", movies);
////
////        return result;
////    }
//
////    @RequestMapping("/addMovie")
////    public ModelAndView add() {
////        ModelAndView modelAndView = new ModelAndView("employee/add");
////        modelAndView.addObject("movie", new Movie());
////        return modelAndView;
////    }
//
//
//
//
//    // ___________________________ END _________________________________
//
//
//}
//
//
