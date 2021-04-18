package com.WarningCriminal.springmvc.controller;

import com.WarningCriminal.springmvc.pojo.Account;
import com.WarningCriminal.springmvc.pojo.CongAn;
import com.WarningCriminal.springmvc.services.IAccountService;
import com.WarningCriminal.springmvc.services.ICongAnService;
import com.WarningCriminal.springmvc.services.IToiPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

@Controller
public class HomeController {

    @Autowired
    IToiPhamService toiPhamService;
    @Autowired
    UserDetailsService userDetailsService;
    @Autowired
    IAccountService accountService;
    @Autowired
    ICongAnService congAnService;

    @RequestMapping(value = {"/", "/home"})
    public String TrangChu(Model model, HttpSession session, HttpServletRequest request) {
        Account ac = null;
        CongAn ca = null;
        try {
            ac = accountService.getAccountByUserName(request.getUserPrincipal().getName());

        }catch (Exception e){
            e.printStackTrace();;
        }
        model.addAttribute("lstoipham",toiPhamService.getAll());
        model.addAttribute("account",ac);
        return "TrangChu";
    }
    @RequestMapping(value = "/chitiettoipham")
    public String chitiet(Model model,@RequestParam(value = "idtp",required = false) String idtp){


        model.addAttribute("cttp",toiPhamService.getElementById(idtp));
        return "chitiettoipham";
    }





}

