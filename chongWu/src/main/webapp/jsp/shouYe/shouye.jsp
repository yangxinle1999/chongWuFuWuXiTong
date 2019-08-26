<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/shouye.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconfont.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
    <title></title>
</head>
<body>
<div class="main">
    <div class="nav">
        <div class="logod">
            <span class="iconfont icon-chongwu"></span>
            God's pets
        </div>
        <ul>
            <li class="navlist"><a href="${pageContext.request.contextPath}/jsp/shouYe/shouye.jsp" style="text-decoration: none;">首页</a></li>
            <li class="navlist"><a href="#">服务专区</a>
                <div class="nav_hid">
                    <span class="iconfont icon-jiantou"></span>
                    <ul >
                        <!--<li><a href="#">寄养服务</a></li>-->
                        <li><a href="${pageContext.request.contextPath}/shouyeshouyang" target="mainFrame-shouye"> 收养服务</a></li>
                        <li><a href="../../jsp/chongWuFuWu/xiYuFuWu.jsp" target="mainFrame-shouye">洗浴服务</a> </li>
                        <li><a href="../../jsp/chongWuFuWu/zaoxingfuwu.jsp" target="mainFrame-shouye">造型服务</a></li>
                    </ul>
                </div>
            </li>
            <li class="navlist"><a href="#">许愿墙</a>
                <div class="nav_hid">
                    <span class="iconfont icon-jiantou"></span>
                    <ul >
                        <li><a href="${pageContext.request.contextPath}/jsp/xuYuanQiang/xuYuanQiang2.jsp" target="mainFrame-shouye">许愿</a></li>
                    </ul>
                </div>
            </li>
            <li class="navlist"><a href="#">售卖专区</a>
                <div class="nav_hid">
                    <span class="iconfont icon-jiantou"></span>
                    <ul >
                        <li><a href="${pageContext.request.contextPath}/jsp/shouMai/shouMai.jsp" target="mainFrame-shouye">信息录入</a></li>
                        <li><a href="${pageContext.request.contextPath}/shoumaixinxilist" target="mainFrame-shouye">宠物商店</a></li>
                    </ul>
                </div>
            </li>

            <li class="navlist"><a href="#">交流专区</a>
                <div class="nav_hid">
                    <span class="iconfont icon-jiantou"></span>
                    <ul >
                        <li><a href="${pageContext.request.contextPath}/jiaoLiuList" target="mainFrame-shouye">发表言论</a></li>
                        <%--<li><a href="#">下拉菜单</a></li>--%>
                    </ul>
                </div>
            </li>
            <li class="navlist"><a href="../../jsp/baiKe/baike.jsp" target="mainFrame-shouye">宠物百科</a>
                <div class="nav_hid">
                    <%--<span class="iconfont icon-jiantou"></span>--%>
                    <%--<ul >--%>
                        <%--<li><a href="../../jsp/jiaoLiu/jiaoLiu.jsp">发表言论</a></li>--%>
                        <%--&lt;%&ndash;<li><a href="#">下拉菜单</a></li>&ndash;%&gt;--%>
                    <%--</ul>--%>
                </div>
            </li>
        </ul>
        <div class="name">
            <span class="iconfont icon-ren"></span>
            <span>bilbi</span>
            <div class="name_hid">
                <span class="iconfont icon-jiantou"></span>
                <div class="head">
                    <%--<script type="text/javascript">--%>
                        <%--window.location.href="${pageContext.request.contextPath}/imag";--%>
                    <%--</script>--%>
                   <%--<img src="${requestScope.file.pimage}">--%>
                    <img src="${sessionScope.get("ff")}">

                </div>
                <div style="float:right;margin-top: -62%;margin-right:10%">
                    <h3>bilbi</h3>
                    <%--<a href="../jsp/gerenxinxi.jsp" class="user" >${suc.name}</a>--%>
                    <a href="${pageContext.request.contextPath}/imagg" target="mainFrame-shouye">${sessionScope.get("name")}</a>

                </div>
            </div>
        </div>

    </div>
    <div class="content_shouye" style="position: absolute;">
        <iframe id="mainFrame-shouye" class="middle_right1" name="mainFrame-shouye" style="border: 0px;width: 1900px;height: 1000px;" src="${pageContext.request.contextPath}/jsp/shouYe/shouye2.jsp" scrolling="no">
        </iframe>
    </div>

</div>
</body>
</html>
<%--<script type="text/javascript">--%>
    <%--$(function () {--%>
       <%--window.location.href="${pageContext.request.contextPath}/image";--%>
    <%--})--%>
<%--</script>--%>
