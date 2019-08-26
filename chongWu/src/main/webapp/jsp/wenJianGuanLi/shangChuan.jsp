<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <style>

        .lala{background-color:snow;width: 100%;height: 100%}
    </style>
</head>
<body>
<div class="lala">
    <form action="${pageContext.request.contextPath}/shangChuan" method="post" enctype="multipart/form-data">
        选择文件:<input type="file" name="file" width="120px"><br>
        <input type="submit" value="上传">
    </form>
</div>
</body>
</html>
