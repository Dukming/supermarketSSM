package com.dkm.controller;

import com.dkm.pojo.SelectSaleOrStockParams;
import com.dkm.pojo.Stock;
import com.dkm.service.ShowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/stock")
public class ManageStockController {

    @Autowired
    private ShowService showService;

    @RequestMapping(value = "/select", method = RequestMethod.GET)
    public String select(){return "Manager/selectStock";}

    @RequestMapping(value = "/show", method = RequestMethod.GET)
    public ModelAndView show(SelectSaleOrStockParams params) {
        ModelAndView mv = new ModelAndView();
        List<Stock> stocks = showService.showAllStock(params);
        int sum = 0;
        for (Stock temp : stocks) {
            sum += (temp.getPrice() * temp.getAmount());

        }
        mv.addObject("stockList", stocks);
        mv.addObject("sum",sum);
        mv.setViewName("Manager/showStock");
        return mv;
    }
}
