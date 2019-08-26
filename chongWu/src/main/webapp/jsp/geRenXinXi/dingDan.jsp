<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>宠物网</title>
    <style type="text/css">
        .content{
            margin-top: 50px;
            position:relative;
            height:1000px;
            width: 1500px;
            background-color: #fff8e1;
        }
        .tab
        {
            width:100%;
            border-collapse:collapse;
        }
        .tab td, .tab th
        {
            font-size:1em;
            border:1px solid #98bf21;
            padding:3px 7px 2px 7px;
        }
        .tab th
        {
            font-size:1.1em;
            text-align:left;
            padding-top:5px;
            padding-bottom:4px;
            background-color:#A7C942;
            color:#ffffff;
        }
        .tab tr.alt td
        {
            color:#000000;
            background-color:#EAF2D3;
        }
        .cap{
            font-family: 黑体;
            font-size: 30px;
            margin-top: 20px;
            margin-bottom:20px;
        }
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
</head>
<body>
<div class="content">
    <table class="tab" >
        <caption class="cap">我的订单管理</caption>
        <tr>
            <th>订单编号</th>
            <th>服务类型</th>
            <th>所买宠物</th>
            <th>付款金额</th>
            <th>账号余额</th>
            <th>下单时间</th>
        </tr>
        <c:forEach var="list" items="${mmm}">
        <tr>
            <td>${list.id}</td>
            <td>${list.fuwuleixing}</td>
            <td>${list.suogouchongwu}</td>
            <td>${list.jiaoyijine}</td>
            <td>${list.yue}</td>
            <td>${list.time}</td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

