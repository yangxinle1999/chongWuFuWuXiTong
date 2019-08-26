<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>无标题文档</title>
    <link href="${pageContext.request.contextPath}/css/zhuce.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
    <!-- <script type="text/javascript">
        function genTimestamp() {
            var time = new Date();
            return time.getTime();
        }
        function changeImage() {
            $('#CreateCheckCode').attr('src',
                '${pageContext.request.contextPath }/pp?timestamp=' + genTimestamp());//更改src属性节点的值
        }
    </script>-->
    <style>
        .login{
            height:800px;
            width:700px;
            border-radius:15px;
            background:rgba(216,216,216,0.5);
            text-align:center;
            overflow:hidden;
            position:absolute;
            top:50%;
            left:50%;
            transform: translate(-50%,-50%);
        }
        .login input{
            margin-left:20px;
            border-radius:6px;
            outline:none;
            border:1px solid rgba(0,0,0,0.5);
            padding:5px;
            -webkit-background-clip:padding-box;
            background-clip:padding-box;
            background:rgba(216,216,216,0.4);
        }
    </style>
</head>

<body>
<div class="bkg">
    <form class="login" action="${pageContext.request.contextPath}/zhuce" method="post" enctype="multipart/form-data" onsubmit="return beforeSubmit(this)"
    name="insert">
        <label class="login_header">注册账号</label><br/>
        <label class="login_name" >姓名</label>
        <input class="login_name" type="text" name="name" id="nn"/><span id="ss"></span> <br/>
        <label class="login_num">学号</label>
        <input class="login_num" type="text" name="num" /><br/>
        <label class="login_password">密码</label>
        <input class="login_password" type="password" name="password" /><br/>
        <label class="login_sex">性别</label>
        <input class="login_sex" type="text" name="sex" /><br/>
        <label class="login_age">年龄</label>
        <input class="login_age" type="text" name="age" /><br/>
        <label class="login_grade">年级</label>
        <input class="login_grade" type="text" name="grade" /><br/>
        <label class="login_QQ" >QQ</label>
        <input class="login_QQ" type="text" id="qq"><br/>
        <label class="login_yanz" >验证码</label>
        <input class="login_yanz" type="text" id="yanzhengma"><span id="zz"></span><br/>
        <label class="login_check">头像</label>
        <input class="login_check" type="file" name="pimage"><br>
        <!--<label class="login_check">请输入验证码</label>
        <input class="login_check" type="text" name="checkcode" title="验证码区分大小写" size="11" maxlength="4" />
        <img src="${cxt}/pp" id="CreateCheckCode" align="middle">
        <a id="changeVerifImageRegister" href="" onclick="javascript:changeImage();"> 看不清,换一个</a><br>-->
        <input class="zhuce" type="submit" id="sub" value="注册" />
        <input class="zhuce" type="button" id="dian1" value="返回"/>
    </form>
</div>
</body>
</html>
<script type="text/javascript">
    $(function () {
        $("#nn").blur(function () {
            $.ajax({
                url:"${pageContext.request.contextPath}/ajax",
                type:"POST",
                data:"name="+$("#nn").val(),//绑定name，并为name赋值，为controller传递参数
                contentType:"application/x-www-form-urlencoded; charset=utf-8",//解决中文乱码问题
                success:function (m) {  //拿到controller返回的值
                    if (m==1){
                        $("#ss").html("<font color='green'>此名字可以使用</font>");//为span设置html属性
                        $("#sub").removeAttr("disabled");
                        $("#sub").attr({"disabled":false});
                    }else {
                        $("#ss").html("<font color='red'>此名字已被注册!</font>");
                        $("#sub").attr({"disabled":"true"});
                    }
                }
            })
        });
        $("#qq").blur(function () {
            var aa=$("#qq").val();
            console.log(aa);
            $.ajax({
                url:"${pageContext.request.contextPath}/youxiang/you?name="+aa,
                type:"POST",
                success:function (result) {

                }
            })
        });
        $("#yanzhengma").blur(function () {
            var yanzhengma=$("#yanzhengma").val();
            console.log(yanzhengma);
            $.ajax({
                url:"${pageContext.request.contextPath}/youxiang/yanzhengma?yanzhengma="+yanzhengma,
                type:"GET",
                success:function (result) {
                   if(result==1){
                       // alert("输入正确！");
                       $("#zz").html("<font color='green'>输入正确!</font>");//为span设置html属性
                       $("#sub").removeAttr("disabled");
                       $("#sub").attr({"disabled":false});
                   }else {
                       // alert("输入错误，请重新输入！");
                       $("#zz").html("<font color='red'>输入有误!</font>");
                       $("#sub").attr({"disabled":"true"});
                   }
                }
            })
        });
   $("#dian1").click(function () {
       window.location.assign("http://localhost:8088/jsp/dengLuZhuCe/denglu.jsp");
       })
    });

    function beforeSubmit(insert) {
        if (insert.name.value == "") {
            alert("姓名不能为空！");
            insert.name.focus();
            return false;
        }
        if (insert.num.value == "") {
            alert("学号不能为空！");
            insert.num.focus();
            return false;
        }
        // if (insert.password.value == "") {
        //     alert("学号不能为空！");
        //     insert.password.focus();
        //     return false;
        // }
        if (insert.password.value == "") {
            alert("密码不能为空！");
            insert.password.focus();
            return false;
        }
        if (insert.sex.value == "") {
            alert("性别不能为空！");
            insert.sex.focus();
            return false;
        }
        if (insert.age.value == "") {
            alert("年龄不能为空！");
            insert.age.focus();
            return false;
        }
        if (insert.sex.value == "") {
            alert("性别不能为空！");
            insert.sex.focus();
            return false;
        }
        if (insert.grade.value == "") {
            alert("年级不能为空！");
            insert.grade.focus();
            return false;
        }
        if (insert.pimage.value == "") {
            alert("头像不能为空！");
            insert.pimage.focus();
            return false;
        }
        return true;
    }
</script>

