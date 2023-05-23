package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Genero;
import application.model.GeneroRepository;


@Controller
@RequestMapping("/genero")
public class GeneroController {

    @Autowired
    private GeneroRepository generoRepo;

    @RequestMapping("/list")
    public String list(Model model) {
        model.addAttribute("generos", generoRepo.findAll());
        return "listGenero";
    }

    @RequestMapping("/insert")
    public String insert() {
        return "insertGenero";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("nome") String nome) {
        Genero genero  = new Genero();
        genero.setNome(nome);

        generoRepo.save(genero);
        return "redirect:/genero/list";
    }
    
    @RequestMapping("/update")
    public String update(Model model,@RequestParam int id){
        Optional<Genero> genero = generoRepo.findById(id);

        if(!genero.isPresent()){
            return "redirect:/genero/list";
        }

        model.addAttribute("genero", genero.get());
        return "updateGenero";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(Model model,@RequestParam("nome") String nome, @RequestParam("id") int id){
        
        Optional<Genero> genero = generoRepo.findById(id);
        if(!genero.isPresent()){
            return "redirect:/genero/list";
        }
        genero.get().setNome(nome);
        generoRepo.save(genero.get());
        return "redirect:/genero/list";
    }

    @RequestMapping("/delete")
    public String delete(Model model, @RequestParam("id") int id) {
        Optional<Genero> genero = generoRepo.findById(id);

        if(!genero.isPresent()) {
            return "redirect:/genero/list";
        }

        model.addAttribute("genero", genero.get());
        return "deleteGenero";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") int id) {
        generoRepo.deleteById(id);
        return "redirect:/genero/list";
    }

}