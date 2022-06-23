package com.shiqi.cn.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EatController {

    @GetMapping("/eat/apple")
    public String eatApple(){
        return "I eat an apple !!!";
    }

    @GetMapping("/eat/banana")
    public String eat(){
        return "I eat an banana !!!";
    }

    @GetMapping("/eat/orange")
    public String eatOrange(){
        return "I eat an eatOrange !!!";
    }

}
