<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/11
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <script type="text/javascript">
        function toPrintList(){
            window.location="/purchaser/printList.do";
        }
        function toPurchaseGood(){
            window.location="/purchaser/purchaserGood.do";
        }
    </script>

    <title>进货管理页面</title>

</head>
<body>
<div align="center">
    <br/><br/><br/><br/><br/><br/><br/><br/>
    <input type="button" value="打印建议进货清单" onClick="toPrintList()" /><br/>
    <input type="button" value=" 商    品    进     货 " onClick="toPurchaseGood()" /><br/>
</div>
</body>
</html>
