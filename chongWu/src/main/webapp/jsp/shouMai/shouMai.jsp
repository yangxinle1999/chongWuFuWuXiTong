<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/sell.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="sell" action="${pageContext.request.contextPath}/shoumaixinxi" method="post" enctype="multipart/form-data">
    <table id="content">
        <tr id="content1">
            <td style="text-align: center;">上传宠物图片:</td>
            <td><input type="file" accept="image/*" name="image"></td>
        </tr>
        <tr id="content2">
            <td style="text-align: center;">宠物类型:</td>
            <td><input type="text" name="chongWuLeiBie"></td>
        </tr>
        <tr >
            <td style="text-align: center;">宠物年龄:</td>
            <td><input style="height: 36px;width: 82px" type="text" name="chongWuAge"></td>
        </tr>

        <tr id="content3">
            <td style="text-align: center;">售卖价格(元):</td>
            <td><input type="text" name="price"></td>
        </tr>
        <tr>
            <td style="text-align: center;">联系方式:</td>
            <td><input type="text" style="height: 30px" name="tel"></td>
        </tr>
        <tr >
            <td style="text-align: center;">家庭住址:</td>
            <td><input style="height: 30px;" type="text" name="address"></td>
        </tr>
    </table>
    <input id="tijiao" type="submit" value="提交">
</form>
</body>
</html>


