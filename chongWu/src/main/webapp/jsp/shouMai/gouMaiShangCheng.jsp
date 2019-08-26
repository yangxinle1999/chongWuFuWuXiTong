<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
    <link href="../../css/gouMaiShangCheng.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/bootstrap.css"/>
    <script src="${pageContext.request.contextPath}/jQuery/bootstrap.js"></script>
</head>
<body>
<div id="box">
    <c:forEach items="${list.list}" var="ll" >
    <div id="content">
        <div id="content-left">
            <a href="#" onclick="getnum(${ll.id})"><img src="${ll.image}" alt="pp"/></a>
        </div>
        <div id="content-center">
            <a href="#" class="nnn" onclick="getnum(${ll.id})">  ${ll.chongWuLeiBie}</a>
            <%--<a href='javascript:void(0)' onclick=\"cc('" + parameter1 + "','" + parameter2 + "','" + parameter3 + "','" + parameter4 + "')\">我的链接</a>--%>
            <p>${ll.address} | ${ll.chongWuAge}</p>
        </div>
        <div id="content-right">
            <div>
                <p>${ll.price}</p>
                <span>元/1只</span>
            </div>
        </div>
    </div>
    </c:forEach>
    <div align="center">
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <c:if test="${list.pageNum>1}">
                <li>
                    <a href="${pageContext.request.contextPath}/shoumaixinxilist?page=${list.pageNum-1}" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
            </c:if>
            <c:forEach begin="1" end="${list.pages}" var="i">
                <li> <a href="${pageContext.request.contextPath}/shoumaixinxilist?page=${i}">${i}</a></li>
            </c:forEach>
            <c:if test="${list.pageNum<list.pages}">
                <li>
                    <a href="${pageContext.request.contextPath}/shoumaixinxilist?page=${list.pageNum+1}" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </c:if>
        </ul>
    </nav>
    </div>
    <!-- 分页功能 start -->
    <%--<div align="center">--%>
        <%--<font size="2">共 ${list.pages} 页</font> <font size="2">第--%>
        <%--${list.pageNum} 页</font> <a href="${pageContext.request.contextPath}/shoumaixinxilist?page=1">首页</a>--%>
        <%--<c:choose>--%>
            <%--<c:when test="${list.pageNum- 1 > 0}">--%>
                <%--<a href="${pageContext.request.contextPath}/shoumaixinxilist?page=${list.pageNum - 1}">上一页</a>--%>
            <%--</c:when>--%>
            <%--<c:when test="${list.pageNum - 1 <= 0}">--%>
                <%--<a href="${pageContext.request.contextPath}/shoumaixinxilist?page=1">上一页</a>--%>
            <%--</c:when>--%>
        <%--</c:choose>--%>
        <%--<c:choose>--%>
            <%--<c:when test="${list.pages==0}">--%>
                <%--<a href="${pageContext.request.contextPath}/shoumaixinxilist?page=${list.pageNum}">下一页</a>--%>
            <%--</c:when>--%>
            <%--<c:when test="${list.pageNum+ 1 < list.pages}">--%>
                <%--<a href="${pageContext.request.contextPath}/shoumaixinxilist?page=${list.pageNum + 1}">下一页</a>--%>
            <%--</c:when>--%>
            <%--<c:when test="${list.pageNum + 1 >= list.pages}">--%>
                <%--<a href="${pageContext.request.contextPath}/shoumaixinxilist?page=${list.pages}">下一页</a>--%>
            <%--</c:when>--%>
        <%--</c:choose>--%>
        <%--<c:choose>--%>
            <%--<c:when test="${list.pages==0}">--%>
                <%--<a href="${pageContext.request.contextPath}/shoumaixinxilist?page=${list.pageNum}">尾页</a>--%>
            <%--</c:when>--%>
            <%--<c:otherwise>--%>
                <%--<a href="${pageContext.request.contextPath}/shoumaixinxilist?page=${list.pages}">尾页</a>--%>
            <%--</c:otherwise>--%>
        <%--</c:choose>--%>
    <%--</div>--%>
    <!-- 分页功能 End -->
</div>
</body>
</html>
<script type="text/javascript">
    function getnum(i){
        console.log(i);
        // console.log(n.dianjiliang);
        // console.log(j);
        $.ajax({
            url:"${pageContext.request.contextPath}/shoumai?i="+i,
            type:"POST",
            success:function (n) {
                // alert(n);
                <%--$.ajax({--%>
                    <%--url:"${pageContext.request.contextPath}/dianjiliang?dianjiliang="+--%>
                <%--});--%>
                <%--window.location.href="${pageContext.request.contextPath}/jsp/shouMai/gouMaiXiangQing.jsp";--%>
                window.location.href="${pageContext.request.contextPath}/dianjiliang";
            }
     })
    }
    <%--$(function () {--%>
     <%----%>
        <%--$(".nnn",this).click(function () {--%>
            <%--var i=$(this).parents("div").find(".nnn").val();--%>
            <%--console.log(i);--%>
            <%--$.ajax({--%>
                <%--url:"${pageContext.request.contextPath}/shoumai?i="+i,--%>
                <%--type:"POST",--%>
                <%--success:function (n) {--%>
                    <%--alert(n);--%>
                    <%--window.location.href="${pageContext.request.contextPath}/jsp/shouMai/gouMaiXiangQing.jsp";--%>
                <%--}--%>
            <%--})--%>
        <%--})--%>
    <%--})--%>
</script>
