package com.dkm.pojo;

public class Employee {
    private Long id ;			//员工编号
    private String name;		//员工名称
    private String password;	//员工密码
    private Integer type;		//员工类型(1:经理,2:收银员,3:业务员)
    private Integer isDelete;	//是否删除(1:已删除,0:未删除)

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }
}
