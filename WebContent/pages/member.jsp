<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/24
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>会员中心-回购网 -  手机回收网 | 二手手机交易 | 笔记本回收 | 平板回收</title>
    <meta name="keywords" content="手机回收,二手手机回收,手机回收网,二手手机回收网,二手手机,笔记本回收,平板电脑回收,数码相机回收,旧手机回收,苹果手机回收" />
    <meta name="description" content="回购网是一家专业安全的二手手机回收网，为您提供在线手机回收、平板电脑回收、笔记本回收、数码相机回收、相机镜头回收、无人机回收，专业手机回收价格评估，让你轻松买卖二手手机等闲置数码产品。" />
    <meta name="baidu-site-verification" content="IpuQLFxZiC" />
    <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1" />
    <meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/member.html">
    <meta name="applicable-device" content="pc">
    <link rel="alternate" media="only screen and(max-width: 640px)"     href="http://m.ihuigo.com/member.html" >
    <link href="../favicon.ico" type=image/x-icon rel="Icon"/>
    <link href="../css/new_css/global.css" rel="stylesheet" type="text/css"/>
    <script src="../js/new_js/jquery-1.4.2.js" type="text/javascript"></script>
    <script src="../js/new_js/new_public.js" type="text/javascript"></script>
    <script type="text/javascript">
        function selectcity(url){
            open_div_extends('切换地区',url,'Loading_child');
        }
    </script>

    <link href="../css/new_global.css" rel="stylesheet" type="text/css">

    <script src="../js/new_js/jquery.kinMaxShow-1.1.min.js" type="text/javascript"></script>

    <script src="../js/new_js/lrtk.js" type="text/javascript"></script>

    <script src="../js/new_js/menu.js" type="text/javascript"></script>

    <script src="../js/new_js/index.js" type="text/javascript"></script>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../css/alert_zhe.css" />
