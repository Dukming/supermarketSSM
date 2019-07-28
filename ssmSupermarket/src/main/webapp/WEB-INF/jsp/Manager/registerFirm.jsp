<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/13
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册厂商</title>
</head>
<body>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<form action="/firm/regist.do" method="post" align="center">
    厂商名称:<input type="text" name="name" /><br/>
    厂商地址:<input type="text" name="addr" /><br/>
    厂商电话:<input type="text" name="tele" /><br/><br/>
    <input type="submit" value="注册" /> <a href = "/firm/info.do" align="center"><input type="button" value="返回" /></a>
</form>
</body>
</html>
