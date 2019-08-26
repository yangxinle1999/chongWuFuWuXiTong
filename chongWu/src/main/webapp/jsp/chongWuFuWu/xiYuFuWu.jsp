<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>洗浴服务</title>
    <style type="text/css">
        #box{width:1920px;
            height:1200px;
            padding:20px;
            margin:50px auto 0;
            background:url(../../images/a.jpg) no-repeat 2px center;
        }
        #boxs{width:30%;
            height:900px;
            margin:50px auto 0;
            border:1px solid #CCC;
            padding:50px;
        }
        .header{font-size:44px;
            text-align:center;
        }
        td{padding-bottom:10px;
            align:center;
        }
        td.left{width:90px;
            text-align:right;
            padding-right:8px;
            padding-bottom:20px;}
        .course{width:185px;}



    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
</head>
<body>
<div id="box">
    <form action="#" method="post">
        <p class="header"><font face="华文新魏" color="blue">洗浴服务</font></p>
    </form>
    <div id="boxs">
            <table>
                <tr >
                    <td class="left"><font face=" 楷体" weight="bolder" size="4px">普通服务:</font></td>
                    <td class="course">
                        <select class="course" size="2" id="selectid">
                            <option id="tt1" value="100" >低级洗浴(100)</option>
                            <option value="50" id="tt2">普通洗浴(50)</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td class="left"><font face=" 楷体" weight="bolder" size="4px">高级服务:</font></td>
                    <td>
                        <select multiple="multiple" size="3" id="ff" >
                            <option value="150" id="tt3">药浴(150)</option>
                            <option value="120" id="tt4">中级洗浴(120)</option>
                            <option value="180" id="tt5">经络按摩(180)</option>
                        </select>
                    </td>
                   </tr>
                <tr>
                    <td class="left"><font face=" 楷体" weight="bolder" size="4px">VIP服务:</font></td>
                    <td><select multiple="multiple" size="3" id="yy">
                        <option value="300" id="tt6">宠物SPA(300)</option>
                        <option value="260" id="tt7">高级洗浴(260)</option>
                        <option value="230" id="tt8">推拿(230)</option>
                    </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="button" value="提交"  onclick="getValue()"/></td>
                </tr>
            </table>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
            function getValue(){
            var str = $("#selectid option:selected").val(); //获得选中的value值
            var ff=$("#ff option:selected").val();
            var yy=$("#yy option:selected").val();
            var qq=$("#selectid option:selected").text();//获得选中的text值
            var ww=$("#ff option:selected").text();
            var ee=$("#yy option:selected").text();
            if (str==null && ff==null){
                $.ajax({
                    type:"post",
                    dataType:"json",
                    url:"${pageContext.request.contextPath}/money",
                    data:{'select':yy},
                    success:function(msg){
                        if(msg['code']===200){
                            alert("交易成功，余额为"+msg['data']+"元");
                            var jin={"jiaoyijine":yy,"yue":msg['data'], "fuwuleixing":ee };//将信息封装成json类型，传递给后台
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
                });
            }
            else if (str==null && yy==null){
                $.ajax({
                    type:"post",
                    dataType:"json",
                    url:"${pageContext.request.contextPath}/money",
                    data:{'select':ff},
                    success:function(msg){
                        if(msg['code']===200){
                            alert("交易成功，余额为"+msg['data']+"元");
                            var jin={"jiaoyijine":ff,"yue":msg['data'], "fuwuleixing":ww };
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
                });
            }else {
                $.ajax({
                    type:"post",
                    dataType:"json",
                    url:"${pageContext.request.contextPath}/money",
                    data:{'select':str},
                    success:function(msg){
                        if(msg['code']===200){
                            var jin={"jiaoyijine":str,"yue":msg['data'], "fuwuleixing":qq };
                            alert("交易成功，余额为"+msg['data']+"元");
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
                });
            }
        }
</script>


