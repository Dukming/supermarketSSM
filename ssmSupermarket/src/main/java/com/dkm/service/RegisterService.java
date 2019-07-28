package com.dkm.service;

import com.dkm.pojo.RegisterGoodParams;

public interface RegisterService {
    public boolean registerEmp (String name, String pw, Integer type);

    public boolean registerFirm(String name, String addr, String tele);

    public boolean registerGood(RegisterGoodParams params);
}
