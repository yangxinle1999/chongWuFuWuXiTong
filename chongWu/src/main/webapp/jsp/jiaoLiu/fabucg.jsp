<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/4/26
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
    alert("信息发布成功！");
    // window.location.assign("http://localhost:8088/jsp/jiaoLiu/jiaoLiu.jsp");
    window.location.href="${pageContext.request.contextPath}/jiaoLiuList";
</script>
</body>
</html>

