<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/shouyeshouyang.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css"/>
    <script src="${pageContext.request.contextPath}/jQuery/bootstrap.js"></script>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        #biaoge{
            font-size: 15px;
            color:blue;
            height: 779px;
            width: 1364px;
            border-radius: 15px;
            margin: 20px auto;
            background:rgba(216,216,216,0.5);
        }
        #fenye{
            list-style: none;
            position: absolute;
            top: 800px;
            left: 0;
            margin: 0 745px;
        }
        #fenye li{
            float: left;
        }
        .pagination {
            display: inline-block;
            padding-left: 0;
            margin: 20px 0;
            border-radius: 4px;
        }
        .pagination > li {
            display: inline;
        }
        .pagination > li > a,
        .pagination > li > span {
            position: relative;
            float: left;
            padding: 6px 12px;
            margin-left: -1px;
            line-height: 1.42857143;
            color: #337ab7;
            text-decoration: none;
            background-color: #fff;
            border: 1px solid #ddd;
        }
        .pagination > li:first-child > a,
        .pagination > li:first-child > span {
            margin-left: 0;
            border-top-left-radius: 4px;
            border-bottom-left-radius: 4px;
        }
        .pagination > li:last-child > a,
        .pagination > li:last-child > span {
            border-top-right-radius: 4px;
            border-bottom-right-radius: 4px;
        }
        .pagination > li > a:hover,
        .pagination > li > span:hover,
        .pagination > li > a:focus,
        .pagination > li > span:focus {
            z-index: 2;
            color: #23527c;
            background-color: #eee;
            border-color: #ddd;
        }
        .pagination > .active > a,
        .pagination > .active > span,
        .pagination > .active > a:hover,
        .pagination > .active > span:hover,
        .pagination > .active > a:focus,
        .pagination > .active > span:focus {
            z-index: 3;
            color: #fff;
            cursor: default;
            background-color: #337ab7;
            border-color: #337ab7;
        }
        .pagination > .disabled > span,
        .pagination > .disabled > span:hover,
        .pagination > .disabled > span:focus,
        .pagination > .disabled > a,
        .pagination > .disabled > a:hover,
        .pagination > .disabled > a:focus {
            color: #777;
            cursor: not-allowed;
            background-color: #fff;
            border-color: #ddd;
        }
        .pagination-lg > li > a,
        .pagination-lg > li > span {
            padding: 10px 16px;
            font-size: 18px;
            line-height: 1.3333333;
        }
        .pagination-lg > li:first-child > a,
        .pagination-lg > li:first-child > span {
            border-top-left-radius: 6px;
            border-bottom-left-radius: 6px;
        }
        .pagination-lg > li:last-child > a,
        .pagination-lg > li:last-child > span {
            border-top-right-radius: 6px;
            border-bottom-right-radius: 6px;
        }
        .pagination-sm > li > a,
        .pagination-sm > li > span {
            padding: 5px 10px;
            font-size: 12px;
            line-height: 1.5;
        }
        .pagination-sm > li:first-child > a,
        .pagination-sm > li:first-child > span {
            border-top-left-radius: 3px;
            border-bottom-left-radius: 3px;
        }
        .pagination-sm > li:last-child > a,
        .pagination-sm > li:last-child > span {
            border-top-right-radius: 3px;
            border-bottom-right-radius: 3px;
        }
        .pager {
            padding-left: 0;
            margin: 20px 0;
            text-align: center;
            list-style: none;
        }
        .pager li {
            display: inline;
        }
        .pager li > a,
        .pager li > span {
            display: inline-block;
            padding: 5px 14px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 15px;
        }
        .pager li > a:hover,
        .pager li > a:focus {
            text-decoration: none;
            background-color: #eee;
        }
        .pager .next > a,
        .pager .next > span {
            float: right;
        }
        .pager .previous > a,
        .pager .previous > span {
            float: left;
        }
        .pager .disabled > a,
        .pager .disabled > a:hover,
        .pager .disabled > a:focus,
        .pager .disabled > span {
            color: #777;
            cursor: not-allowed;
            background-color: #fff;
        }
    </style>
