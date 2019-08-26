<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>收养信息</title>
    <style type="text/css">
        #box{width:100%;
            height:900px;
            padding:20px;
            background:url(../../images/550.jpg) no-repeat 2px center;
            margin:0px auto 0;
        }
        #boxs{width:50%;
            height:900px;
            margin:50px auto 0;}
        .header{font-size:55px;
            text-align:center;
            font-family:华文新魏;
        }
        td{padding-bottom:10px;
            algin:center;}
        td.left{width:90px;
            text-align:right;
            padding-right:8px;
            padding-bottom:20px;}
        .red{color:#F00;}
        td.txt01,td.txt02,td.txt03,td.txt04,td.txt05{width:250px;height:30px;border:1px solid #CCC;padding:3px 3px 26px;color:#949494;}
        .txt01{background:url(#) no-repeat 2px center;}
        .txt02{background:url(#) no-repeat 2px center;}
        .massage{
            width:432px;
            height:150px;
            font-size:16px;
            color:#949494;
            padding:3px;
        }
        .massage{background:url(#) no-repeat 2px center;}
        #boxs form table>tr td{
            width:300px;
        }
        .left p{
            margin-top: 8px;
        }
    </style>
</head>
<body>
<div id="box">
        <p class="header"><font face="华文新魏" color="blue">收养信息</font></p>
        <div id="boxs">
            <form action="#" method="post">
                <table>
                    <c:forEach var="shouyang" items="${shouyang.list}">
                    <tr>
                        <td class="left"><p style="width: 200px">这个宠物的主人:</p></td>
                        <td><input type="text" class="txt02" name="jiYangRenMing" readonly="readonly" style="border: none;" value="${shouyang.jiYangRenMing}"/></td></tr>
                    <tr>
                    <tr>
                        <td class="left"><p>宠物类型:</p><span class="red"></span></td>
                        <td><input type="text" class="txt01" name="petCateGory" readonly="readonly" style="border: none;"  value="${shouyang.petCateGory}"/></td></tr>
                    <tr>
                        <td class="left"><p >宠物名字:</p></td>
                        <td><input type="text" class="txt02" name="petName" readonly="readonly" style="border: none;" value="${shouyang.petName}"/></td></tr>
                    <tr>
                        <td class="left"><p>宠物习性:</p></td>
                        <td><input type="text" class="massage" name="petTrick" readonly="readonly" style="border: none;" value="${shouyang.petTrick}"/></td></tr>
                    <tr>
                        <td class="left"><p>收养时间:</p></td>
                        <td><input type="text" class="txt02" name="petTime" readonly="readonly" style="border: none;" value="${shouyang.petTime}"/></td></tr>
                    <td class="left"><p>联系电话:</p></td>
                    <td><input type="text" class="txt02" name="tel" readonly="readonly" style="border: none;" value="${shouyang.tel}"/></td></tr>
                    </c:forEach>
                    <tr >
                    <strong>每页${shouyang.pageSize}条 当前页${shouyang.size}条 ${shouyang.pageNum}/${shouyang.pages}页 总条数${shouyang.total}</strong>
                    </tr>
                    <tr>
                        <c:if test="${shouyang.isFirstPage==false}">
                            <a class="btn btn-default"  role="button" href="${pageContext.request.contextPath}/shouYang?page=${shouyang.firstPage}">首页</a>
                        </c:if>
                        <c:if test="${shouyang.hasPreviousPage==true}">
                            <a class="btn btn-default"  role="button" href="${pageContext.request.contextPath}/shouYang?page=${shouyang.prePage}">上一页</a>
                        </c:if>
                        <c:if test="${shouyang.hasNextPage==true}">
                            <a class="btn btn-default"  role="button" href="${pageContext.request.contextPath}/shouYang?page=${shouyang.nextPage}">下一页</a>
                        </c:if>
                        <c:if test="${shouyang.isLastPage==false}">
                            <a class="btn btn-default"  role="button" href="${pageContext.request.contextPath}/shouYang?page=${shouyang.lastPage}">末页</a>
                        </c:if>
                    </tr>
                </table>
            </form>
        </div>
</div>
</body>
</html>
