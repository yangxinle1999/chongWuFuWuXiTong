<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link href="../../css/shouye.css" rel="stylesheet"/>
    <link rel="stylesheet" href="../../css/iconfont.css">
    <script type="text/javascript" src="../../jQuery/jquery-1.12.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/swiper.min.js"></script>
    <title></title>
    <link type="text/css" rel="stylesheet" href="../../css/style.css">
</head>
<body>
<div class="main">
    <div class="under">
        <section class="pc-banner">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide swiper-slide-center none-effect">
                        <a href="#">
                            <img src="../../images/5.jpg">
                        </a>
                        <div class="layer-mask"></div>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="../../images/jhk-1555499589691.jpg">
                        </a>
                        <div class="layer-mask"></div>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="../../images/7.jpg">
                        </a>
                        <div class="layer-mask"></div>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="../../images/8.jpg">
                        </a>
                        <div class="layer-mask"></div>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <img src="../../images/9.jpg">
                        </a>
                        <div class="layer-mask"></div>
                    </div>
                </div>
                <div class="button">
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>
            </div>
        </section>
        <script type="text/javascript">

            window.onload = function() {
                var swiper = new Swiper('.swiper-container',{
                    autoplay: false,
                    speed: 1000,
                    autoplayDisableOnInteraction: false,
                    loop: true,
                    centeredSlides: true,
                    slidesPerView: 2,
                    pagination: '.swiper-pagination',
                    paginationClickable: true,
                    prevButton: '.swiper-button-prev',
                    nextButton: '.swiper-button-next',
                    onInit: function(swiper) {
                        swiper.slides[2].className = "swiper-slide swiper-slide-active";
                    },
                    breakpoints: {
                        668: {
                            slidesPerView: 1,
                        }
                    }
                });
            }


        </script>

        <div class="imgzi">This is a great pet web</div>
        <div class="imgzi2">
            Know more
            <span class="iconfont icon-changjiantou"></span>
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
                    <img src=${pageContext.request.contextPath}/images/5.jpg alt="img1"/>
                    <figcaption>
                        <h2>狗狗的嗅觉真的能识别癌症?</h2>
                        <p>科学研究表明狗的嗅觉可以识别血液样本中的癌症...</p>
                    </figcaption>
                </figure>
                <figure class="effect-dexter">
                    <img src="${pageContext.request.contextPath}/images/6.jpg" alt="img2"/>
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