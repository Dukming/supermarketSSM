<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/15
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>查询进货记录</title>
</head>
<body>
<body>
<form action="/stock/show.do" method="get" align="center" >
    商品名称:<input type="text" name="goodName" value='${param.name}'/> <br/>
    员工姓名:<input type="text" name="empName" value='${param.firmName}'/> <br/>
    截止时间：<input type="date" name="minTime" /> —— <input type="date" name="maxTime" /><br/></br>
    <input type="submit" value="查询"  />
</form></br>
<center><a href = "/login/managerIndex.do" align="center"><input type="button" value="返回" /></a></center>
</body>
</body>
</html>
