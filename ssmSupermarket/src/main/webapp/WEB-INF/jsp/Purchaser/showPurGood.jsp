<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/16
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>建议进货清单</title>
</head>
<body>
<table border="1" align="center">
    <tr>
        <th>商品编号</th>
        <th>商品名称</th>
        <th>供货商编号</th>
        <th>供货商名称</th>
        <th>当前售价</th>
        <th>建议进货数量</th>
        <th>是否缺货</th>
    </tr>
    <tr>
        <c:if test="${!empty goodList}">
        <c:forEach items="${goodList}" var="good" varStatus="st">
    <tr>
        <td align="center">${good.id}</td>
        <td align="center">${good.name}</td>
        <td align="center">${good.firm.id}</td>
        <td align="center">${good.firm.name}</td>
        <td align="center">${good.price/100}</td>
        <td align="center">${good.purchaseAmount - good.inventoryAmount}</td>
        <td align="center">
            <c:if test= "${good.isWarn == 1}" >
                是
            </c:if>
            <c:if test= "${good.isWarn == 0}" >
                否
            </c:if>
        </td>
    </tr>
    </c:forEach>
    </c:if>
    </tr>
</table><br/>
<center><a href = "/purchaser/index.do" align="center"><input type="button" value="返回" /></a></center>

</body>
</html>
