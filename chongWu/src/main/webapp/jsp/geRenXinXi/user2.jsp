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
    <h2><font>个人信息修改</font></h2><hr>
    <form action="${pageContext.request.contextPath}/user2" method="post" name="insert" id="cmm" onsubmit="return beforeSubmit(this);">
        <table>
            <tr>
                <td> <span><font color="red">*</font></span>姓名：</td>
                <td><input type="text" name="username" value="" ></td>
            </tr>
            <!--<tr>

                <td> <span><font color="red">*</font></span>性别：</td>
                <td><input type="button" name="sex" value="${succ.sex}">
                </td>
            </tr>-->
            <tr>

                <td><span><font color="green">*</font></span>学号：</td>
                <td><input type="text"  name="num" value=""></td>
            </tr>
            <tr>
                <td><span><font color="red">*</font></span>新的密码:</td>
                <td><input type="text" name="password" value=""></td>
            </tr>
            <tr>
                <td><span><font color="red">*</font></span>确认密码:</td>
                <td><input type="text" name="password1" value=""></td>
            </tr>
           <!-- <tr>
                <td><span><font color="red">*</font></span>年龄:</td>
                <td><input type="text"  name="age"></td>
            </tr>-->
            <tr>
                <td><span><font color="green">*</font></span>年级:</td>
                <td><input type="text" name="grade" value=""></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="提交">
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
<html>
<script type="text/javascript">
    function beforeSubmit(insert) {
        if (insert.username.value == "") {
            alert("用户名不能为空！");
            insert.username.focus();
            return false;
        }
        //if (insert.num.value == "") {
           // alert("学号不能为空！");
            //insert.num.focus();
            //return false;
        //}
        if (insert.password.value.length != 6) {
            alert("密码必须为6位，请重新输入！");
            insert.password.focus();
            return false;
        }
        if (insert.password1.value != insert.password.value) {
            alert("你两次输入的密码不一致，请重新输入！");
            insert.password1.focus();
            return false;
        }
        //if (insert.grade.value=="") {
           // alert("年级不能为空");
            //insert.password1.focus();
            //return false;
        //}
        return true;
    }
</script>
    

