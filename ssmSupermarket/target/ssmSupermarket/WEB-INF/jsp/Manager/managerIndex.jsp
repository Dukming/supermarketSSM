<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/11
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        function toManageEmp(){
            window.location="/emp/info.do";
        }
        function toManageFirm(){
            window.location="/firm/info.do";
        }
        function toManageGood(){
            window.location="/good/info.do";
        }
        function toSelectSale(){
            window.location="/sale/select.do";
        }
        function toSelectStock(){
            window.location="/stock/select.do";
        }
    </script>
    <title>经理后台管理</title>
</head>
<body>
<div align="center">
    <br/><br/><br/><br/><br/><br/><br/><br/>
    <input type="button" value="管理员工信息" onClick="toManageEmp()" /><br/>
    <input type="button" value="管理厂商信息" onClick="toManageFirm()" /><br/>
    <input type="button" value="管理商品信息" onClick="toManageGood()" /><br/>
    <input type="button" value="查看销售情况" onClick="toSelectSale()" /><br/>
    <input type="button" value="查看进货情况" onClick="toSelectStock()" /><br/>
</div>
</body>
</html>
