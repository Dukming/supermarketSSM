<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/11
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>收银页面</title>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script>
        var global_goodID = "";
        var global_goodAmount = "";
        var global_isDis = "";
        var global_menberID = "";

        function showGood(goodID_Input, amount_Input, menberID_Input){
            var goodID = goodID_Input;
            var amount = amount_Input;
            var menberID = menberID_Input;
            global_menberID = menberID;
            if (goodID=="")
            {
                return;
            }
            if (amount=="")
            {
                amount = "1";
            }
            if( isNaN(goodID) || isNaN(amount) || isNaN(menberID)){
                alert("error!");
                return;
            }

            $.ajax({
                url: "/cashier/show.do",
                data: {
                    goodID: goodID,
                },
                success: function(data){
                    var id = data.id;
                    var name = data.name;
                    var price = data.price;
                    var isDis = "否";
                    if(data.isAllowDiscount=="1" && data.isMenber==true){
                        price = price * 0.95;
                        isDis = "是";
                    }
                    var sum = price * amount ;
                    var div1 = document.getElementById('tb1');
                    var code = div1.innerHTML;
                    code += "<tr><td>"+id+"</td><td>"+name+"</td><td>"+data.price/100+"</td><td>"+amount+"</td><td>"+isDis+"</td><td>"+sum/100+"</td></tr>";
                    div1.innerHTML = code;

                    global_goodID += id+",";
                    global_goodAmount += amount+",";
                    global_isDis += isDis+",";



                }
                // dataType: dataType
            });
        }


        function toSubmit(){


            $("#form_goodID").val(global_goodID);
            $("#form_goodAmount").val(global_goodAmount);
            $("#form_isDis").val(global_isDis);
            $("#form_menberID").val(global_menberID);

            return true;

        }

    </script>

</head>
<body>
<div id="form-div" align="center">
    <form action="" >
        商品编号：<input id="goodID" type="text" id="goodID" />&nbsp;
        数量：<input id="amount" type="text" id="amount" />&nbsp;
        会员卡号：<input id="menberID" type="text" id="menberID" />&nbsp;
        <p><input id="add" type="button" value="添加" onclick="showGood(document.getElementById('goodID').value, document.getElementById('amount').value, document.getElementById('menberID').value)">&nbsp;<input type="reset" value="重置"></p>&nbsp;
    </form>


</div>
<div id="txtHint" align="center">
    <table id="tableid" border="1" align="center">

        <THEAD>
        <tr>
            <th>商品编号</th>
            <th>商品名称</th>
            <th>商品单价</th>
            <th>数量</th>
            <th>是否打折</th>
            <th>总价</th>
        </tr>
        </THEAD>

        <TBODY id='tb1'></TBODY>

    </table>
</div>
<form action="/cashier/submit.do" align="center" method="post" onsubmit="return toSubmit()">
    <input id="form_goodID" type="hidden" name="goodID" value="" />
    <input id="form_goodAmount" type="hidden" name="goodAmount" value="" />
    <input id="form_isDis" type="hidden" name="isDis" value="" />
    <input id="form_menberID" type="hidden" name="menberID" value="" />
    <input type="submit" value="确认订单" />
</form>
</body>
</html>
