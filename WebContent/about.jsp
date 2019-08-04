<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<base href="<%=request.getContextPath()%>/"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>手机回收_二手手机,旧手机,废旧手机回收交易,价格评估_回购网_第1页</title>
    <meta name="keywords" content="手机回收,二手手机回收,旧手机回收,废旧手机回收,二手手机交易,二手手机价格,二手手机估价,手机回收价格"/>
    <meta name="description" content="回购网二手手机回收，为您提供各种品牌的二手手机、旧手机、废旧手机的回收交易、专业检测、价格评估服务，给您一个满意的二手手机回收价格。"/>
    <meta name="baidu-site-verification" content="IpuQLFxZiC"/>
    <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1"/>
    <meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/ershoushouji.html">
    <meta name="applicable-device" content="pc">
    <link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.ihuigo.com/ershoushouji.html">
    <link href="favicon.ico" type=image/x-icon rel="Icon">
    <link href="css/new_css/global.css" rel="stylesheet" type="text/css">
    <script src="js/new_js/jquery-1.4.2.js" type="text/javascript"></script>
    <script src="js/new_js/new_public.js" type="text/javascript"></script>
    <script type="text/javascript">
        function selectcity(url) {
            open_div_extends('切换地区', url, 'Loading_child');
        }
    </script>
    <link href="css/new_global.css" rel="stylesheet" type="text/css">
    <script src="js/new_js/jquery.kinMaxShow-1.1.min.js" type="text/javascript"></script>
    <script src="js/new_js/lrtk.js" type="text/javascript"></script>
    <script src="js/new_js/menu.js" type="text/javascript"></script>
    <script src="js/new_js/index.js" type="text/javascript"></script>
</head>
<body>
<link rel="stylesheet" type="text/css" href="css/alert_zhe.css"/>
<script type="text/javascript" src="js/alert_zhe.js"></script>
<div id="Loading_child" class="Loading" style="display:none; height:480px;" onDblClick="ttt('Loading_child');">
    <div class="tyd_box">
        <div class="tyd_box_c">
            <div class="tyd_box_title">
                <span id="Loading_child_title"></span><a href="javascript:ttt('Loading_child')"><img
                    src="images/close1.gif" border="0"/></a>
            </div>
            <div class="tyd_box_content" style="width:612px;overflow:auto; height:450px;">
                <iframe id="Loading_child_iframe_id" name="iframe_id" width="612" height="450" border="0"
                        frameborder="0"></iframe>
            </div>
        </div>
    </div>
</div>
<div id="mbDIV" style="display:none;"></div><!--头部-->
<div class="shortcut">
    <div class="page">
        <div class="shortcut-left">
            <ul>
                <li class="item-more"><a rel="nofollow" href="javascript:void(0)"><span>&nbsp;</span><em>手机逛回购</em></a>
                    <div class="sub-nav">
                        <div><a href="http://m.ihuigo.com" rel="nofollow" target="_blank"><img
                                src="images/new_images/shortcut_wx.gif" width="145" height="145"/></a></div>
                        <div>扫描进入手机站</div>
                    </div>
                </li>
                <li class="city"><span>当前：
        <span id="selectcity_new">
          <!--<script rel="nofollow" src="ajax/show_city.html" type="text/javascript" language="javascript"></script>-->
        </span>
        <a rel="nofollow" href="javascript:void(0);">[切换城市]</a></span></li>
            </ul>
        </div>
        <div class="shortcut-right">
            <ul id='login_show'>
                      
                <li><a href="" rel="nofollow" ></a>退出登录</li>
                            欢迎您用户！${requestScope.user.mail}
                <!--                <li class="item-daohang"><a class="item-daohang-nav" href="https://map.baidu.com/@12721547.000000002,3541692,13.51z" rel="nofollow"
                                                            title="回购网手机回收网站导航">网站导航</a>
                                    <div class="sub-nav2">
                                        <ul>
                                            <li>
                                                <dl>
                                                    <dt>主要频道</dt>
                                                    <dd><a target="_blank" href="goods.html" title="闲置二手手机回收价格评估">旧机回收</a></dd>
                                                    <dd><a target="_blank" href="youpin.html" title="二手优品手机抢购">二手优品</a></dd>
                                                    <dd><a target="_blank" href="huanxin.html" title="二手手机以旧换新活动">旧机换新</a></dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl>
                                                    <dt>企业服务</dt>
                                                    <dd><a href="service/joinus.html" rel="nofollow" target="_blank" title="手机回收企业代理合作">企业代理</a>
                                                    </dd>
                                                    <dd><a href="service/joinus.html" rel="nofollow" target="_blank"
                                                           title="手机回收市场校园代理合作">校园代理</a></dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl>
                                                    <dt>客户服务</dt>
                                                    <dd><a href="FAQ.jsp" rel="nofollow" target="_blank" title="回购网手机回收服务条款">服务条款</a>
                                                    </dd>
                                                    <dd><a href="service/suggestions.html" rel="nofollow" target="_blank"
                                                           title="手机回收问题投诉与建议">投诉建议</a></dd>
                                                    <dd><a onClick="zixunserver('index/zixunserver.html');" href="javascript:void(0)"
                                                           rel="nofollow" target="_blank">在线客服</a></dd>
                                                </dl>
                                            </li>
                                            <div class="clear"></div>
                                        </ul>
                                    </div>
                                </li>-->
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="header">
    <div class="page">
        <h1 class="logo"><a href=""><img src="images/new_images/logo.png" width="171" height="43"
                                         title="二手手机回收交易网"/></a></h1>
        <div class="nav">
            <a title="闲置二手手机回收估价" href="goods.html" class="on">
                <!--<span id="nav_xz">&nbsp;</span>-->闲置回收</a>
            <!--<a title="二手手机以旧换新活动" href="huanxin.html"><span id="nav_hx">&nbsp;</span>旧机换新<img
                    src="images/new_images/new.png"/></a>
             -->
            <a title="二手优品手机抢购" href="youpin.html"><!--<span id="nav_hx">&nbsp;</span>-->二手优品</a><a target="_blank"
                                                                                                    href="kucun.html"
                                                                                                    rel="nofollow"
                                                                                                    style="margin-right:0;"><img
                src="images/new_images/kc.gif" style="vertical-align:middle"></a>
        </div>
    </div>
