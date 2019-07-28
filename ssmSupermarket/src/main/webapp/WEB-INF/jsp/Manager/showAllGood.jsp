<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/14
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商品列表</title>
</head>
<body>
<form action="/good/showGood.do" method="get" align="center" >
    商品名称:<input type="text" name="name" value='${param.name}'/> <br/>
    厂商名称:<input type="text" name="firmName" value='${param.firmName}'/> <br/>
    是否缺货：<input name="isWarn" type="radio" value="1" <c:if test= "${param.isWarn == 1}" >checked</c:if>/>是
    <input name="isWarn" type="radio" value="0" <c:if test= "${param.isWarn == 0}" >checked</c:if>/>否<br/>
    是否打折：<input name="isDiscount" type="radio" value="1" <c:if test= "${param.isDiscount == 1}" >checked</c:if>/>是
    <input name="isDiscount" type="radio" value="0" <c:if test= "${param.isDiscount == 0}" >checked</c:if>/>否<br/>
    是否销售：<input name="isSell" type="radio" value="1" <c:if test= "${param.isSell == 1}" >checked</c:if>/>是
    <input name="isSell" type="radio" value="0" <c:if test= "${param.isSell == 0}" >checked</c:if>/>否	<br/>
    按库存量排序：<input name="isOrder" type="radio" value="1" <c:if test= "${param.isOrder == 1}" >checked</c:if>/>是
    <input name="isOrder" type="radio" value="0" <c:if test= "${param.isOrder == 0}" >checked</c:if>/>否	<br/>
    <input type="submit" value="查询"  />
</form>
<br/>
<table border="1" align="center">
    <tr>
        <th>商品编号</th>
        <th>商品名称</th>
        <th>供货商编号</th>
        <th>供货商名称</th>
        <th>当前售价</th>
        <th>库存数量</th>
        <th>警戒数量</th>
        <th>计划进货数量</th>
        <th>是否缺货</th>
        <th>是否允许打折</th>
        <th>是否允许销售</th>
        <th>操作</th>
    </tr>
    <tr>
        <c:if test="${!empty goodList}">
        <c:forEach items="${goodList}" var="good" varStatus="st">
    <tr  <c:if test= "${good.isWarn == 1}"> bgcolor="#FF0000" </c:if> >
        <td align="center">${good.id}</td>
        <td align="center">${good.name}</td>
        <td align="center">${good.firm.id}</td>
        <td align="center">${good.firm.name}</td>
        <td align="center">${good.price/100}</td>
        <td align="center">${good.inventoryAmount}</td>
        <td align="center">${good.warnAmount}</td>
        <td align="center">${good.purchaseAmount}</td>
        <td align="center">
            <c:if test= "${good.isWarn == 1}" >
                是
            </c:if>
            <c:if test= "${good.isWarn == 0}" >
                否
            </c:if>
        </td>
        <td align="center">
            <c:if test= "${good.isAllowDiscount == 1}" >
                允许
            </c:if>
            <c:if test= "${good.isAllowDiscount == 0}" >
                不允许
            </c:if>
        </td>
        <td align="center">
            <c:if test= "${good.isSell == 1}" >
                允许
            </c:if>
            <c:if test= "${good.isSell == 0}" >
                不允许
            </c:if>
        </td>
        <td align="center"><a href = "/good/edit/${good.id}.do"><input type="button" value="修改"/></a></td>
    </tr>
    </c:forEach>
    </c:if>
    </tr>
</table><br/>
<center><a href = "/good/info.do" align="center"><input type="button" value="返回" /></a></center>

</body>
</html>
