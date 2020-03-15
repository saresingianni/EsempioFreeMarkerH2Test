package com.FreeMarker2.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.servlet.ModelAndView;

import com.FreeMarker2.demo.model.Employee;
import com.FreeMarker2.demo.model.QuintoPiano;
import com.FreeMarker2.demo.repository.EmployeeRepository;
import com.FreeMarker2.demo.repository.QuintoPianoRepository;


@Controller
public class EmployeeController {
    @Autowired
    private EmployeeRepository employeeRepository;
    @Autowired
    private QuintoPianoRepository quintoPianoRepository;
   
    
    @GetMapping("/")
    public String index(Model model) {

        return "index";
    }

    @GetMapping("/showEmployees")
    public ModelAndView showCities() {

        List < Employee > employees = employeeRepository.findAll();

        Map < String, Object > params = new HashMap < String, Object > ();
        params.put("employees", employees);

        return new ModelAndView("showEmployees", params);
    }
    @GetMapping("/showUtenti")
    public ModelAndView showUtenti() {

        List < QuintoPiano > quintopianoU = quintoPianoRepository.findAll();

        Map < String, Object > params = new HashMap < String, Object > ();
        params.put("quintopianoU", quintopianoU);

        return new ModelAndView("showUtenti", params);
    }
    
   
  
    
}