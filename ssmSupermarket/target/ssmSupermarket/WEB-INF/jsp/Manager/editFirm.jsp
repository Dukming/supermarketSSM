<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/13
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<form action="/firm/updateFirm.do" method="post" align="center">
    <input type="hidden" name="id" value="${firm.id }"/>
    厂商编号:<input type="text" name="id" value="${firm.id }" disabled/><br/>
    厂商名称:<input type="text" name="name" value="${firm.name }"/><br/>
    厂商地址:<input type="text" name="addr" value="${firm.addr }"/><br/>
    厂商电话:<input type="text" name="tele" value="${firm.tele }"/><br/>
    <input type="submit" value="确定修改" /> <a href = "/firm/show.do" align="center"><input type="button" value="返回" /></a>
</form>
</body>
</html>
