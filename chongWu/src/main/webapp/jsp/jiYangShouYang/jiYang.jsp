<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>寄养信息</title>
    <style type="text/css">
        #box{width:100%;
            height:900px;
            border:1px solid #CCC;
            padding:0px;

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
    </style>
</head>
<body>
<div id="box">
    <form action="${pageContext.request.contextPath}/jiYang" method="post">
        <p class="header"><font face="华文新魏" color="blue">寄养信息</font></p>
        <div id="boxs">
            <form action="#" method="post">
                <table>
                    <tr>
                        <td class="left"><font face=" 楷体" weight="bolder" size="4px">主人名字:</font></td>
                        <td><input type="button" class="txt02" name="jiYangRenMing" value="<%=session.getAttribute("name") %>"/></td></tr>
                    <tr>
                    <tr>
                        <td class="left"><font face=" 楷体" weight="bolder" size="4px">宠物类型:</font><span class="red"></span></td>
                        <td><input type="text" class="txt01" name="petCateGory"/></td></tr>
                    <tr>
                        <td class="left"><font face=" 楷体" weight="bolder" size="4px">宠物名字:</font></td>
                        <td><input type="text" class="txt02" name="petName"/></td></tr>
                    <tr>
                        <td class="left"><font face=" 楷体" weight="bolder" size="4px">宠物习性:</font></td>
                        <td><input type="text" class="massage" name="petTrick"/></td></tr>
                    <tr>
                        <td class="left"><font face=" 楷体" weight="bolder" size="4px">寄养时间:</font></td>
                        <td><input type="text" class="txt02" name="petTime"/></td></tr>
                        <td class="left"><font face=" 楷体" weight="bolder" size="4px">联系电话:</font></td>
                        <td><input type="text" class="txt02" name="tel"/></td></tr>
                    <tr>
                        <td><input type="submit" value="提交"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </form>
</div>
</body>
</html>

