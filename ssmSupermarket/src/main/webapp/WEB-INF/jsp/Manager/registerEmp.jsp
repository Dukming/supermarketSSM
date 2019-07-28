<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/12
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册员工账号</title>
</head>
<body>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<form action="/emp/regist.do" method="post" align="center">
    姓	名:<input type="text" name="name" /><br/>
    密	码:<input type="password" name="password"/><br/>
    员工类型：<input name="empType" type="radio" value="1"/>经理
    <input name="empType" type="radio" value="2" checked="checked"/>收银员
    <input name="empType" type="radio" value="3"/>业务员
    <br/><br/>
    <input type="submit" value="注册" /> <a href = "/emp/info.do" align="center"><input type="button" value="返回" /></a>
</form>
</body>
</html>