<script type="text/javascript" src="../js/alert_zhe.js"></script>
<!--查询结果-->
<div class="search_list">
    <div class="page">
        <div class="current"><a href="index/1">首页</a><span>></span><a href="saveording">会员中心</a></div>
        <!--会员中心-->
        <div class="member">
            <link href="../css/new_css/member.css" rel="stylesheet" type="text/css"/>
            <!--会员中心列表-->
            <div class="member_l">
                <dl class="member_l_list">
                    <dd class="item_on" id="zh"><a><b class="item1">&nbsp;</b><em>帐户中心</em></a></dd>
                    <dd  id="hg"><a><b class="item2">&nbsp;</b><em>回购订单</em><!--<span>1</span>--></a></dd>
               <!--      <dd  ><a href="personal/buy_order.html"><b class="item6">&nbsp;</b><em>购买订单</em></a></dd>
                    <dd   ><a href="personal/huan_order.html"><b class="item7">&nbsp;</b><em>换新订单</em><span style="display: none;">2</span></a></dd>
                     --> 
                 <!--     <dd  ><a href="spike_order/spike_buy_order.html"><b class="item8">&nbsp;</b><em>活动订单</em></a></dd> -->
                  <!--  <dd  ><a href="personal/vr_order.html"><b class="item9">&nbsp;</b><em>VR订单</em></a></dd> --> 
                   <!--   <dd ><a href="member/juan.html"><b  class="item3">&nbsp;</b><em>我的优惠券</em></a></dd>-->
                   <!--  <dd ><a href="member/address.html"><b  class="item4">&nbsp;</b><em>地址管理</em></a></dd> -->
                  <!--    <dd ><a href="member/message.html"><b  class="item5">&nbsp;</b><em>消息中心</em><!--<span>2</span>--></a></dd> 
                </dl>
            </div>
            <!--会员中心列表-->
            <div class="member_r">
                <!--我的账户-->
                <div class="account_main" id="wdzh">
                    <div class="account">
                        <div class="account_title"><span>我的帐户</span></div>
                        <!--可用资金-->
                        <div class="funds">
                            <div class="funds_l">可用金额<span>${price}</span>元<em></em></div>
                            <ul class="funds_r">
                                <li class="funds_color1"><a target="_blank" href="personal/withdrawal.html">提现</a></li>
                                <li class="funds_color2"><a target="_blank" href="personal/top_up.html">充值</a></li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                        <!--可用资金-->
                        <!--资金-->
                        <div class="funds" >
                            <div class="funds_l">冻结金额<span>${price}</span>元<em>( 官方回购临时冻结金额 )</em></div>
                            <ul class="funds_r">

                            </ul>
                            <div class="clear"></div>
                        </div>
                        <!--资金-->
                        <!--资金-->
                       <!-- <div class="funds">
                            <div class="funds_l">冻结金额<span>0.00</span>元<em>（二手优品，以旧换新，提现）</em></div>
                            <ul class="funds_r">
                                <li class="funds_color1">
                                    <a target="_blank" href="personal/top_up/history.html">交易记录</a>
                                </li>

                            </ul>
                            <div class="clear"></div>
                        </div>
                       
                        <!--资金-->
                        <div class="clear"></div>
                        <!--银行卡-->
                        <script type="text/javascript">
                            $(document).ready(function(){
                                $('.add_card .card_box_name').mousemove(function(){
                                    $(this).find('.card_box_main').addClass('card_box_color');
                                    $(this).find('.card_box_add').show();
                                });
                                $('.add_card .card_box_name').mouseleave(function(){
                                    $(this).find('.card_box_main').removeClass('card_box_color');
                                    $(this).find('.card_box_add').hide();
                                });
                            });
                        </script>
                        <div class="add_card">
                            <div class="add_card_title"><span>银行卡<a href="javascript:void(0)"> 0 </a>张</span><em>( 暂不支持信用卡 )</em></div>
                            <div class="add_card_main" id="member_bank_div">

                                <div class="J_add_card" id="bank_add_div"><a href="javascript:funcbank('../add.jsp','add')"><i class="iconfont"></i>添加银行卡</a></div>

                                <div class="clear"></div>
                            </div>
                        </div>
                        <!--银行卡-->

                        <!--支付宝-->
                        <div class="zhifubao"><span>支付宝信息</span>
                            <a href="javascript:void(0)">
                                <em id="em_alipay_id">
                                     ${aplay}
                                </em></a><!-- <a href="javascript:funcalipay('')" class="xiugai">修改</a> --></div>
                        <!--支付宝-->
                        <!--支付密码-->
                       <!--  <div  class="zhifubao"><span>支付密码设置</span>
                            <a href="javascript:funcpaypassword('初始化支付密码','https://accounts.alipay.com/console/queryStrategy.htm?site=1&page_type=fullpage&sp=1-resetPaymentPwd-fullpage&scene_code=resetPaymentPwd')" class="xiugai">设置</a></div> -->
                        <!--支付密码-->
                    </div>
                    <!--邮箱、手机验证-->
                    <ul  class="account_status">
                        <%-- <li class="item1">
                            <div class="account_status_det">
                                <h4 class="tit">邮箱验证</h4>
                                <p><span>${user.mail}</span></p>
                                <p class="descript">
                                    <i class="descript_icon2"></i><span>未验证</span><a href="javascript:funcvaliemail('/member/valiemail.html')">申请验证</a>
                                </p>
                            </div>
                        </li>
                        <li class="item2">
                            <div class="account_status_det" id="mobile_vali_status">
                                <h4 class="tit">手机绑定</h4>
                                <p><span>${user.phone}</span><a href="javascript:funcmodmobile('/member/modmobile.html')" >修改</a></p>
                                <p class="descript">
                                    <i class="descript_icon2"></i><span>未绑定</span>
                                    <a href="javascript:funcvalimobile('/member/valimobile.html')">申请绑定</a>
                                </p>
                            </div>
                        </li> --%>
                        <li  class="item3" style="border:none;">
                            <div class="account_status_det">
                                <h4 class="tit">密码安全</h4>
                                <div class="speed">
                                    <span><img src="../images/speed_icon1.gif" /></span>
                                    <div class="clear"></div>
                                </div>
                                <p class="descript">
                                    <span class="descript_color">低</span>
                                    <a href="javascript:funcmodpassword('../setpassword.jsp')">更改密码</a> </p>
                            </div>
                        </li>
                        <div class="clear"></div>
                    </ul>
                    <!--邮箱、手机验证-->
                    <!--回收时间-->
                    <div class="time_l">
                        <p><span><i>￥</i>0.00</span></p>
                        <p>回收旧机收入</p>
                    </div>
                    <div class="time_c"><span>累计</span></div>
                    <div class="time_r">
                        <p><span>1</span></p>
                        <p>您已加入回购网</p>
                    </div>
                    <div class="clear"></div>
                </div>
                <!--回收时间-->
                <!--我的账户-->
                  <!--个人信息-->
                <div class="personal">
                    <div class="info_pers">
                        <div class="info_pers_img"><img src="../images/tx.png" /></div>
                        <div class="info_pers_txt">
                            <div class="info_pers_title">
                                <p><em>下午好！</em><span><a title="user">${user.phone}</a></span></p>
                            </div>
                            <div class="star"><span><img src="../images/star1.png" /></span><span><img src="../images/star1.png" /></span><span><img src="../images/star2.png" /></span><span><img src="../images/star2.png" /></span><span><img src="../images/star2.png" /></span></div>
                            <p>回购卫士</p>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div id="hgdd">
                <!-- 回购订单 -->
			                <table class="table table-bordered" border="1" cellspacing="0" cellpadding="0" style="text-align:center ;margin:auto;width:90%">
				<tr>
				  		<th colspan="50" style="font-size:18 ;height:50px;" >我的订单</th>
				  	</tr>
					<tr>
				  		<th style="height:40px;">地址</th>
				  		<th>用户名</th>
				  		<th>价格</th>
				  		<th>描述</th>
				  		<th>联系方式</th>
				  	</tr>
				  	<c:forEach  var="orders" items="${orders}">
				  	<tr>
				  		<td>${orders.address}</td>
				  		<td>${orders.alipayname}</td>
				  		<td>${orders.alpayaccount}</td>
				  		<td style="width:900px">${orders.description}</td>
				  		<td>${orders.phone}</td>
				  	</tr>
				  	</c:forEach>
				</table>
				</div>
                 <!-- 回购订单 -->
                 
              
                <!--个人信息-->
            </div>
            <div class="clear"></div>
        </div>
        <!--会员中心-->
    </div>
