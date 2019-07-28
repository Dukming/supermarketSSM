package com.dkm.service;

import com.dkm.pojo.Employee;
import com.dkm.pojo.Good;
import com.dkm.pojo.RegisterGoodParams;

import java.util.List;

public interface UpdateService {
    public boolean updateEmpPW(Long id, String password);
    public boolean updateEmp(Long id, String name, Integer type);
    public boolean updateFirm(Long id, String name, String addr, String tele);
    public boolean updateGood(RegisterGoodParams params);
    public boolean updateGoodinvenAndSale(List<Good> showGoodList, List<Integer> showAmountList, List<Integer> showIsDisList, Employee emp);
    public boolean updateGoodinvenAndStock(List<Good> goodList, List<Integer> amountList, List<Integer> priceList, Employee emp);
}
