package com.WarningCriminal.springmvc.controller;

import com.WarningCriminal.springmvc.services.IToiPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @Autowired
    IToiPhamService toiPhamService;


    @RequestMapping(value = {"/", "/home"})
    public String TrangChu(Model model) {
        toiPhamService.getAll().forEach(System.out::println);
        model.addAttribute("lstoipham",toiPhamService.getAll());
        return "TrangChu";
    }
    @RequestMapping(value = "/chitiettoipham")
    public String chitiet(Model model,@RequestParam(value = "idtp",required = false) String idtp){

        System.out.println(toiPhamService.getElementById(idtp).getHovaTen());
        model.addAttribute("cttp",toiPhamService.getElementById(idtp));
        return "chitiettoipham";
    }





}