</div>
<!--查询结果-->
<link rel="stylesheet" type="text/css" href="../css/alert_zhe.css" />

<script type="text/javascript" src="../js/alert_zhe.js"></script>
<!-- 弹出框start -->
<div id="Loading_child" class="Loading" style="display:none; height:450px;" onDblClick="ttt('Loading_child');">
    <div class="tyd_box">
        <div class="tyd_box_c">
            <div class="tyd_box_title">
                <span id="Loading_child_title"></span><a href="javascript:ttt('Loading_child')"><img src="../images/close1.gif" border="0" /></a>
            </div>
            <div class="tyd_box_content" style="width:612px;overflow:auto; height:360px;">
                <iframe id="Loading_child_iframe_id" name="iframe_id" width="612" height="360"  border="0" frameborder="0"></iframe>
            </div>
        </div>
    </div>
</div>
<script>
	$(function(){
		$("#hgdd").hide();
	})
	$("#hg").click(function(){
		$(".account_main").hide();
		$("#hgdd").show();
	})
	$("#zh").click(function(){
		$("#hgdd").hide();
		$("#wdzh").show();
	})
    function	funcbank(url,func){
        if(func	==	'mod'){
            open_div_extends('修改银行卡',url,'Loading_child');
        }else{
            open_div_extends('添加银行卡',url,'Loading_child');
        }
    }
    function funcalipay(url){
        open_div_extends('支付宝账号修改',url,'Loading_child');
    }

    function funcmodpassword(url){
        open_div_extends('修改密码',url,'Loading_child');
    }
    function funcpaypassword(title,url){
        open_div_extends(title,url,'Loading_child');
    }
    function gologin(){
        url	=	'/member/login.html';
        //alert(url);
        location.href	=	url;
    }

    function funcvaliemail(url){
        open_div_extends('申请邮箱验证',url,'Loading_child');
    }
    function funcvalimobile(url){
        open_div_extends('验证手机',url,'Loading_child');
    }
    function funcmodmobile(url){
        open_div_extends('修改手机',url,'Loading_child');
    }
</script>