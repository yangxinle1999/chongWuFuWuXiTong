<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
    <link href="${pageContext.request.contextPath}/css/communication.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/bootstrap.css"/>
    <script src="${pageContext.request.contextPath}/jQuery/bootstrap.js"></script>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        #fenye1{
            list-style: none;
            position: absolute;
            top: 479px;
            left: 0;
            margin: 0 115px;
        }
        #fenye1 li{
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
<div id="bkg">
    <form id="jiaoliu" action="${pageContext.request.contextPath}/jiaoLiu" method="post">
        <img src=""/>
        <textarea id="txt1" placeholder="快点过来说点什么吧..." name="content"></textarea>
        <input id="btn1" type="submit" value="发&nbsp;布" />
    </form>
    <div id="content">
       <c:forEach items="${pageIn.list}" var="list">
          <table>
              <tr>
                  <td style="height: 35px; border: 1px dashed green" >${list.name}:${list.content}. ${list.time}</td>
              </tr>
          </table>
       </c:forEach>
        <%--<ul id="fenye1">--%>
            <%--&lt;%&ndash;<li>每页${pageIn.pageSize}条pageIn.siz 当前页${e}条 ${pageIn.pageNum}/${pageIn.pages}页 总条数${pageIn.total}</li><br><br>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:if test="${pageIn.isFirstPage==false}">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<li><a class="btn btn-default"  role="button" href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.firstPage}">首页</a></li>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:if test="${pageIn.hasPreviousPage==true}">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<li><a class="btn btn-default"  role="button" href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.prePage}">上一页</a></li>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:if test="${pageIn.hasNextPage==true}">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<li><a class="btn btn-default"  role="button" href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.nextPage}">下一页</a></li>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:if test="${pageIn.isLastPage==false}">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<li><a class="btn btn-default"  role="button" href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.lastPage}">末页</a></li>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
            <%----%>
        <%--</ul>--%>
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <c:if test="${pageIn.pageNum>1}">
                    <li>
                        <a href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.pageNum-1}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <%--<li>--%>
                    <%--<a href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.pageNum-1}" aria-label="Previous">--%>
                        <%--<span aria-hidden="true">&laquo;</span>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <c:forEach begin="1" end="${pageIn.pages}" var="i">
                    <li> <a href="${pageContext.request.contextPath}/jiaoLiuList?page=${i}">${i} <span class="sr-only"></span></a></li>
                </c:forEach>
                <%--<li><a href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.pageNum}">${pageIn.pageNum}</a></li>--%>
                <%--<li><a href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.pageNum+1}">${pageIn.pageNum+1}</a></li>--%>
                <%--<li><a href="${pageContext.request.contextPath}/jiaoLiuList?page=3">3</a></li>--%>
                <%--<li><a href="${pageContext.request.contextPath}/jiaoLiuList">4</a></li>--%>
                <%--<li><a href="${pageContext.request.contextPath}/jiaoLiuList">5</a></li>--%>
                <c:if test="${pageIn.pageNum<pageIn.pages}">
                    <li>
                        <a href="${pageContext.request.contextPath}/jiaoLiuList?page=${pageIn.pageNum+1}" aria-label="Next">
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

    </div>
</div>
</body>
</html>
<%--<script type="text/javascript">--%>
    <%--$(function () {--%>
        <%--$.ajax({--%>
            <%--url:"${pageContext.request.contextPath}/jiaoLiuList",--%>
            <%--type:"POST",--%>
            <%--success:function (mmm) {--%>
                <%--//var nnn=JSON.stringify(mmm);--%>
                <%--for(var i  in mmm){--%>
                    <%--console.log(mmm[i].name);--%>
                    <%--console.log(mmm[i].content);--%>
                    <%--var hh=document.getElementById("content1");--%>
                    <%--hh.innerText=mmm[i].name+":"+mmm[i].content;--%>
                <%--}--%>

            <%--}--%>
        <%--})--%>

    <%--})--%>
<%--</script>--%>
