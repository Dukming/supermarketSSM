<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/13
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>厂商列表</title>
</head>
<body>
<form action="/firm/showFirm.do" method="get" align="center" >
    厂商名称:<input type="text" name="name" value='${param.name}'/>
    <input type="submit" value="查询"  />
</form>
<br/>
<table border="1" align="center">
    <tr>
        <th>厂商编号</th>
        <th>厂商名称</th>
        <th>厂商地址</th>
        <th>厂商电话</th>
        <th>操作</th>
    </tr>
    <tr>
        <c:if test="${!empty firmList}">
        <c:forEach items="${firmList}" var="firm" varStatus="st">
    <tr>
        <td align="center">${firm.id}</td>
        <td align="center">${firm.name}</td>
        <td align="center">${firm.addr}</td>
        <td align="center">${firm.tele}</td>
        <td align="center"><a href = "/firm/edit/${firm.id}.do"><input type="button" value="修改"/></a></td>
    </tr>
    </c:forEach>
    </c:if>
    </tr>
</table><br/>
<center><a href = "/firm/info.do" align="center"><input type="button" value="返回" /></a></center>

</body>
</html>