</head>
<body>
<div id="bigbox">
    <div id="shouyang">
        <p>收养服务</p>
    </div>
    <table id="biaoge">
        <tr>
            <td>宠物类型</td>
            <td>宠物名称</td>
            <td>宠物习性</td>
            <td>寄养时间</td>
            <td>宠物主人</td>
            <td>联系电话</td>
            <td>选择收养</td>
        </tr>
        <c:forEach items="${pageInfo.list}" var="list">
        <tr>
            <td><input type="text" name="petCateGory" id="petCateGory" style="border: none;" readonly="readonly" class="petCateGory" value="${list.petCateGory}"/></td>
            <td><input type="text" name="petName" id="petName" style="border: none;" readonly="readonly" class="petName" value="${list.petName}"/></td>
            <td><input type="text" name="petTrick" id="petTrick" style="border: none;" readonly="readonly" class="petTrick" value="${list.petTrick}"/></td>
            <td><input type="text" name="petTime" id="petTime" style="border: none;" readonly="readonly" class="petTime" value="${list.petTime}"/></td>
            <td><input type="text" name="jiYangRenMing" id="jiYangRenMing" style="border: none;" readonly="readonly" class="jiYangRenMing" value="${list.jiYangRenMing}"/></td>
            <td><input type="text" name="tel" id="tel" style="border: none;" readonly="readonly" class="tel" value="${list.tel}"/></td>
            <td><input type="button" class="nnn" value="收养"  id="yici" /></td>
        </tr>
        </c:forEach>
        <%--<ul id="fenye">--%>
            <%--<li>每页${pageInfo.pageSize}条 当前页${pageInfo.size}条 ${pageInfo.pageNum}/${pageInfo.pages}页 总条数${pageInfo.total}</li>--%>
            <%--<c:if test="${pageInfo.isFirstPage==false}">--%>
            <%--<li><a class="btn btn-default"  role="button" href="${pageContext.request.contextPath}/shouyeshouyang?page=${pageInfo.firstPage}">首页</a></li>--%>
            <%--</c:if>--%>
            <%--<c:if test="${pageInfo.hasPreviousPage==true}">--%>
            <%--<li><a class="btn btn-default"  role="button" href="${pageContext.request.contextPath}/shouyeshouyang?page=${pageInfo.prePage}">上一页</a></li>--%>
            <%--</c:if>--%>
            <%--<c:if test="${pageInfo.hasNextPage==true}">--%>
            <%--<li><a class="btn btn-default"  role="button" href="${pageContext.request.contextPath}/shouyeshouyang?page=${pageInfo.nextPage}">下一页</a></li>--%>
            <%--</c:if>--%>
            <%--<c:if test="${pageInfo.isLastPage==false}">--%>
            <%--<li><a class="btn btn-default"  role="button" href="${pageContext.request.contextPath}/shouyeshouyang?page=${pageInfo.lastPage}">末页</a></li>--%>
            <%--</c:if>--%>
        <%--</ul>--%>

        <nav aria-label="Page navigation">
            <ul class="pagination">
                <c:if test="${pageInfo.pageNum>1}">
                    <li>
                        <a href="${pageContext.request.contextPath}/shouyeshouyang?page=${pageInfo.pageNum-1}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <%--<li>--%>
                <%--<a href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.pageNum-1}" aria-label="Previous">--%>
                <%--<span aria-hidden="true">&laquo;</span>--%>
                <%--</a>--%>
                <%--</li>--%>
                <c:forEach begin="1" end="${pageInfo.pages}" var="i">
                    <li> <a href="${pageContext.request.contextPath}/shouyeshouyang?page=${i}">${i} <span class="sr-only"></span></a></li>
                </c:forEach>
                <%--<li><a href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.pageNum}">${pageIn.pageNum}</a></li>--%>
                <%--<li><a href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.pageNum+1}">${pageIn.pageNum+1}</a></li>--%>
                <%--<li><a href="${pageContext.request.contextPath}/jiaoLiuList?page=3">3</a></li>--%>
                <%--<li><a href="${pageContext.request.contextPath}/jiaoLiuList">4</a></li>--%>
                <%--<li><a href="${pageContext.request.contextPath}/jiaoLiuList">5</a></li>--%>
                <c:if test="${pageInfo.pageNum<pageInfo.pages}">
                    <li>
                        <a href="${pageContext.request.contextPath}/shouyeshouyang?page=${pageInfo.pageNum+1}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
                <%--<li>--%>
                <%--<a href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.pageNum+1}" aria-label="Next">--%>
                <%--<span aria-hidden="true">&raquo;</span>--%>
                <%--</a>--%>
                <%--</li>--%>
            </ul>
        </nav>
      </table>
</div>
</body>
</html>
<script type="text/javascript">
    $(function () {
            //$("#sss").click(function () {
            //window.location.assign("http://localhost:8888/shouyang");
        $(".nnn",this).click(function () {
            var petCateGory=$(this).parents("tr").find(".petCateGory").val();//获得当前行的值
            var petName=$(this).parents("tr").find(".petName").val();//获得当前行的值
            var petTrick=$(this).parents("tr").find(".petTrick").val();//获得当前行的值
            var petTime=$(this).parents("tr").find(".petTime").val();//获得当前行的值
            var jiYangRenMing=$(this).parents("tr").find(".jiYangRenMing").val();//获得当前行的值
            var tel=$(this).parents("tr").find(".tel").val();//获得当前行的值
            var json={"petCateGory":petCateGory,"petName":petName,"petTrick":petTrick,"petTime":petTime,"jiYangRenMing":jiYangRenMing,
                "tel":tel};
            $.ajax({
                url:"${pageContext.request.contextPath}/shouyangchaxun",
                type:"POST",
                dataType:"json",
                data:JSON.stringify(json),//发送时，将json字符串改为Json对象
                contentType:"application/json;charset=utf-8",//必须是Json对象才能加上这句话
                success:function (m) {  //拿到controller返回的值
                    if (m==1){
                       alert("asd");
                        $.ajax({
                            url:"${pageContext.request.contextPath}/shouyang",
                            type:"POST",
                            dataType:"json",
                            data:JSON.stringify(json),//发送时，将json字符串改为Json对象
                            contentType:"application/json;charset=utf-8",//必须是Json对象才能加上这句话
                            success:function (kkkk) {
                                if (kkkk==1) {
                                    alert("收养成功");
                                }else {
                                    alert("收养失败")
                                }
                            }
                        })
                    }else {
                        alert("该宠物已被其他人收养，不能重复收养！");
                    }
                }
            });
            // $(".nnn").click(function(){
            //     $(this).attr("disabled","disabled");
            // });
        });
    });
</script>
