/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.avatar.pokemon.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.avatar.pokemon.model.PokemonData;
import com.avatar.pokemon.model.PokemonRest;
import com.avatar.pokemon.util.*;

/**
 *
 * @author YANAC-AD
 */
@Controller
@RequestMapping("/")
public class indexController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "/index";
    }
    @RequestMapping( value ="/listarpokemones", method = RequestMethod.POST)
    @ResponseBody
  
    public String listarpokemones() {
       

    	String uri="https://pokeapi.co/api/v2/pokemon-species";
    	
    	String data= UtilREST.getREST(uri);
    	
        
    	return listarpokemoness(data);
    } 
    
    public String listarpokemoness(String data) {
    
    	return data;
    }
	    	 

    @RequestMapping(value = "/detallepokemon/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView detallepokemon(@PathVariable("id") String id) {
       
      String uri="https://pokeapi.co/api/v2/pokemon/"+id;
		System.out.println("stringggg mmm :"+uri);
    	String data= UtilREST.getREST(uri);
    	String viewName = "detalle";
        ModelAndView mav = new ModelAndView(viewName);
        mav.addObject("idpokemon",  id);
        return mav;
    }  
        
    
}
