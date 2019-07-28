<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/13
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        function toRegisterFirm(){
            window.location="/firm/register.do";
        }
    </script>
    <title>管理厂商信息</title>
</head>
<body>
<div align="center">
    <br/><br/><br/><br/><br/><br/><br/><br/>
    <input type="button" value="注册厂商" onClick="toRegisterFirm()" /><br/>
    <a	href="/firm/show.do">
        <input type="button" value="厂商列表"  />
    </a>
</div><br/>
<center><a href = "/login/managerIndex.do" align="center"><input type="button" value="返回" /></a></center>
</body>
</html>
