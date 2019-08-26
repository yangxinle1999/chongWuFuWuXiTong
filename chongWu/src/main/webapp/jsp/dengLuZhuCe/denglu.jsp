<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>无标题文档</title>
    <link href="${pageContext.request.contextPath}/css/denglu.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
    <script type="text/javascript">
        function genTimestamp() {
            var time = new Date();
            return time.getTime();
        }
        function changeImage() {
            $('#CreateCheckCode').attr('src',
                '${pageContext.request.contextPath }/pp?timestamp=' + genTimestamp());//更改src属性节点的值
        }
    </script>
</head>

<body>
<div class="bkg">
    <div class="welcome">
        <p>欢迎来到宠物服务系统</p>
    </div>
    <form class="login" action="${pageContext.request.contextPath}/chaxun" method="post">
        <label class="login_header">登录你的账户</label><br/>
        <label class="username">用户名</label>
        <input class="username" type="text" name="name" id="nm"/><br/>
        <label class="password">密码</label>
        <input class="password" type="password" name="password" /><br/>
        <label class="login_check">请输入验证码</label>
        <input class="login_check" type="text" name="checkcode" title="验证码区分大小写" size="13" maxlength="4" />
        <img src="${pageContext.request.contextPath}/pp" id="CreateCheckCode" align="middle">
        <a id="changeVerifImageRegister" href="" onclick="javascript:changeImage();"> 看不清,换一个</a><br>
        <input class="denglu" type="submit" value="登录" />
        <input id="dian" class="denglu" type="button" value="注册"/>
     </form>
</div>
</body>
</html>
<script type="text/javascript">
   $(function () {
       $("#nm").blur(function () {
           $.ajax({
               url:"${pageContext.request.contextPath}/ajax",
               type:"POST",
               data:"name="+$("#nm").val(),//绑定name，并为name赋值，为controller传递参数
               contentType:"application/x-www-form-urlencoded; charset=utf-8",//解决中文乱码问题
               success:function (m){
                   if (m==1){
                       alert("您还未注册，请先注册！");
                       window.location.assign("http://localhost:8088/jsp/dengLuZhuCe/zhuce.jsp");
                   }
               }
           })
       });
       $("#dian").click(function () {
           window.location.assign("http://localhost:8088/jsp/dengLuZhuCe/zhuce.jsp");
       })
   })
</script>