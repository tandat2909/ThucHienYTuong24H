package com.WarningCriminal.springmvc.controller;

import com.WarningCriminal.springmvc.modelView.TinTinhBao;
import com.WarningCriminal.springmvc.pojo.*;
import com.WarningCriminal.springmvc.services.IAccountService;
import com.WarningCriminal.springmvc.services.ICongAnService;
import com.WarningCriminal.springmvc.services.IToiPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
    public String TrangChu(Model model, HttpSession session, HttpServletRequest request,@RequestParam(value = "idtp",required = false) String idtp) {
        Account ac = null;
        CongAn ca = null;
        Toipham tttp = null;
        Nguoidan nd = null;
        TinTinhBao tintinhbao = new TinTinhBao();

        if(idtp != null){
            tttp = toiPhamService.getElementById(idtp);
        }
        try {
            ac = accountService.getAccountByUserName(request.getUserPrincipal().getName());
            ca = ac.getCongAns().get(0);
        }catch (Exception e){
            try{
                nd = ac.getNguoidans().get(0);
            }
            catch (Exception x){}
        }

        model.addAttribute("lstoipham",toiPhamService.getAll());
        model.addAttribute("account",ac);
        model.addAttribute("congan",ca);
        model.addAttribute("tintinhbao",tintinhbao);
        model.addAttribute("nguoidan",nd);
        model.addAttribute("tttp",tttp);
        return "TrangChu";
    }
    @RequestMapping(value = "/chitiettoipham")
    public String chitiet(Model model,@RequestParam(value = "idtp",required = false) String idtp){


        model.addAttribute("cttp",toiPhamService.getElementById(idtp));
        return "chitiettoipham";
    }
    @PostMapping(value = "/baotin")
    public String baotin(Model model, @ModelAttribute("tintinhbao")Tintinhbao tintinhbao) {

        return "redirect:/";
    }





}

