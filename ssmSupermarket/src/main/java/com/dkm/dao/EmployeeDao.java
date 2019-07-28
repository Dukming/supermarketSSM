package com.dkm.dao;

import com.dkm.pojo.Employee;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeDao {
    public int insertEmp(Employee employee);
    public int updateEmp(Employee employee);
    public int updateEmpIsDel(@Param("id") Long id, @Param("isDelete") Integer isDelete);
    public int updateEmpPW(Employee employee);
    public Employee getEmp(Long id);
    public Employee checkPW(@Param("id") Long id, @Param("password") String password);
    public List<Employee> selectAllEmp();
 }