</div>
<!--头部-->
<div class="about_main1"><img src="images/about_img1.png"></div>
<div class="about_main2">
  <div class="about_txt">
    <h2><img src="images/about_img2.png"></h2>
    <p>回购网,是中国首家提供标准化数码回收服务的互联网平台，网站明码标价，非中介，直接面对用户回收，足不出户即可完成回收交易，让回收更简单！解决每年上亿部手机淘汰闲置的问题，致力于推动数码行业再循环经济和环保事业。</p>
    <p>数码平均更换时间为7-8个月，换新机，闲置手机变现金，回购网帮您；还在街边回收？托中介平台叫卖？回购网更直接，100%成交，轻松处理闲置；标准化回收，避免纠纷。</p>
  </div>
</div>
<div class="about_main3">
  <div class="about_txt3">
    <div class="about_icon"><a href="#001"><img src="images/about_icon1.gif"></a></div>
    <div class="about_tx3">
      <h2><img src="images/about_icon5.png"></h2>
      <p>庞大的评估系统，支持1.7万款型号自助价格评估</p>
    </div>
    <div class="about_img3"> <img src="images/about_img4.png"> </div>
    <div class="clear"></div>
  </div>
</div>
<div class="about_main4">
  <div class="about_txt4">
    <div class="about_icon"><a href="#002" name="001"><img src="images/about_icon2.gif"></a></div>
    <div class="about_img2"> <img src="images/about_img3.png"> </div>
    <div class="about_tx2">
      <h2><img src="images/about_icon4.png"></h2>
      <p>我们承诺到货24小时内确认到账
        最快只需2小时</p>
    </div>
    <div class="clear"></div>
  </div>
</div>
<div class="about_main5">
  <div class="about_txt5">
    <div class="about_icon"><a href="#003" name="002"><img src="images/about_icon3.gif"></a></div>
    <div class="about_tx1">
      <h2><img src="images/about_icon3.png"></h2>
      <p>非中介，直达终端，交易更透明，支持支付宝担保、部分城市支持当面交易，合作快递顺丰速运全程为您保驾护航。</p>
    </div>
    <div class="about_img1"> <img src="images/about_icon2.png"> </div>
    <div class="clear"></div>
  </div>
</div>
<div class="about_main6">
  <div class="about_txt6">
    <p><img src="images/about_icon1.png"></p>
    <p><a href="goods.html"><img src="images/about_btn1.png"></a></p>
  </div>
