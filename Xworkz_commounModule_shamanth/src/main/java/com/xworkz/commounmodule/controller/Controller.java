package com.xworkz.commounmodule.controller;


import com.xworkz.commounmodule.dto.UserDTO;
import com.xworkz.commounmodule.entity.UserEntity;
import com.xworkz.commounmodule.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Component
@RequestMapping("/")
public class Controller {

    @Autowired
    UserService userService;

    Controller() {
        System.out.println("Controller Constructor.........");
    }

    @PostMapping("/signupact")
    public String onsignup(UserDTO dto) {
        System.out.println("Sign Up DTO: " + dto);
        boolean save = userService.save(dto);
        if (save) {
            return "success";
        } else {
            return "signup";
        }
    }

    @PostMapping("/signinact")
    public String onlogin(String email, String password, Model model) {
        System.out.println("Sign In with email: " + email);
        UserEntity entity = userService.login(email, password);
        if (entity != null) {
            return "success";
        } else {
            return "signin";
        }
    }

    @PostMapping("/resetPassword")
    public String resetPassword(String email, String oldPassword, String newPassword, String confirmPassword) {
        if (!newPassword.equals(confirmPassword)) {
            return "resetpassword";
        }

        boolean isValid = userService.resetPassword(email, oldPassword, newPassword);
        if (isValid) {
            return "signin";
        } else {
            return "resetpassword";
        }
    }


}