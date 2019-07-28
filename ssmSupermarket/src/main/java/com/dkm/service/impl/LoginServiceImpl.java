package com.dkm.service.impl;

import com.dkm.dao.EmployeeDao;
import com.dkm.pojo.Employee;
import com.dkm.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public Employee checkIdAndPw(Long id, String password) {
        return employeeDao.checkPW(id, password);
    }
}
