<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link href="css/pet.css" rel="stylesheet"/>
    <link rel="stylesheet" href="./iconfont.css">
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <title></title>
</head>
<body>
<div class="main">
    <div class="under">
        <div class="imgbg">
            <div class="imgbox">
                <div class="imglist" id='imglist'>
                    <ul>
                        <li class='current'><a href="#"><img src="img/jhk-1555499589691.jpg" alt=""></a></li>
                        <li><a href="#"><img src="img/2.jpg" alt=""></a></li>
                        <li><a href="#"><img src="img/3.jpg" alt=""></a></li>
                        <li><a href="#"><img src="img/4.jpg" alt=""></a></li>
                        <li><a href="#"><img src="img/5.jpg" alt=""></a></li>
                    </ul>
                </div>
                <div class="circle" id='circle'>
                    <ul>
                        <li class='current'></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>

            </div>
        </div>
        <div class="imgzi">This is a great pet web</div>
        <div class="imgzi2">
            Know more
            <span class="iconfont icon-changjiantou"></span>
        </div>
        <div class="btn">
            <span class="leftbtn" id='left'><img src="img/6.png"/></span>
            <span class="rightbtn" id='right'><img src="img/7.png"/></span>
        </div>
        <div class="one">
            <div class="xinwendemo" style="float: left;margin-left: 5%">
                <h2>宠物新闻</h2>
                <div class="xinwen">
                    <ul>
                        <li><em>1</em><a href="https://www.ixiupet.com/kuaibao/19663.html" title="恶性竞争、新零售，资本时代宠物店如何生存" target="_blank">恶性竞争、新零售，资本时代宠物店如何生存</a></li>
                        <li><em>2</em><a href="https://www.ixiupet.com/zixun/xinwen/19806.html" title="宠物行业未来新的希望从这里开始" target="_blank">宠物行业未来新的希望从这里开始</a></li>
                        <li><em>3</em><a href="https://www.ixiupet.com/maomi/mmxl/19630.html" title="猫咪乱拉怎么办？猫砂及猫砂盆（篇）" target="_blank">猫咪乱拉怎么办？猫砂及猫砂盆（篇）</a></li>
                        <li><em>4</em><a href="https://www.ixiupet.com/zixun/xinwen/19399.html" title="【曝光】泰迪起身老太受伤事件经过 狗主赔偿2" target="_blank">【曝光】泰迪起身老太受伤事件经过 狗主赔偿2</a></li>
                        <li><em>5</em><a href="https://www.ixiupet.com/zixun/xinwen/18817.html" title="2135亿给宠物诊疗行业的提示" target="_blank">2135亿给宠物诊疗行业的提示</a></li>
                        <li><em>6</em><a href="https://www.ixiupet.com/hangye/dongcha/19172.html" title="宠物护理市场需求旺盛，行业发展前景很大" target="_blank">宠物护理市场需求旺盛，行业发展前景很大</a></li>
                        <li><em>7</em><a href="https://www.ixiupet.com/zixun/xinwen/19173.html" title="第六届北京国际宠物展华北地区新闻发布会顺利" target="_blank">第六届北京国际宠物展华北地区新闻发布会顺利</a></li>
                        <li><em>8</em><a href="https://www.ixiupet.com/zhanhui/19168.html" title="中国（深圳）国际宠物用品展愿与您携手同行、" target="_blank">中国（深圳）国际宠物用品展愿与您携手同行、</a></li>
                        <li><em>9</em><a href="https://www.ixiupet.com/zixun/xinwen/19094.html" title="宠仔圈正式上线公测，一大波奖品抽到手软……" target="_blank">宠仔圈正式上线公测，一大波奖品抽到手软……</a></li>
                        <li><em>1</em><a href="https://www.ixiupet.com/kuaibao/19663.html" title="恶性竞争、新零售，资本时代宠物店如何生存" target="_blank">恶性竞争、新零售，资本时代宠物店如何生存</a></li>
                        <li><em>2</em><a href="https://www.ixiupet.com/zixun/xinwen/19806.html" title="宠物行业未来新的希望从这里开始" target="_blank">宠物行业未来新的希望从这里开始</a></li>
                        <li><em>3</em><a href="https://www.ixiupet.com/maomi/mmxl/19630.html" title="猫咪乱拉怎么办？猫砂及猫砂盆（篇）" target="_blank">猫咪乱拉怎么办？猫砂及猫砂盆（篇）</a></li>
                        <li><em>4</em><a href="https://www.ixiupet.com/zixun/xinwen/19399.html" title="【曝光】泰迪起身老太受伤事件经过 狗主赔偿2" target="_blank">【曝光】泰迪起身老太受伤事件经过 狗主赔偿2</a></li>
                        <li><em>5</em><a href="https://www.ixiupet.com/zixun/xinwen/18817.html" title="2135亿给宠物诊疗行业的提示" target="_blank">2135亿给宠物诊疗行业的提示</a></li>
                        <li><em>6</em><a href="https://www.ixiupet.com/hangye/dongcha/19172.html" title="宠物护理市场需求旺盛，行业发展前景很大" target="_blank">宠物护理市场需求旺盛，行业发展前景很大</a></li>
                        <li><em>7</em><a href="https://www.ixiupet.com/zixun/xinwen/19173.html" title="第六届北京国际宠物展华北地区新闻发布会顺利" target="_blank">第六届北京国际宠物展华北地区新闻发布会顺利</a></li>
                        <li><em>8</em><a href="https://www.ixiupet.com/zhanhui/19168.html" title="中国（深圳）国际宠物用品展愿与您携手同行、" target="_blank">中国（深圳）国际宠物用品展愿与您携手同行、</a></li>
                        <li><em>9</em><a href="https://www.ixiupet.com/zixun/xinwen/19094.html" title="宠仔圈正式上线公测，一大波奖品抽到手软……" target="_blank">宠仔圈正式上线公测，一大波奖品抽到手软……</a></li>
                    </ul>
                </div>


            </div>
            <div class="grid" style="margin-left: 5%">
                <figure class="effect-dexter">
                    <img src="img/1.jpg" alt="img1"/>
                    <figcaption>
                        <h2>狗狗的嗅觉真的能识别癌症?</h2>
                        <p>科学研究表明狗的嗅觉可以识别血液样本中的癌症...</p>
                    </figcaption>
                </figure>
                <figure class="effect-dexter">
                    <img src="img/2.jpg" alt="img2"/>
                    <figcaption>
                        <h2>提倡文明养宠</h2>
                        <p>济南部分地区设立宠物便桶</p>
                    </figcaption>
                </figure>
            </div>
        </div>
        <div class="two">
            <div class="two-one" >
                <div class="two1">
                    <h5>Contact Us</h5>
                    <ul>
                        <li>US Sales: +1.800.633.0738</li>
                        <li><a  href="#">Global Contacts</a></li>
                        <li><a  href="#">Support Directory</a></li>
                        <li><a  href="#">Subscribe to Emails</a></li>
                    </ul>
                </div>
                <div class="two1">
                    <h5>Contact Us</h5>
                    <ul>
                        <li>US Sales: +1.800.633.0738</li>
                        <li><a  href="#">Global Contacts</a></li>
                        <li><a  href="#">Support Directory</a></li>
                        <li><a  href="#">Subscribe to Emails</a></li>
                    </ul>
                </div>
                <div class="two1">
                    <h5>Contact Us</h5>
                    <ul>
                        <li>US Sales: +1.800.633.0738</li>
                        <li><a  href="#">Global Contacts</a></li>
                        <li><a  href="#">Support Directory</a></li>
                        <li><a  href="#">Subscribe to Emails</a></li>
                    </ul>
                </div>
                <div class="two1">
                    <h5>Contact Us</h5>
                    <ul>
                        <li>US Sales: +1.800.633.0738</li>
                        <li><a  href="#">Global Contacts</a></li>
                        <li><a  href="#">Support Directory</a></li>
                        <li><a  href="#">Subscribe to Emails</a></li>
                    </ul>
                </div>
            </div>
            <div class="two-two">
                <span class="iconfont icon-facebook"></span>
                <span class="iconfont icon-googleplus-square-f"></span>
                <span class="iconfont icon-twitterlogo"></span>
            </div>
        </div>
        <script>
            // 获取元素
            var imglist= document.getElementById('imglist').getElementsByTagName('li');
            var leftbtn = document.getElementById('left');
            var rightbtn = document.getElementById('right');
            var circlelist = document.getElementById('circle').getElementsByTagName('li');

            // 信号量
            var idx = 0;

            // 左右按钮点击事件
            rightbtn.onclick = function (){
                idx++;
                changePic();
            }

            leftbtn.onclick = function (){
                idx--;
                changePic();
            }

            // 小圆点批量监听
            for(var i = 0; i < circlelist.length; i++){
                // 绑定自定义属性
                circlelist[i].idxxx = i;

                circlelist[i].onmouseover = function (){
                    // 鼠标进入小圆点时要更改idx值
                    idx = this.idxxx;

                    // 调用图片切换函数
                    changePic();
                }
            }


            function changePic(){
                // 对idx验收
                if(idx > imglist.length-1) idx = 0;
                if(idx < 0) idx = imglist.length-1;
                // 根据信号量idx做排他,实现图片的切换
                for(var i = 0; i < imglist.length; i++){
                    imglist[i].className = '';
                }
                imglist[idx].className = 'current';

                // 根据信号量idx做排他,实现小圆点的切换
                for(var i = 0; i < circlelist.length; i++){
                    circlelist[i].className = '';
                }
                circlelist[idx].className = 'current';

            }
            (function($){

                $.fn.myScroll = function(options){
                    //默认配置
                    var defaults = {
                        speed:40,  //滚动速度,值越大速度越慢
                        rowHeight:24 //每行的高度
                    };

                    var opts = $.extend({}, defaults, options),intId = [];

                    function marquee(obj, step){

                        obj.find("ul").animate({
                            marginTop: '-=1'
                        },0,function(){
                            var s = Math.abs(parseInt($(this).css("margin-top")));
                            if(s >= step){
                                $(this).find("li").slice(0, 1).appendTo($(this));
                                $(this).css("margin-top", 0);
                            }
                        });
                    }

                    this.each(function(i){
                        var sh = opts["rowHeight"],speed = opts["speed"],_this = $(this);
                        intId[i] = setInterval(function(){
                            if(_this.find("ul").height()<=_this.height()){
                                clearInterval(intId[i]);
                            }else{
                                marquee(_this, sh);
                            }
                        }, speed);

                        _this.hover(function(){
                            clearInterval(intId[i]);
                        },function(){
                            intId[i] = setInterval(function(){
                                if(_this.find("ul").height()<=_this.height()){
                                    clearInterval(intId[i]);
                                }else{
                                    marquee(_this, sh);
                                }
                            }, speed);
                        });

                    });

                }

            })(jQuery);

            $(function(){

                $("div.xinwen").myScroll({
                    speed:40,
                    rowHeight:24
                });

            });
        </script>
    </div>
</div>
</body>
</html>
