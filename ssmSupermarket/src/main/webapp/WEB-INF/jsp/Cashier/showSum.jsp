<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/15
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>结算</title>
</head>
<body>
<table border="1" align="center">
    <tr>
        <th>商品编号</th>
        <th>商品名称</th>
        <th>商品单价</th>
        <th>数量</th>
        <th>是否打折</th>
    </tr>
    <tr>
        <c:if test="${!empty goodList}">
        <c:forEach items="${goodList}" var="good" varStatus="loop">
    <tr>
        <td align="center">${good.id}</td>
        <td align="center">${good.name}</td>
        <td align="center">${good.price/100}</td>
        <td align="center">${amountList[loop.count-1]}</td>
        <td align="center">
            <c:if test= "${isDisList[loop.count-1] == 1}" >
                是
            </c:if>
            <c:if test= "${isDisList[loop.count-1] == 0}" >
                否
            </c:if>
        </td>
    </tr>

    </c:forEach>
    <tr >
        <td colspan="5">合计：${sum/100} 元</td>
    </tr>
    </c:if>
    </tr>
</table><br/>
<center><a href = "/cashier/index.do" align="center"><input type="button" value="返回" /></a></center>

</body>
</html>
