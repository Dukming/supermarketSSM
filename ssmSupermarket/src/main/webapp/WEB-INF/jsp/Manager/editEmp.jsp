<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/13
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<form action="/emp/updateEmp.do" method="post" align="center">
    <input type="hidden" name="id" value="${emp.id }"/>
    员工编号:<input type="text" name="id" value="${emp.id }" disabled/><br/>
    员工姓名:<input type="text" name="name" value="${emp.name }"/><br/>
    员工类型:<label><input name="type" type="radio" value="1" <c:if test= "${emp.type == 1}"> checked </c:if> />经理 </label>
    <label><input name="type" type="radio" value="2" <c:if test= "${emp.type == 2}"> checked </c:if> />收银员 </label>
    <label><input name="type" type="radio" value="3" <c:if test= "${emp.type == 3}"> checked </c:if> />业务员 </label> <br/>
    <br/>
    <input type="submit" value="确定修改" /> <a href = "/emp/show.do" align="center"><input type="button" value="返回" /></a>
</form>
</body>
</html>