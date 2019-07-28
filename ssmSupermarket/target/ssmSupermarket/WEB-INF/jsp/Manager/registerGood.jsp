<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/14
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商品注册</title>
</head>
<body>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<form action="/good/regist.do" method="post" align="center">
    商品编号:<input type="text" name="id" /><br/>
    商品名称:<input type="text" name="name" /><br/>
    供货商编号:<input type="text" name="firmID" /><br/>
    商品售价:<input type="text" name="price" /><br/>
    当前库存数:<input type="text" name="inventoryAmount" /><br/>
    库存警戒数:<input type="text" name="warnAmount" /><br/>
    计划进货数:<input type="text" name="purchaseAmount" /><br/>
    是否允许打折：<input name="isDiscount" type="radio" value="1" checked="checked"/>允许
    <input name="isDiscount" type="radio" value="0" />不允许
    <br/>
    是否允许销售：<input name="isSell" type="radio" value="1" checked="checked"/>允许
    <input name="isSell" type="radio" value="0" />不允许
    <br/><br/>
    <input type="submit" value="注册" /> <a href = "/good/info.do" align="center"><input type="button" value="返回" /></a>
</form>
</body>
</html>
