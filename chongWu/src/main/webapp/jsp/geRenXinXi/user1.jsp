<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <style type="text/css">
        #cmm{
            width:500px;
            line-height: 60px;
            background-color:white;
        }
        font{
            font-family: "youyuan";
        }

    </style>
</head>
<body bgcolor="#d5e6fa">

<center>
    <h2><font>个人信息</font></h2><hr>
    <form action="" method="post" name="insert" id="cmm">
        <table>
            <tr>
                <td> <span><font color="red">*</font></span>姓名：</td>
                <td><input type="text" name="username" value="${succ.name}" readonly="readonly" style="border: none;"></td>
            </tr>
            <tr>

                <td> <span><font color="red">*</font></span>性别：</td>
                <td><input type="text" name="sex" value="${succ.sex}" readonly="readonly" style="border: none;">
                </td>
            </tr>
            <tr>

                <td><span><font color="red">*</font></span>学号：</td>
                <td><input type="text" value="${succ.num}" name="num" readonly="readonly" style="border: none;"></td>
            </tr>
            <tr>
                <td><span><font color="red">*</font></span>密码:</td>
                <td><input type="text" value="${succ.password}" name="password" readonly="readonly" style="border: none;"></td>
            </tr>
            <tr>
                <td><span><font color="red">*</font></span>年龄:</td>
                <td><input type="text" value="${succ.age}" name="age" readonly="readonly" style="border: none;"></td>
            </tr>
            <tr>
                <td><span><font color="red">*</font></span>年级:</td>
                <td><input type="text" value="${succ.grade}" name="grade" readonly="readonly" style="border: none;"></td>
            </tr>
        </table>
    </form>
</center>
</body>
<html>

