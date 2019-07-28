package com.dkm.service.impl;

import com.dkm.dao.EmployeeDao;
import com.dkm.service.DeleteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeleteServiceImpl implements DeleteService {
    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public boolean delEmp(Long id, Integer isDelete) {
        if(employeeDao.updateEmpIsDel(id, isDelete) > 0){
            return true;
        }
        return false;
    }
}
