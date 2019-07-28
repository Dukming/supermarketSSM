package com.dkm.service;

import com.dkm.pojo.Employee;

public interface LoginService {
    public Employee checkIdAndPw(Long id, String password);
}
