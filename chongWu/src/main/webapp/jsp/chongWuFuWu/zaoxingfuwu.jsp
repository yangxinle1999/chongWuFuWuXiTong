<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="../../css/zaoxing.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
</head>
<body>
<form id="zaoxing">
    <p id="header">造型服务</p>
    <table id="fuwu">
        <tr>
            <td style="font-size: 18px;">普通服务:</td>
            <td>
                <select id="aa">
                    <option value="50">基础修剪(50)</option>
                    <option value="70">贵宾小圆嘴剪法(70)</option>
                    <option value="75">比熊剪法(75)</option>
                    <option value="90">博美小熊剪法(90)</option>
                    <option value="110">马尔济斯 染色&剪法(110)</option>
                    <option value="150">马尔济斯 辫子&喇叭裤剪法(150)</option>
                    <option value="150">约克夏半月剪法(150)</option>
                    <option value="120">西施犬靴形剪法(120)</option>
                </select>
            </td>
        </tr>
        <tr style="margin-top: 211px;">
            <td style="font-size: 18px;">VIP服务:</td>
            <td>
                <select id="ss">
                    <option value="95">马尔济斯 染色&剪法(95)</option>
                    <option value="130">马尔济斯 辫子&喇叭裤剪法(130)</option>
                    <option value="130">约克夏半月剪法(130)</option>
                    <option value="100">西施犬靴形剪法(100)</option>
                </select>
            </td>
        </tr>
        <tr id="tijiao">
            <td colspan="2"><input type="button" value="提交"  onclick="getValue()"/></td>
        </tr>
    </table>
</form>
</body>
</html>
<script type="text/javascript">
    function getValue() {
        var str1= $("#aa option:selected").val(); //获得选中的value值,即价钱
        var str2= $("#ss option:selected").val(); //获得选中的value值
        var s1= $("#aa option:selected").text(); //获得选中的text值，即服务类型
        var s2= $("#ss option:selected").text(); //获得选中的text值
        if (str1==null){
            $.ajax({
                type:"post",
                dataType:"json",
                url:"${pageContext.request.contextPath}/money",
                data:{'select':str2},
                success:function (msg) {
                    if(msg['code']===200) {
                        alert("交易成功，余额为" + msg['data'] + "元");
                        var jin={"jiaoyijine":str2,"yue":msg['data'], "fuwuleixing":s2 };//将信息封装成json类型，传递给后台
                        $.ajax({
                            type:"post",
                            data:JSON.stringify(jin),
                            contentType:"application/json",
                            url:"${pageContext.request.contextPath}/updateMoney",
                            success:function (zz) {
                                if (zz==1){
                                    alert("交易成功!");
                                    window.location.reload();
                                }
                                else {
                                    alert("交易失败!");
                                    window.location.reload();
                                }
                            }
                        });
                    }else {
                        alert("您的余额已不够，还有"+msg['data']+"元");
                        window.location.reload();
                    }
                }
            })
        }
        else {
            $.ajax({
                type:"post",
                dataType:"json",
                url:"${pageContext.request.contextPath}/money",
                data:{'select':str1},
                success:function (msg) {
                    if(msg['code']===200) {
                        alert("交易成功，余额为" + msg['data'] + "元");
                        var jin={"jiaoyijine":str1,"yue":msg['data'], "fuwuleixing":s1 };//将信息封装成json类型，传递给后台
                        $.ajax({
                            type:"post",
                            data:JSON.stringify(jin),
                            contentType:"application/json",
                            url:"${pageContext.request.contextPath}/updateMoney",
                            success:function (zz) {
                                if (zz==1){
                                    alert("交易成功!");
                                    window.location.reload();
                                }
                                else {
                                    alert("交易失败!");
                                    window.location.reload();
                                }
                            }
                        });
                    }else {
                        alert("您的余额已不够，还有"+msg['data']+"元");
                        window.location.reload();
                    }
                }
            })
        }
    }
</script>
