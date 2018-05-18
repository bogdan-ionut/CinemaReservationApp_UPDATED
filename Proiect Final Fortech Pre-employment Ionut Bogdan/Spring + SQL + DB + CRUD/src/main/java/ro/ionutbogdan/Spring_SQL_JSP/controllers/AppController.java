package ro.ionutbogdan.Spring_SQL_JSP.controllers;

import ro.ionutbogdan.Spring_SQL_JSP.models.Movie;
import ro.ionutbogdan.Spring_SQL_JSP.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AppController {

    @Autowired
    MovieRepository appRepo;

    @RequestMapping("/")
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("lists",appRepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/save", method = RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("id") String id,
                               @RequestParam("title") String title,
                               @RequestParam("genre") String genre,
                               @RequestParam("type") String type,
                               @RequestParam("duration") int duration)

    {

        ModelAndView mv = new ModelAndView("redirect:/");
        Movie movies;
        if(!id.isEmpty()){
            movies =(Movie) appRepo.findOne(Integer.parseInt(id));
        } else {
            movies = new Movie();
        }
        movies.setTitle(title);
        movies.setGenre(genre);
        movies.setType(type);
        movies.setDuration(duration);
        appRepo.save(movies);
        return mv;
    }

    @RequestMapping( value = "/view/{id}", method = RequestMethod.GET)
    public ModelAndView doView(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("view");
        mv.addObject("lists",appRepo.findOne(id));
        return mv;
    }

    @RequestMapping( value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/");
        appRepo.delete(id);
        return mv;
    }

    @RequestMapping( value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("edit");
        mv.addObject("lists",appRepo.findOne(id));
        return mv;
    }

}
