package com.shiqi.cn.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EatController {

    @GetMapping("/eat/apple")
    public String eatApple(){
        return "I eat 6 apple !!!";
    }

    @GetMapping("/eat/banana")
    public String eat(){
        return "I eat 6 banana !!!";
    }

    @GetMapping("/eat/orange")
    public String eatOrange(){
        return "I eat 6 eatOrange !!!";
    }
    @GetMapping("/eat/grape")
    public String eatGrape(){
        return "I eat 6 eat grape !!!";
    }

}
