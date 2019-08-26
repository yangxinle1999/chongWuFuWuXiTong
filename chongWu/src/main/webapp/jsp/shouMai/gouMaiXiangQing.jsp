<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js">
    </script>
    <%--// console.log(GetRequest().goods_id);  输出5--%>
    <link href="../../css/gouMaiXiangQing.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="box">
    <div id="box-left">
        <img src="${sessionScope.get("hhh").image}" alt="pp" />
    </div>
    <div id="box-right">
        <p>${sessionScope.get("hhh").chongWuLeiBie}</p>
        <div id="price">
            <p>${sessionScope.get("hhh").price}</p>
            <span>元/1只</span>
            <a id="through">浏览次数:${az}</a>
        </div>
        <ul id="age">
            <li>
                <a>年龄</a>
                <a>${sessionScope.get("hhh").chongWuAge}</a>
            </li>
            <li>
                <a>品种</a>
                <a>${sessionScope.get("hhh").chongWuLeiBie}</a>
            </li>
        </ul>
        <div id="people">
            <a>联系人:${sessionScope.get("hhh").name}</a>
            <a>联系方式:${sessionScope.get("hhh").tel}</a>
            <a>地  址:${sessionScope.get("hhh").address}</a>
        </div>
        <input id="buy" type="button" value="购买" onclick="buy()">
    </div>
</div>
</body>
</html>
<script>
    function buy() {
        $.ajax({
            url:"${pageContext.request.contextPath}/selectBuy",
            type:"POST",
            success:function (result) {
                if (result['code']===200){
                    alert("交易成功，余额为"+result['data']+"元！");
                    $.ajax({
                        url:"${pageContext.request.contextPath}/updateBuy",
                        type:"POST",
                        success:function (res) {
                            if (res==1){
                                alert("交易成功！")
                            }
                            else {
                                alert("交易失败！")
                            }
                        }
                    })
                }else {
                    alert("您的余额不足，还有"+result['data']+"元！");
                }
            }
        })
    }
</script>
