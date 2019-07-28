package com.dkm.controller;


import com.dkm.exception.UpdateException;
import com.dkm.pojo.*;
import com.dkm.service.ShowService;
import com.dkm.service.UpdateService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import java.util.List;

@Controller
@RequestMapping("cashier")
public class CashierController {

    @Autowired
    private ShowService showService;

    @Autowired
    private UpdateService updateService;

    @ResponseBody
    @RequestMapping(value = "/show", method = RequestMethod.GET)
    public SaleInfoJson show(@RequestParam("goodID") Long goodID){
        long start = System.currentTimeMillis();
        SaleInfoJson saleInfoJson = showService.showTheGood(goodID);
        long end = System.currentTimeMillis();
        System.out.println(end-start);
        return saleInfoJson;
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(){
        return "Cashier/cashierIndex";
    }

    @ResponseBody
    @RequestMapping(value = "/submit", method = RequestMethod.POST)
    public ModelAndView submit(@ModelAttribute SaleInfoList saleInfoList, @SessionAttribute("emp") Employee emp, Model model){
        ModelAndView mv = new ModelAndView();
        List<Good> goods = showService.showGoodList(saleInfoList.getGoodID());
        List<Integer> amounts = showService.showAmountList(saleInfoList.getGoodAmount());
        List<Integer> isDiss = showService.showIsDisList(saleInfoList.getIsDis());
        int sum = showService.countSum(goods, amounts, isDiss);
        updateService.updateGoodinvenAndSale(goods, amounts, isDiss, emp);
        mv.addObject("goodList", goods);
        mv.addObject("amountList", amounts);
        mv.addObject("isDisList", isDiss);
        mv.addObject("sum", sum);
        mv.setViewName("/Cashier/showSum");
        return mv;
    }


    @ExceptionHandler(UpdateException.class)
    public String HandleUpdateException(UpdateException e){
        return "Exception/UpdateException";
    }
}
