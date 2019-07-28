<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/3/16
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>进货页面</title>

    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script>
        var global_goodID = "";
        var global_goodAmount = "";
        var global_goodPrice = "";


        function showGood(goodID_Input, amount_Input, price_Input){
            if (goodID_Input=="" || amount_Input=="" || price_Input=="")
            {
                return;
            }
            if( isNaN(goodID_Input) || isNaN(amount_Input) || isNaN(price_Input)){
                alert("error!");
                return;
            }
            var goodID = goodID_Input;
            var amount = parseInt(amount_Input);
            var price_float = parseFloat(price_Input);
            var price = parseInt(price_float*100);

            $.ajax({
                url: "/purchaser/show.do",
                data: {
                    goodID: goodID
                },
                success: function(data){

                    var id = data.id;
                    var name = data.name;
                    var sum = price * amount ;
                    var div1 = document.getElementById('tb1');
                    var code = div1.innerHTML;
                    code += "<tr><td>"+id+"</td><td>"+name+"</td><td>"+price/100+"</td><td>"+amount+"</td><td>"+sum/100+"</td></tr>";
                    div1.innerHTML = code;

                    global_goodID += id+",";
                    global_goodAmount += amount+",";
                    global_goodPrice += price+",";



                },
                // dataType: dataType
            });
        }


        function toSubmit(){


            $("#form_goodID").val(global_goodID);
            $("#form_goodAmount").val(global_goodAmount);
            $("#form_GoodPrice").val(global_goodPrice);


            return true;

        }

    </script>


</head>
<body>
<div id="form-div" align="center">
    <form action="" >
        商品编号：<input id="goodID" type="text" id="goodID" />&nbsp;
        数量：<input id="amount" type="text" id="amount" />&nbsp;
        进货价：<input id="price" type="text" id="price" />&nbsp;
        <p><input id="add" type="button" value="添加" onclick="showGood(document.getElementById('goodID').value, document.getElementById('amount').value, document.getElementById('price').value)">&nbsp;<input type="reset" value="重置"></p>&nbsp;
    </form>


</div>
<div id="txtHint" align="center">
    <table id="tableid" border="1" align="center">

        <THEAD>
        <tr>
            <th>商品编号</th>
            <th>商品名称</th>
            <th>商品进货价</th>
            <th>数量</th>
            <th>总价</th>
        </tr>
        </THEAD>

        <TBODY id='tb1'></TBODY>

    </table>
</div>
<form action="/purchaser/submit.do" align="center" method="post" onsubmit="return toSubmit()">
    <input id="form_goodID" type="hidden" name="goodID" value="" />
    <input id="form_goodAmount" type="hidden" name="goodAmount" value="" />
    <input id="form_GoodPrice" type="hidden" name="GoodPrice" value="" />
    <input type="submit" value="确认清单并打印" />
</form>
</br>
<center><a href = "/purchaser/index.do" align="center"><input type="button" value="返回" /></a></center>
</body>
</html>
