package com.WarningCriminal.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {


    @RequestMapping(value = {"/", "/home"})
    public String TrangChu(Model model) {
        return "TrangChu";
    }





}

