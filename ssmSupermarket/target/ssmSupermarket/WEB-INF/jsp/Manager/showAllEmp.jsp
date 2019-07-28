<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/12
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
</head>
<body>
<table border="1" align="center">
    <tr>
        <th>员工编号</th>
        <th>员工姓名</th>
        <th>员工类型</th>
        <th>是否离职</th>
        <th>修改密码</th>
        <th>操作</th>
    </tr>
    <tr>
        <c:if test="${!empty empList}">
        <c:forEach items="${empList}" var="emp" varStatus="st">
    <tr>
        <td align="center">${emp.id}</td>
        <td align="center">${emp.name}</td>
        <td align="center">
            <c:if test= "${emp.type == 1}" >
                经理
            </c:if>
            <c:if test= "${emp.type == 2}" >
                收银员
            </c:if>
            <c:if test= "${emp.type == 3}" >
                业务员
            </c:if>
        </td>
        <td align="center">
            <c:if test= "${emp.isDelete == 0}" >
                否
            </c:if>
            <c:if test= "${emp.isDelete == 1}" >
                是
            </c:if>
        </td>
        <td align="center">
            <form action="/emp/updatePW.do" method="post" >
                <input type="hidden" name="id" value="${emp.id }"/>
                <input type="password" name="password" />
                <input type="submit" value="修改" />
            </form>
        </td>
        <td align="center"><a href = "/emp/edit/${emp.id}.do"><input type="button" value="修改"/></a>
            <a href = "/emp/del/${emp.id}/1.do"><input type="button" value="禁用"/></a>
            <a href = "/emp/del/${emp.id}/0.do"><input type="button" value="启用"/></a>
        </td>
    </tr>
    </c:forEach>
    </c:if>
    </tr>
</table><br/>
<center><a href = "/emp/info.do" align="center"><input type="button" value="返回" /></a></center>

</body>
</html>