</div>
<div class="footer">
    <div class="page2">
        <dl class="foot_list1">
            <dt>关于我们</dt>
            <dd><a href="about.jsp" rel="nofollow" target="_blank" title="回购网高价在线手机回收平台">关于回购网</a></dd>
            <dd><a href="about.jsp" target="_blank" rel="nofollow" title="回购网手机回收联系方式">联系我们</a></dd>
            <dd><a href="recruitement.jsp" target="_blank" rel="nofollow" title="回购网长期招聘爱好手机回收行业的小伙伴">人才招聘</a></dd>
        </dl>
        <dl class="foot_list2">
            <dt>服务</dt>
            <dd><a href="FAQ.jsp" target="_blank" rel="nofollow" title="手机回收常见问题与解答">服务条款</a></dd>
            <dd><a href="service/suggestions.html" target="_blank" rel="nofollow" title="感谢您对手机回收相关问题的投诉与建议">投诉建议</a>
            </dd>
            <dd><a href="https://map.baidu.com/@12721547.000000002,3541692,13.51z" target="_blank" title="回购网的网站地图导航">网站地图</a></dd>
        </dl>
        <dl class="foot_list3">
            <dt>客服热线</dt>
            <dd>
                <p><img src="images/new_images/tel.png"/></p>
                <div><a href="https://sj.aihuishou.com/dist/static/copy/propaganda.html?ref=Qguanwang" rel="nofollow" target="_blank" class="rk1" title="手机回收业务大客户登录入口">大客户入口</a><a
                        href="html/hzs.html" rel="nofollow" target="_blank" class="rk2" title="手机回收合作商登录入口">合作商入口</a>
                </div>
            </dd>
        </dl>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".weixin2").hover(function () {
                    $(this).find(".weixin-qrcode2").show();
                }, function () {
                    $(this).find(".weixin-qrcode2").hide();
                });
            });
        </script>
        <dl class="foot_list4">
            <dt>关注我们</dt>
            <dd class="sina"><a href="http://e.weibo.com/ihuigo?topnav=11" rel="nofollow" target="_blank">&nbsp;</a>
            </dd>
            <dd class="weixin"><a rel="nofollow" class="weixin2" target="_blank">
                <div class="weixin-qrcode2"></div>
            </a></dd>
        </dl>
        <div class="clear"></div>
        <div class="statist">
            <p><em>Copyright Reserved 2009-2016 @</em>
                回购网ihuigo.com版权所有
                <span>
                    <a href="#" target="_blank" rel="nofollow">粤ICP备10071783号</a>
                </span>
            </p>
        </div>
        <!--购物车-->
        <div class="mui-mbar">
            <!--黑色栏-->
            <div class="mui-mbar-mask">
                <div class="mui-mbar-gwc">
                    <div class="mui-mbar-wz"><em class="cart_total_items">0</em>
                        <p><img src="images/new_images/cart.png"/></p>
                        <span>回购车</span>
                    </div>
                </div>
                <!--在线客服-->
                <div class="mui-mbar-kefu mui-mbar-all">
                    <div class="mui-mbar-go"><a rel="nofollow" href="javascript:void(0)"
                                                onclick="zixunserver('index/zixunserver.html')"><img
                            src="images/new_images/cart_icon1.png"/></a></div>
                    <div class="mui-zaixian mui-mbar-last"><a href="javascript:void(0)"
                                                              onclick="zixunserver('index/zixunserver.html')">在线客服</a>
                    </div>
                </div>
                <!--在线客服-->
                <!--微信二维码-->
                <div class="mui-mbar-weixin">
                    <div class="mui-mbar-go"><a href="service/suggestions.html" rel="nofollow" target="_blank"><img
                            src="images/new_images/cart_icon2.png"/></a></div>
                    <div class="mui-weima"><a href="service/suggestions.html" rel="nofollow" target="_blank"><img
                            src="images/new_images/weixin.png" width="192" height="192"/></a></div>
                </div>
                <!--微信二维码-->
                <!--投诉建议-->
                <div class="mui-mbar-tousu mui-mbar-all">
                    <div class="mui-mbar-go"><a href="service/suggestions.html" rel="nofollow" target="_blank"><img
                            src="images/new_images/cart_icon3.png"/></a></div>
                    <div class="mui-jianyi mui-mbar-last"><a href="service/suggestions.html" rel="nofollow"
                                                             target="_blank">投诉建议</a></div>
                </div>
                <!--投诉建议-->
                <!--返回顶部-->
            <!--   <div class="mui-mbar-top mui-mbar-all">
                    <div class="mui-mbar-go"><a rel="nofollow" href="javascript:goTop();" class="sidetop"><img
                            src="images/new_images/go_top.png"/></a></div>
                    <div class="mui-fanhui mui-mbar-last">返回顶部</div>
                </div>
                <!--返回顶部-->
            </div>
            <!--黑色栏-->
            <!--购物车-->
            <div class="mui-mbar-cart">
                <div class="mui-list">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table-list">
                        <tr id="cart_tr_title">
                            <th class="table-padding">机型</th>
                            <th width="100">&nbsp;</th>
                            <th width="68">评估价</th>
                        </tr>
                    </table>
                </div>
                <!--结算-->
                <div class="mui-jiesuan">
                    <p>已选<em class="cart_total_items">0</em>台共计<em id="cart_total">￥0</em></p>
                    <input type="button" value="去结算" class="mui-button"
                           onclick="gocart('ajax/check_iflogin.html','order/cart.html')"/>
                </div>
                <!--结算-->
            </div>
            <!--购物车-->
        </div>
        <!--购物车-->
    </div>
</div>
<!--[if lte IE 6]>
<script src="js/new_js/png.js" type="text/javascript"></script>
<script type="text/javascript">
    DD_belatedPNG.fix('img,.banner ul, li, dl, dt, dd, span, em, div, i, samp, a, b, .kuang');
</script>
<![endif]-->
</body>
</html>