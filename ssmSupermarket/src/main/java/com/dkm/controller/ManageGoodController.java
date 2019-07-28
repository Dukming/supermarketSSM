package com.dkm.controller;

import com.dkm.pojo.Good;
import com.dkm.pojo.RegisterGoodParams;
import com.dkm.pojo.SelectGoodParams;
import com.dkm.service.RegisterService;
import com.dkm.service.ShowService;
import com.dkm.service.UpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/good")
public class ManageGoodController {

    @Autowired
    private ShowService showService;

    @Autowired
    private RegisterService registerService;

    @Autowired
    private UpdateService updateService;

    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String info(){
        return "Manager/manageGood";
    }


    @RequestMapping(value = "/show", method = RequestMethod.GET)
    public ModelAndView show(){
        ModelAndView mv = new ModelAndView();
        List<Good> goods = showService.showAllGood();
        mv.addObject("goodList", goods);
        mv.setViewName("Manager/showAllGood");
        return mv;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(){return "Manager/registerGood";}


    @ResponseBody
    @RequestMapping(value = "/regist",method = RequestMethod.POST )
    public String regist(@ModelAttribute RegisterGoodParams params){
        if(registerService.registerGood(params)){
            return "<script>alert('Register success!!');history.go(-1);</script>";
        }else{
            return "<script>alert('Register failed!!');history.go(-1);</script>";
        }
    }

    @RequestMapping(value = "/edit/{id}",method = RequestMethod.GET )
    public ModelAndView edit(@PathVariable("id") Long id){
        ModelAndView mv = new ModelAndView();
        Good good = showService.showGoodById(id);
        mv.addObject("good",good);
        mv.setViewName("Manager/editGood");
        return mv;
    }


    @ResponseBody
    @RequestMapping(value = "/updateGood",method = RequestMethod.POST )
    public String updateGood(RegisterGoodParams params){
        if(updateService.updateGood(params)){
            return "<script>alert('Update success!!');window.location.href='/good/show.do';</script>";
        }else{
            return "<script>alert('Update failed!!');window.location.href='/good/show.do';</script>";
        }
    }


    @RequestMapping(value = "/showGood",method = RequestMethod.GET )
    public ModelAndView showGood(SelectGoodParams params){
        ModelAndView mv = new ModelAndView();
        List<Good> goods = showService.showGoodByMultItem(params);
        mv.addObject("goodList", goods);
        mv.setViewName("Manager/showAllGood");
        return mv;
    }

}
