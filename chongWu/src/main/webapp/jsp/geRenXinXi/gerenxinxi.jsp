<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../css/gerenxinxi.css"/>
    <title></title>
</head>
<body>
<div class="main">
    <div class="nav">
        <div class="head"><img src="${sessionScope.get("fff")}"/></div>
        <div class="undernav">
            <ul>
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown">个人信息<i class="icon-arrow"></i></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/user1" target="mainFrame">个人信息查询</a></li>
                        <li><a href="${pageContext.request.contextPath}/jsp/geRenXinXi/user2.jsp" target="mainFrame">个人信息修改</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown">宠物信息<i class="icon-arrow"></i></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/shouYang" target="mainFrame">宠物收养信息</a></li>
                        <li><a href="${pageContext.request.contextPath}/jsp/jiYangShouYang/jiYang.jsp" target="mainFrame">寄养服务</a></li>
                    </ul>
                </li>
                <%--<li class="dropdown">--%>
                    <%--<a href="#" data-toggle="dropdown">宠物服务 <i class="icon-arrow"></i></a>--%>
                    <%--<ul class="dropdown-menu">--%>
                        <%--<li><a href="#">洗浴服务</a></li>--%>
                        <%--<li><a href="#">造型服务</a></li>--%>
                        <%--<li><a href="${pageContext.request.contextPath}/jsp/jiYangShouYang/jiYang.jsp" target="mainFrame">寄养服务</a></li>--%>
                        <%--<li><a href="#">体验服务</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown">订单处理<i class="icon-arrow"></i></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/selectM" target="mainFrame">我的订单管理</a></li>
                    </ul>
                </li>
                <%--<li class="dropdown">--%>
                    <%--<a href="#" data-toggle="dropdown">产品信息<i class="icon-arrow"></i></a>--%>
                    <%--<ul class="dropdown-menu">--%>
                        <%--<li><a href="#">洗浴服务产品</a></li>--%>
                        <%--<li><a href="#">造型服务产品</a></li>--%>
                        <%--<li><a href="#">寄养服务产品</a></li>--%>
                        <%--<li><a href="#">体验服务产品</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown">文件管理<i class="icon-arrow"></i></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/jsp/wenJianGuanLi/shangChuan.jsp" target="mainFrame">上传文件</a></li>
                        <li><a href="${pageContext.request.contextPath}/jsp/wenJianGuanLi/danGeXiaZai.jsp" target="mainFrame">单下载文件</a></li>
                        <li><a href="${pageContext.request.contextPath}/duoXiaZai" target="mainFrame">多下载文件</a> </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="content" style="float: left;">
    <iframe id="mainFrame" class="middle_right1" name="mainFrame" style="border: 0px;" src="${pageContext.request.contextPath}/jsp/geRenXinXi/diErGeShouYe.jsp" scrolling="no">//首页
    </iframe>
</div>
    <script>
        // Dropdown Menu
        var dropdown = document.querySelectorAll('.dropdown');
        var dropdownArray = Array.prototype.slice.call(dropdown,0);
        dropdownArray.forEach(function(el){
            var button = el.querySelector('a[data-toggle="dropdown"]'),
                menu = el.querySelector('.dropdown-menu'),
                arrow = button.querySelector('i.icon-arrow');

            button.onclick = function(event) {
                if(!menu.hasClass('show')) {
                    menu.classList.add('show');
                    menu.classList.remove('hide');
                    arrow.classList.add('open');
                    arrow.classList.remove('close');
                    event.preventDefault();
                }
                else {
                    menu.classList.remove('show');
                    menu.classList.add('hide');
                    arrow.classList.remove('open');
                    arrow.classList.add('close');
                    event.preventDefault();
                }
            };
        })

        Element.prototype.hasClass = function(className) {
            return this.className && new RegExp("(^|\\s)" + className + "(\\s|$)").test(this.className);
        };
    </script>
</div>

</body>
</html>
