package com.shiqi.cn.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EatController {

    @GetMapping("/eat/apple")
    public String eatApple(){
        return "I eat apple";
    }

}
