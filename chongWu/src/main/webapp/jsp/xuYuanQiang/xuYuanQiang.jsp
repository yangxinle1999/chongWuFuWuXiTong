<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <style>
        body {
            margin: 0 auto;
            padding: 0px;
            font-size: 12px;
            background: url(../../images/bg.gif) repeat center 36px;
            text-align: center;
            background-color: #c30230;
        }
        #content {
            margin: 0 auto;
            width: 960px;
            background: url(../../images/content_bg.jpg) no-repeat left top;
            height: 627px;
            position: relative;
        }

        #content .tip1, #content .tip2, #content .tip3, #content .tip4, #content .tip5, #content .tip6, #content .tip7, #content .tip8 {
            position: absolute;
            width: 227px;
            left: 200px;
            top: 100px;
        }

        #content .tip1 .tip_h {
            background: url(../../images/tip1_h.gif) no-repeat left top;
        }

        #content .tip1 .tip_h, #content .tip2 .tip_h, #content .tip3 .tip_h, #content .tip4 .tip_h, #content .tip5 .tip_h, #content .tip6 .tip_h, #content .tip7 .tip_h, #content .tip8 .tip_h {
            width: 227px;
            padding-top: 45px;
            height: 23px;
            text-align: left;
            cursor: move;
        }
        #content .tip1 .tip_c {
            background: url(../../images/tip1_c.gif) repeat-y;
        }

        #content .tip1 .tip_c, #content .tip2 .tip_c, #content .tip3 .tip_c, #content .tip4 .tip_c, #content .tip5 .tip_c, #content .tip6 .tip_c, #content .tip7 .tip_c, #content .tip8 .tip_c {
            width: 200px;
            padding-left: 12px;
            padding-right: 15px;
            min-height: 40px;
            text-align: left;
            line-height: 20px;
            max-height: 160px;
            word-wrap: break-word;
            word-break: break-all;
            overflow: hidden;
        }

        #content .tip1 .tip_f {
            background: url(../../images/tip1_f.gif) no-repeat left top;
        }

        #content .tip1 .tip_f, #content .tip2 .tip_f, #content .tip3 .tip_f, #content .tip4 .tip_f, #content .tip5 .tip_f, #content .tip6 .tip_f, #content .tip7 .tip_f, #content .tip8 .tip_f {
            width: 227px;
            height: 53px;
            padding-top: 20px;
        }
        #content .close, #content .close2 {
            float: left;
            font-size: 12px;
            cursor: pointer;
            color: #000000;
        }
        .clr {
            clear: both;
            overflow: auto;
            display: block;
            height: 0px;
        }
        #content .icon {
            float: left;
            width: 35px;
            padding-left: 15px;
            height: 35px;
            text-align: center;
        }
        #content .name {
            float: right;
            padding-right: 15px;
            text-align: right;
            font-size: 14px;
            line-height: 35px;
            color: #C0F;
        }
        #content .num {
            float: left;
            padding-left: 7px;
            width: 195px;
        }
    </style>
</head>
<body>

<!--纸条墙-->
<div id="content">
</div>


<script>

    //模拟数据库，获取信息
    var messages = [
        {"id":1,"name":"mahu","content":"今天狗狗生病了，呜呜呜","time":"2016-02-17 00:00:00"},
        {"id":2,"name":"haha","content":"想要一只泰迪，哈哈哈","time":"2016-02-18 12:40:00"},
        {"id":3,"name":"jjjj","content":"我家的猫跑了，不知道去哪了","time":"2016-03-18 12:40:00"},
        {"id":4,"name":"9.8的妹纸","content":"蓝瘦，呜呜呜","time":"2016-03-18 12:40:00"},
        {"id":5,"name":"雷锋ii.","content":"开心！","time":"2016-02-22 12:40:00"},
        {"id":6,"name":"哎呦哥哥.","content":"我家的狗真是越来越皮了","time":"2016-02-22 01:30:00"},
        {"id":7,"name":"没猴哥，不春晚","content":"谁能给我一只小老鼠，呜呜呜","time":"2016-02-22 01:30:00"},
        {"id":8,"name":"哎呦杰杰.","content":"喜欢跟小狗躲猫猫，","time":"2016-02-22 01:30:00"},
        {"id":9,"name":"哎呦哎呦","content":"啦啦啦","time":"2016-02-22 02:30:00"}
    ];//json

    //需求1：模拟数据库获取信息，然后在页面上生成数组的长度个tip,然后分别问起内容进行修改。
    //需求2：点击内容，提高层级；点击关闭按钮，删除tip标签；双击顶部，删除标签.....

    //需求1：模拟数据库获取信息，然后在页面上生成数组的长度个tip,然后分别问起内容进行修改。
    //步骤：
    //获取相关元素
    var content = document.getElementById("content");

    //循环生成div标签，然后为innerHTML属性添加内容
    for(var i=0;i<messages.length;i++){
        //生成新标签
        var newDiv = document.createElement("div");
        //绑定类名和ID
        newDiv.className = "tip1";
        newDiv.id = "tip"+messages[i].id;
        //改变位置
        var topValue = parseInt(Math.random()*400);
        var leftValue = parseInt(Math.random()*700);
        newDiv.style.top = topValue+"px";
        newDiv.style.left = leftValue+"px";
        //赋值内容
        newDiv.innerHTML = '<div class="tip_h" title="双击关闭纸条">'+
            '<div class="num">第[49568]条 '+messages[i].time+'</div>'+
            '<div class="close" title="关闭纸条" >×</div>'+
            '<div class="clr"></div>'+
            '</div>'+
            '<div class="tip_c">'+
            messages[i].content+
            '</div>'+
            '<div class="tip_f">'+
            '<div class="icon">'+
            '<img src="${pageContext.request.contextPath}/images/bpic_1.gif" alt="" title="">'+
            '</div>'+
            '<div class="name">'+messages[i].name+'</div>'+
            '<div class="clr"></div>'+
            '</div>';
        //把新创建的元素放入content里面
        content.appendChild(newDiv);


        //绑定事件，提高层级
        newDiv.onclick = fn;

        //点击关闭按钮的时候关闭父盒子。
        var closeDiv = newDiv.getElementsByClassName("close")[0];
        closeDiv.onclick = function () {
            //不能用newDiv，因为在页面加载的时候newDiv，已经变成最后一个了，当你点击的时候，用远关闭的是最后的那个div。
//                content.removeChild(newDiv);
            content.removeChild(this.parentNode.parentNode);
        }

        //双击关闭按钮类名叫做tip_h
        var dbDiv = newDiv.getElementsByClassName("tip_h")[0];
        dbDiv.ondblclick = function () {
            //不能用newDiv，因为在页面加载的时候newDiv，已经变成最后一个了，当你点击的时候，用远关闭的是最后的那个div。
//                content.removeChild(newDiv);
            content.removeChild(this.parentNode);
        }

    }

    var index = 1;
    function fn(){
        this.style.zIndex = index;
        index++;
    }

</script>



</body>
</html>