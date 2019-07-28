<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/14
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改商品信息</title>
</head>
<body>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<form action="/good/updateGood.do" method="post" align="center">

    商品编号:<input type="text" name="id" value="${good.id }" readonly/><br/>
    商品名称:<input type="text" name="name" value="${good.name }"/><br/>
    厂商编号:<input type="text" name="firmID" value="${good.firm.id }"/><br/>
    商品售价:<input type="text" name="price" value="${good.price/100}"/><br/>
    当前库存数:<input type="text" name="inventoryAmount" value="${good.inventoryAmount }"/><br/>
    库存警戒数:<input type="text" name="warnAmount" value="${good.warnAmount }"/><br/>
    计划进货数:<input type="text" name="purchaseAmount" value="${good.purchaseAmount }"/><br/>
    是否允许打折：<input name="isDiscount" type="radio" value="1" <c:if test= "${good.isAllowDiscount == 1}"> checked </c:if>/>允许
    <input name="isDiscount" type="radio" value="0" <c:if test= "${good.isAllowDiscount == 0}"> checked </c:if>/>不允许
    <br/>
    是否允许销售：<input name="isSell" type="radio" value="1" <c:if test= "${good.isSell == 1}"> checked </c:if>/>允许
    <input name="isSell" type="radio" value="0" <c:if test= "${good.isSell == 0}"> checked </c:if>/>不允许
    <br/><br/>
    <input type="submit" value="确定修改" /> <a href = "/good/show.do" align="center"><input type="button" value="返回" /></a>
</form>
</body>
</html>
