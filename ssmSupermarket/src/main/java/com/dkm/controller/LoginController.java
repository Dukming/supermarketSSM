package com.dkm.controller;

import com.dkm.exception.BanException;
import com.dkm.exception.LoginException;
import com.dkm.pojo.Employee;
import com.dkm.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/login")
@SessionAttributes(names = {"emp"})
public class LoginController {
    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/check", method = RequestMethod.POST)
    public ModelAndView check(@RequestParam("id") Long id, @RequestParam("password") String password){
        ModelAndView mv = new ModelAndView();
        Employee emp = loginService.checkIdAndPw(id,password);
        if(emp==null){
            throw new LoginException();
        }else if(emp.getIsDelete()==1){
            throw new BanException();
        }else{
            mv.addObject("emp", emp);
            switch(emp.getType()){
                case 1:
                    mv.setViewName("Manager/managerIndex");
                   return mv;
                case 2:
                    mv.setViewName("Cashier/cashierIndex");
                   return mv;
                case 3:
                    mv.setViewName("Purchaser/purchaserIndex");
                    return mv;

            }
        }

        return mv;
    }

    @RequestMapping(value = "/managerIndex", method = RequestMethod.GET)
    public ModelAndView managerIndex(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Manager/managerIndex");
        return mv;
    }

    @ExceptionHandler(LoginException.class)
    public String HandleLoginException(LoginException e){
        return "redirect:/";
    }

    @ExceptionHandler(BanException.class)
    public String HandleBanException(BanException e){
        return "Exception/BanException";
    }

}
