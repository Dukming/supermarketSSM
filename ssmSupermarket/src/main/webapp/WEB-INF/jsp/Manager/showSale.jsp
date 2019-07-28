<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/15
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>销售记录</title>
</head>
<body>
<table id="table" border="1" align="center">
    <tr>
        <th>销售编号</th>
        <th>商品编号</th>
        <th>商品名称</th>
        <th>收银员编号</th>
        <th>收银员姓名</th>
        <th>销售数量</th>
        <th>销售单价</th>
        <th>是否打折</th>
        <th>销售日期</th>
    </tr>
    <tr>
        <c:if test="${!empty saleList}">
        <c:forEach items="${saleList}" var="sale" varStatus="st">
    <tr>
        <td align="center">${sale.id}</td>
        <td align="center">${sale.good.id}</td>
        <td align="center">${sale.good.name}</td>
        <td align="center">${sale.emp.id}</td>
        <td align="center">${sale.emp.name}</td>
        <td align="center">${sale.amount}</td>
        <td align="center">${sale.unitPrice/100}</td>
        <td align="center">
            <c:if test= "${sale.isDiscount == 0}" >
                否
            </c:if>
            <c:if test= "${sale.isDiscount == 1}" >
                是
            </c:if>
        </td>
        <td align="center">${sale.date}</td>
    </tr>
    </c:forEach>
    </c:if>
    </tr>
    <tr >
        <td colspan="9">合计：${sum/100} 元</td>
    </tr>
</table><br/>
<center><a href = "/sale/select.do" align="center"><input type="button" value="返回" /></a></center>

</body>
</html>
