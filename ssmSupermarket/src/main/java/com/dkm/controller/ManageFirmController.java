package com.dkm.controller;

import com.dkm.pojo.Firm;
import com.dkm.service.RegisterService;
import com.dkm.service.ShowService;
import com.dkm.service.UpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/firm")
public class ManageFirmController {

    @Autowired
    private ShowService showService;

    @Autowired
    private RegisterService registerService;

    @Autowired
    private UpdateService updateService;

    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String info(){return "Manager/manageFirm";}

    @RequestMapping(value = "/show", method = RequestMethod.GET)
    public ModelAndView show(){
        ModelAndView mv = new ModelAndView();
        List<Firm> firms = showService.showAllFirm();
        mv.addObject("firmList", firms);
        mv.setViewName("Manager/showAllFirm");
        return mv;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(){return "Manager/registerFirm";}


    @ResponseBody
    @RequestMapping(value = "/regist",method = RequestMethod.POST )
    public String regist(@RequestParam("name") String name, @RequestParam("addr") String addr, @RequestParam("tele") String tele){
        if(registerService.registerFirm(name, addr, tele)){
            return "<script>alert('Register success!!');history.go(-1);</script>";
        }else{
            return "<script>alert('Register failed!!');history.go(-1);</script>";
        }
    }

    @RequestMapping(value = "/edit/{id}",method = RequestMethod.GET )
    public ModelAndView edit(@PathVariable("id") Long id){
        ModelAndView mv = new ModelAndView();
        Firm firm = showService.showFirmById(id);
        mv.addObject("firm",firm);
        mv.setViewName("Manager/editFirm");
        return mv;
    }

    @RequestMapping(value = "/showFirm",method = RequestMethod.GET )
    public ModelAndView showFirm(@RequestParam("name") String name){
        ModelAndView mv = new ModelAndView();
        List<Firm> firms = showService.showFirmByName(name);
        mv.addObject("firmList", firms);
        mv.setViewName("Manager/showAllFirm");
        return mv;
    }


    @ResponseBody
    @RequestMapping(value = "/updateFirm",method = RequestMethod.POST )
    public String updateFirm(@RequestParam("id") Long id, @RequestParam("name") String name, @RequestParam("addr") String addr, @RequestParam("tele") String tele){
        if(updateService.updateFirm(id, name, addr, tele)){
            return "<script>alert('Update success!!');window.location.href='/firm/show.do';</script>";
        }else{
            return "<script>alert('Update failed!!');window.location.href='/firm/show.do';</script>";
        }
    }

}
