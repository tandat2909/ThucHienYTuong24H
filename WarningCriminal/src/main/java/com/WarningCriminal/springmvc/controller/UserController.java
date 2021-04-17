package com.WarningCriminal.springmvc.controller;

import com.WarningCriminal.springmvc.modelView.InforAccount;
import com.WarningCriminal.springmvc.services.IAccountService;
import com.WarningCriminal.springmvc.services.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UserController {

    @Autowired
    IAccountService accountService;
    @Autowired
    InforAccount inforAccount;

    @Autowired
    IRoleService roleService;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @GetMapping(value = "/login")
    public String loginCustomer(Model model) {
        return "template_login";
    }


    @GetMapping(value = "/SignUp")
    public String registerProcess(Model model ,RedirectAttributes attr) {

        model.addAttribute("user", inforAccount);
        return "template_signup";
    }

    @PostMapping(value = "/SignUp")
    public String registerProcessPOST(Model model, @ModelAttribute(name = "user") InforAccount user,
                                      BindingResult result, RedirectAttributes attr) {

        try {
            if (accountService.createAccount(user.getAccount(), user.getCustomer())) {
                attr.addFlashAttribute("success","Chúc mừng bạn tạo tài khoản thành công");
            }
        } catch (Exception exception) {
            attr.addFlashAttribute("error", exception.getMessage());
            attr.addFlashAttribute("users",user);
            exception.printStackTrace();
            return "redirect:/SignUp";
        }
        return "redirect:/login";

    }
}
