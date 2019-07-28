<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/15
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>进货记录</title>
</head>
<body>
<table border="1" align="center">
    <tr>
        <th>进货编号</th>
        <th>商品编号</th>
        <th>商品名称</th>
        <th>业务员编号</th>
        <th>业务员姓名</th>
        <th>进货数量</th>
        <th>进货单价</th>
        <th>总价</th>
        <th>进货日期</th>
    </tr>
    <tr>
        <c:if test="${!empty stockList}">
        <c:forEach items="${stockList}" var="stock" varStatus="st">
    <tr>
        <td align="center">${stock.id}</td>
        <td align="center">${stock.good.id}</td>
        <td align="center">${stock.good.name}</td>
        <td align="center">${stock.emp.id}</td>
        <td align="center">${stock.emp.name}</td>
        <td align="center">${stock.amount}</td>
        <td align="center">${stock.price/100}</td>
        <td align="center">${stock.price/100 * stock.amount}</td>
        <td align="center">${stock.date}</td>
    </tr>
    </c:forEach>
    </c:if>
    </tr>
    <tr >
        <td colspan="9">合计：${sum/100} 元</td>
    </tr>
</table><br/>
<center><a href = "/stock/select.do" align="center"><input type="button" value="返回" /></a></center>


</body>
</html>
