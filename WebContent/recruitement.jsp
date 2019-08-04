<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/style-ba571a03.css" type="text/css" rel=stylesheet>
<style type="text/css">#helpnav {
  width: 950px;
}
#help {
  width: 990px;
}
#job_filter {
  margin: 10px auto;
  border-top: dotted 1px #DDD;
}
#job_filter .job_filter_title {
  position: relative;
  z-index: 10;
  height: 40px;
  line-height: 40px;
}
#job_filter .job_filter_title .title_bg {
  position: absolute;
  z-index: 10;
  left: -26px;
  top: 7px;
  height: 27px;
  width: 4px;
}
#job_filter .job_filter_title .filter_title_zh {
  font-family: "\5FAE\8F6F\96C5\9ED1";
  font-size: 18px;
  color: #333;
  margin-right: 13px;
  display: inline-block;
  *display: inline;
  *zoom: 1;
}
#job_filter .job_filter_title .filter_title_en {
  font-size: 14px;
  color: #ccc;
  display: inline-block;
  *display: inline;
  *zoom: 1;
}
#job_filter .job_filter_content ul {
  display: block;
  font-size: 0;
  height: 30px;
  line-height: 30px;
}
#job_filter .job_filter_content ul li {
  color: #666;
  vertical-align: middle;
  line-height: 23px;
  height: 23px;
  font-size: 12px;
  display: inline-block;
  *display: inline;
  *zoom: 1;
}
#job_filter .job_filter_content ul .filter_name {
  color: #333;
}
#job_filter .job_filter_content ul .area_filter,
#job_filter .job_filter_content ul .position_filter,
#job_filter .job_filter_content ul .type_filter {
  padding: 0 11px;
  margin: 0 5px;
  cursor: pointer;
}
#job_filter .job_filter_content ul .selected {
  background: #ffd635;
}
.position_list_title,
.position_brief {
  padding: 0 15px;
  text-align: left;
  height: 40px;
  line-height: 40px;
  font-size: 0;
  color: #333;
}
.position_list_title div,
.position_brief div {
  display: inline-block;
  *display: inline;
  *zoom: 1;
  font-size: 12px;
  line-height: 40px;
}
.position_list_title .title,
.position_brief .title {
  width: 115px;
}
.position_list_title .title_1,
.position_brief .title_1 {
  width: 115px;
  cursor: pointer;
}
.position_list_title .title_1:hover,
.position_brief .title_1:hover {
  color: #ffd635;
}
.position_list_title .title_2,
.position_brief .title_2 {
  width: 80px;
}
.position_list_title .title_3,
.position_brief .title_3 {
  width: 265px;
}
.position_list_title .title_4,
.position_brief .title_4 {
  width: 75px;
}
.position_list_title .title_5,
.position_brief .title_5 {
  width: 75px;
}
.position_list_title .title_6,
.position_brief .title_6 {
  width: 70px;
  text-align: right;
  cursor: pointer;
}
.position_list_title .title_6:hover,
.position_brief .title_6:hover {
  color: #ffd635;
}
.position_list_title {
  background: #f7f7f7;
  margin-top: 20px;
}
#position_list .position_item {
  display: none;
}
#position_list .position_item.show {
  display: block;
}
#position_list .position_brief .title_1 {
  font-weight: bold;
}
#position_list .position_detail {
  display: none;
  padding: 0 15px;
  background: #F9F8F8;
}
#position_list .position_detail.show {
  display: block;
}
#position_list .position_detail dl {
  padding: 10px 0;
  display: block;
}
#position_list .position_detail dl dd,
#position_list .position_detail dl dt {
  display: block;
  line-height: 24px;
}
#recruit_container {
  background-color: #FFF;
}
#recruit_container .recruit_bg1 {
  width: 206px;
  height: 91px;
  background: url('//sr.aihuishou.com/activity/pc/images/help/recruit/sofa.jpg') no-repeat 0 0;
  float: left;
  margin: 25px 100px 0 0;
}
#recruit_container .recruit_bg2 {
  width: 238px;
  height: 89px;
  background: url('//sr.aihuishou.com/activity/pc/images/help/recruit/buidling.jpg') no-repeat 0 0;
  margin-left: 420px;
}
#recruit_container .recruit_icon1 {
  width: 22px;
  height: 9px;
  background: url(data:image/gif;base64,R0lGODlhFgAJAJEDAP/wAP////+EAP///yH/C05FVFNDQVBFMi4wAwEAAAAh+QQFDwADACwAAAAAFgAJAAACJpyOqWrrfwKSoAJx8clRCppkYiKVWLWl2tSt6shGJ3rW0M3g0FAAACH5BAUPAAMALAIAAgAKAAUAAAIOxG6hATZ5nkxKPogiVQUAIfkEBQ8AAwAsCAACAAwABQAAAhGEMTG5gcuiM62mZ9U9TQVVAAA7) no-repeat 0 0;
  display: inline-block;
  *display: inline;
  *zoom: 1;
  vertical-align: middle;
  position: relative;
  top: -2px;
  left: 2px;
}
#recruit_container .text {
  border-top: dotted 1px #DDD;
  line-height: 18px;
  padding: 15px 0;
}
#recruit_container .text span {
  color: #4CACD1;
}
</style>
</head>
<body>
<div class="main_section"><div id="recruit_container"><div class="zhaopin-banner-wrap clearfix"><div class="recruit_bg1"></div><a class="zhaopin-banner no_hover" href="" title="爱回收2018校园招聘" target="_blank"><img src="//sr.aihuishou.com/activity/pc/images/help/recruit/bannernew.png" alt="爱回收2018校园招聘"></a></div><div id="job_filter"><div class="job_filter_title"><div class="title_bg"></div><div class="filter_title_zh">岗位列表</div><div class="filter_title_en">Job List</div></div><div class="job_filter_content"><ul id="type_fliter_list"><li class="filter_name">职位性质：</li><li class="type_filter selected" data-tid="tid_0">全部</li><li class="type_filter" data-tid="tid_1">全职</li><li class="type_filter" data-tid="tid_2">实习生</li></ul><ul id="area_filter_list"><li class="filter_name">工作地点：</li><li class="area_filter selected" data-aid="aid_0">全部</li><li class="area_filter" data-aid="aid_1">上海</li><li class="area_filter" data-aid="aid_31">北京</li></ul><ul id="position_filter_list"><li class="filter_name">岗位类别：</li><li class="position_filter selected" data-pid="pid_0">全部</li><li class="position_filter" data-pid="pid_1">技术类</li><li class="position_filter" data-pid="pid_2">市场类</li><li class="position_filter" data-pid="pid_3">职能类</li><li class="position_filter" data-pid="pid_4">产品类</li><li class="position_filter" data-pid="pid_5">运营类</li></ul></div></div><div class="position_list_title"><div class="title">岗位名称</div><div class="title_2">岗位类别</div><div class="title_3">工作地点</div><div class="title_4">需求人数</div><div class="title_5">更新时间</div><div class="title_6"></div></div><ul id="position_list"><li class="position_item aid_0 pid_0 aid_31 pid_3 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">门店店员</div><div class="title_2">运营类</div><div class="title_3">北京</div><div class="title_4">若干</div><div class="title_5">2015-11-13</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1. 接待解答顾客咨询，处理电子产品的以旧换新，维护良好的品牌形象；</dd><dd>2. 负责销售记录、盘点、账目核对等工作，按规定完成各项销售统计工作；</dd><dd>3. 负责店铺日常店务工作：产品陈列，报表填写，经营区域卫生清洁；</dd><dd>4. 及时向店长反馈店铺经营中的问题；</dd><dd>5. 完成店长、上级安排的工作。</dd></dl><dl><dt>岗位要求：</dt><dd>1. 30周岁以下，大专及以上学历，可接受应届生；</dd><dd>2. 形象端正，吃苦耐劳，诚实守信，有强烈的责任感，做事认真踏实；</dd><dd>3. 具备良好的沟通，协调及团队合作能力；</dd><dd>4. 对电子产品感兴趣，有电子产品销售经验者优先考虑。</dd></dl><dl><dt>发展方向：</dt><dd>门店或上门专员——店长或上门组长——督导——城市经理——大区经理</dd><dd>门店或上门专员——店长或上门组长——培训讲师——培训经理</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_31 pid_3 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">会计</div><div class="title_2">职能类</div><div class="title_3">北京</div><div class="title_4">若干</div><div class="title_5">2015-11-13</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1. 开展财务预算、审核、监督工作，按照公司及政府有关部门要求及时编制各种财务报表并报送相关部门；</dd><dd>2. 负责员工报销费用的审核、凭证的编制和登帐；</dd><dd>3. 报税及处理税务相关问题；</dd><dd>4. 与总部财务的数据核对，报表，及业务对接；</dd><dd>5. 负责合同审核管理。</dd></dl><dl><dt>岗位要求：</dt><dd>1. 财务、会计专业本科以上学历，持有会计证；</dd><dd>2. 财务相关工作两年以上工作经验；</dd><dd>3. 熟悉会计报表的处理，会计法规和税法，熟练使用金蝶；</dd><dd>4. 良好的学习能力、独立工作能力和财务分析能力；</dd><dd>5. 诚实正直，有良好的职业道德观念和素质，有较强的团队协作意识。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_1 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">技术总监</div><div class="title_2">技术类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-5-20</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、负责网站和移动端技术方向的把控；</dd><dd>2、负责前端和后台产品的开发管理；</dd><dd>3、负责技术团队的项目分工及进度管理；</dd><dd>4、管理开发团队</dd></dl><dl><dt>岗位要求：</dt><dd>1、211/985院校全日制本科及以上学历，计算机相关专业；</dd><dd>2、5年以上互联网开发经验，2年以上技术团队管理经验；</dd><dd>3、良好的计算机基础，熟悉操作系统原理、常见的数据结构和算法；</dd><dd>4、良好的分析问题和解决问题的能力，良好的工作进度管理与把控能力，抗压能力强；</dd><dd>5、具备优秀的业务抽象能力、架构分析能力与设计能力，能积极参与前期设计，审核应用开发的设计方案。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_1 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">高级java工程师</div><div class="title_2">技术类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-7-25</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1. 负责或参与本公司产品主站及各分站软件系统的开发，主要使用技术包括：.NET, Java，jquery,Sql，HTML，Javascript。</dd><dd>2. 针对系统需求设计，根据开发进度和任务分配，完成相应模块软件的设计、开发及编程任务；</dd><dd>3. 能够独立处理和解决所负责的任务, 分析并解决软件开发过程中的问题。</dd></dl><dl><dt>岗位要求：</dt><dd>1. 计算机或相关专业本科以上学历，有专业软件设计和开发经验，并具有多个以上项目5年以上的开发经验；</dd><dd>2. 熟悉Spring，iBatis, MQ, ASP.NET MVC 等多种应用框架；熟悉SOA架构和Web services技术；</dd><dd>3. 熟练应用多种应用服务器：IIS, Tomcat，Jetty等，以及应用服务器的配置和优化；</dd><dd>4. 熟练应用.Net 和 Java集成开发环境，能熟练使用Visual Studio、Eclipse、MAVEN等工具；</dd><dd>5. 熟练掌握面向对象的软件分析、设计方法以及OOA、OOD思想和设计模式；</dd><dd>6. 了解sqlserver、oracle、mysql数据库；</dd><dd>7. 有良好的沟通能力和团队合作意识，思维严谨，工作主动，能承受一定的工作压力。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_1 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">PHP</div><div class="title_2">技术类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-7-25</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1. 负责口袋优品部门的前端开发工作；</dd><dd>2. 与产品经理、设计师、后端工程师紧密工作在一起，进行移动端/桌面端 Web 应用开发。</dd><dd>3. 参与产品需求、设计阶段的工作并从前端的角度提出意见；</dd><dd>4. 以用户为核心的开发工作，从前端的角度充分考虑用户体验和美观度；</dd></dl><dl><dt>岗位要求：</dt><dd>1. 熟悉 HTML / CSS / JS（或精通任一项），并热爱生活</dd><dd>2. 项目中用 ES6、AngularJS、Node，也准备深入 Web Components / Shadow DOM ，Grunt、Bower 都在手边。</dd><dd>3. 熟练在 Mac OS X / Linux 上开发；</dd><dd>4. Github 有前端项目超过 100 star，或给大型项目贡献过代码；</dd><dd>5. 乐于分享；</dd><dd>6. 写技术博客（或微信公众号）2 年以上，或者 50 篇以上；</dd><dd>7. 写过编辑器；做的了设计，搞的了运维，你不仅仅是个前端；</dd><dd>8. 细节控：Pixel Perfect；</dd><dd>9. 自认为对美（程序、设计）有追求</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_4 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">产品经理</div><div class="title_2">产品类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-7-25</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1. 负责公司前端产品的需求实施、管理</dd><dd>2. 梳理后端业务流程，结合产品设计，提升公司整体运营效率。</dd><dd>3. 整理及完善产品文档、业务流程及相关内容</dd><dd>4. 独立完成产品文档编写、页面原型的交互设计</dd><dd>5. 独立负责与技术、运营、项目人员进行沟通，协调资源，完成产品需求的开发，测试，验收、培训</dd><dd>6. 跟进产品在实际运营中的使用情况，根据业务方反馈，对产品持续改进</dd><dd>7. 同时管理多个产品项目的实施</dd></dl><dl><dt>岗位要求：</dt><dd>1．本科及以上学历，4年以上产品设计经验，2年以上项目管理相关工作经验</dd><dd>2．优秀的产品交互设计能力、逻辑能力、沟通能力、组织协调能力、以及产品设计和文档编写能力。           熟练掌握Axure、Visio、MindManager、PPT等工具</dd><dd>3．了解技术基本概念，善于和技术人员沟通</dd><dd>4．了解一线人员工作方式，善于为他们设计产品</dd><dd>5．有创造性思维，用新的方法解决新的问题</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_4 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">交互设计师</div><div class="title_2">产品类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-7-25</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1. 配合产品经理规划产品发展及创新；</dd><dd>2. 配合视觉设计师完成产品视觉设计；</dd><dd>3. 组织或参与用户访谈，配合用研人员进行可用性测试；</dd><dd>4. 参与设计体验、设计流程和交互规范的制定；</dd><dd>5. 分享设计经验，培训团队成员，帮助团队成长；</dd></dl><dl><dt>岗位要求：</dt><dd>1. 2年以上工作经验；</dd><dd>2. 逻辑思维能力强，主动性高，具有良好的沟通与协调能力;</dd><dd>3. 对产品有整体规划和梳理产品信息架构的能力；</dd><dd>4. 具备一定的视觉设计能力；</dd><dd>5. 工业设计、计算机、心理学、平面设计、广告设计等相关专业本科以上学历；</dd><dd>6. 熟悉图像设计软件并熟练使用axure等交互设计软件;</dd><dd>7. 富于创新、思维活跃、拥有分享的精神；</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_3 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">财务会计</div><div class="title_2">职能类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-7-25</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1. 负责公司收入成本费用的归集与正确计算</dd><dd>2. 负责根据每月的成本变动情况，分析影响成本变动主要因素，并提出改进措施</dd><dd>3. 编制相应会计报表</dd><dd>4. 督促有关部门降低消耗，有效使用资源</dd><dd>5. 公司领导交待的其他工作</dd></dl><dl><dt>岗位要求：</dt><dd>1. 本科及以上学历，会计学或相关财务专业</dd><dd>2. 具有1-3年企业会计核算工作经验</dd><dd>3. 熟练使用office办公软件</dd><dd>4. 工作仔细，有责任心</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_3 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">开店实施专员</div><div class="title_2">职能类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-7-25</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1. 店铺选址场地调研；</dd><dd>2. 新店装修进场跟进；</dd><dd>3. 店铺日常维修维护跟进；</dd><dd>4. 硬件供应商管理；</dd><dd>5. 店铺装修、设备定期巡检；</dd></dl><dl><dt>岗位要求：</dt><dd>1. 大专及以上学历，1年以上连锁或服务行业门店选址开发工作经验；</dd><dd>2. 具备较强的商务谈判能力，良好的沟通能力；</dd><dd>3. 能够承受较大的工作压力，熟练使用办公软件；</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_1 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">安卓开发工程师</div><div class="title_2">技术类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-6-23</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、负责Android应用程序开发与维护；</dd><dd>2、完善和优化Android应用的基本功能，应用层各种问题的分析和解决；</dd><dd>3、设计及实现Android应用层的功能和需求；</dd><dd>4、完成对应的模块设计、编码及调试工作</dd></dl><dl><dt>岗位要求：</dt><dd>1、全日制本科及以上学历，计算机相关专业；</dd><dd>2、两年以上实际Android应用开发工作经验，熟练掌握JAVA编程和Eclipse集成开发环境；</dd><dd>3、熟悉Android系统的组件、布局的使用；熟悉Android平台的基本组件，消息机制，内存优化，线程优化；</dd><dd>4、熟悉Socket通讯、HTTP协议、SqlLite、Service、多线程、XML、JSON等；</dd><dd>5、熟悉iOS开发优先考虑 。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_1 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">SEO</div><div class="title_2">技术类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-5-20</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、 负责爱回收网站的SEO实施及优化，依据部门要求及时提出相关优化方案，推动整站SEO规范；</dd><dd>2、 负责评估、分析网站的关键词，提升网站关键词的搜索排名；</dd><dd>3、 负责研究和监控竞争对手和搜索引擎的方式方法，及时提出调整方案；</dd><dd>4、 负责跟进和分析引入的SEO流量及相关关键词的排名成果，提报阶段性数据报告并提出后续优化方案；</dd><dd>5、 负责开拓网站的外部链接，提升网站PR值、alexa排名、chinarank排名；</dd><dd>6、 负责对网站内容、构架及代码等进行优化。注重内链外链的建设，分析搜索引擎流量，有效支持公司产品推广</dd><dd>7、 负责通过多种网络方式和渠道宣传推广网站，提升公司网站知名度；</dd><dd>8、 协助配合公司市场部组织策划推广，予以执行。</dd></dl><dl><dt>岗位要求：</dt><dd>1、本科及以上学历，1年以上相关工作经验；</dd><dd>2、精通SEO原理及策略，掌握Google、baidu等搜索引擎的基本排名规律；</dd><dd>3、精通各类搜索引擎的优化，包括站内优化、站外优化及内外部链接优化，并有成功案例者优先；</dd><dd>4、熟悉网站建设的相应技术（对于Web服务器、Apache、域名、Unix等名词不陌生，并了解它们的工作原理，熟悉.NET、PHP等页面语言，精通HTML者为佳）；</dd><dd>5、对新技术有快速的学习能力，能持续关注搜索引擎的发展及最新动向；</dd><dd>6、有较好的团队合作能力，抗压性。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_2 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">公关经理</div><div class="title_2">市场类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-5-20</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、行业内媒体的关系维护，策划相关活动，增加爱回收在互联网行业和投资圈内的品牌认知度；</dd><dd>2、大众媒体的关系维护，配合市场部门的活动策划，提高爱回收的大众品牌认知度；</dd><dd>3、主导策划重点公关活动；</dd><dd>4、其他关系（比如政府）的维护；</dd><dd>5、公关危机解决 </dd></dl><dl><dt>岗位要求：</dt><dd>1、全日制本科及以上学历，新闻传播、市场营销、中文、公关或相关专业毕业，3年以上相关工作经验；</dd><dd>2、出色的策划及提案能力，良好的应变决策及公关处理能力；</dd><dd>3、了解国内各媒体的运作模式，掌握丰富的媒介资源；</dd><dd>4、优秀的人际沟通能力，具备较强的团队管理与组织协调能力，能承受较强的工作压力；</dd><dd>5、良好的气质、敏捷的思维，优秀的沟通能力。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_3 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">平台运营主管/经理</div><div class="title_2">职能类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-5-20</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、负责商家后台交易平台搭建及日常运营管理；</dd><dd>2、建立商家后台管理体系，约束与管理商家；</dd><dd>3、负责运营质检标准的建立与维护；</dd><dd>4、负责安排和协调客服、运营中心、价格体系等部门的相关事宜；</dd><dd>5、负责协调与商家后台的关系。</dd></dl><dl><dt>岗位要求：</dt><dd>1、本科以上学历，3年以上工作经验，2年以上电商平台运营管理经验；</dd><dd>2、熟悉电商商家的KPI规则；</dd><dd>3、较强的沟通协调能力，条理清晰，有合作精神和责任心，并具备出色的团队管理能力。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_3 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">HR经理</div><div class="title_2">职能类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-5-20</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、负责运营中心招聘管理全面工作；制定招聘计划；</dd><dd>2、选择并优化招聘渠道，制定招聘策略及实施计划；</dd><dd>3、负责面试、招聘流程把控、效果统计分析、达成招聘目标；</dd><dd>4、与用人部门随时沟通用人需求并反馈招聘结果；</dd><dd>5、培训协调及薪资核发。</dd></dl><dl><dt>岗位要求：</dt><dd>1、全日制本科及以上学历，5年以上招聘相关工作经验；</dd><dd>2、熟悉各种招聘渠道，有猎头或电商、物流招聘工作经验者优先；</dd><dd>3、较强的沟通表达能力，较强的抗压能力；</dd><dd>4、头脑灵活、思路清晰、有耐心、工作细致、认真、负责。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_3 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">区域经理</div><div class="title_2">职能类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-5-20</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、全面负责区域门店、上门服务团队日常管理和监督工作，确保运营店铺以及服务团队正常、高效、优质运行；</dd><dd>2、负责制订所属区域团队KPI激励政策，实现业绩最大和服务最优；</dd><dd>3、定期巡视考核店铺以及服务区域，指导、培训和支持服务团队改进营运质量，保证顾客服务、库存管理及店铺行政工作的高标准执行，维护店铺运营成本；</dd><dd>4、配合实施公司品牌、市场拓展活动。</dd></dl><dl><dt>岗位要求：</dt><dd>1、有三年以上连锁零售，餐饮企业相同岗位运营管理工作经验（有知名连锁零售企业工作经验者优先）；</dd><dd>2、良好的敬业精神和职业道德操守，工作细致、严谨、精益求精，充满工作热情和责任感；</dd><dd>3、善于人际沟通，协调能力强，有很强的感召力和凝聚力；</dd><dd>4、学习理解能力佳，诚恳敬业，能适应高速快捷的工作节奏；</dd><dd>5、听从公司调配，适应外埠地区工作。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_3 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">地推经理</div><div class="title_2">职能类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-5-20</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、根据公司推广策略，策划制订市场或运营活动方案，并组织和执行，同时通过收集、统计、分析、评估活动效果；</dd><dd>2、负责公司网站在社区、商圈、小区等活动等线下的推广工作，提升公司品牌知名度，实现业务量拉升和用户二次转化率等活动效果；</dd><dd>3、参与社区物业、商场、写字楼等合作（联盟）关系的建立 ，并维护合作伙伴的关系；</dd><dd>4、进行有效的内部各部门合作协调及项目执行控制，活动物料的准备工作以及数据的统计工作等；</dd></dl><dl><dt>岗位要求：</dt><dd>1.本科以上学历；</dd><dd>2.熟悉社区营销，有O2O类企业地面推广或活动执行经验者优先；</dd><dd>3.有较强的市场感知能力，敏锐地把握市场动态的能力和市场方向的能力；</dd><dd>4.能适应短期高频出差需求，掌握不同地域人群习性</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_31 pid_3 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">地推主管</div><div class="title_2">职能类</div><div class="title_3">北京</div><div class="title_4">1</div><div class="title_5">2015-5-20</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1.根据公司推广策略，策划制订市场或运营活动方案，并组织和执行，同时通过收集、统计、分析、评估活动效果；</dd><dd>2.负责公司网站在社区、商圈、小区等活动等线下的推广工作，提升公司品牌知名度，实现业务量拉升和用户二次转化率等活动效果；</dd><dd>3.参与社区物业、商场、写字楼等合作（联盟）关系的建立 ，并维护合作伙伴的关系；</dd><dd>4.进行有效的内部各部门合作协调及项目执行控制，活动物料的准备工作以及数据的统计工作等；</dd></dl><dl><dt>岗位要求：</dt><dd>1.本科以上学历；</dd><dd>2.熟悉社区营销，有O2O类（58、美团、饿了么）企业地面推广或活动执行经验者优先；</dd><dd>3.有较强的市场感知能力，敏锐地把握市场动态的能力和市场方向的能力；</dd><dd>4.能适应短期高频出差需求，掌握不同地域人群习性</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_5 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">华东大区运营经理</div><div class="title_2">运营类</div><div class="title_3">上海</div><div class="title_4">1</div><div class="title_5">2015-1-5</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、  负责公司营运体系经营管理制度、标准、工作流程在所辖大区部门、门店、上门服务团队的落实执行和完善；</dd><dd>2、  领导和激励部门管理团队，建立并完善部门、门店、上门服务团队的绩效支持方案，促进部门的业务发展。</dd><dd>3、  对门店、上门服务团队的经营质量及关键经营指标负责，对经营性费用支出情况进行管控，并实时进行监控、分析、考核。</dd><dd>4、  对新开服务城市进行分析，评估，确定门店和上门服务团队在城市的发展规划方案。</dd><dd>5、  对门店新开、改造项目进行审核、检查、验收及考核；对新开城市上门服务团队服务区域规划，调整；</dd><dd>6、  完善顾客服务体系，维护良好的顾客关系；提高顾客服务满意度和二次回收率；</dd><dd>7、  支持其它业务部门的发展和横向业务关联。</dd></dl><dl><dt>岗位要求：</dt><dd>1、  本科及以上学历；</dd><dd>2、  5年以上连锁零售，餐饮企业相同岗位运营管理工作经验（有知名连锁零售企业工作经验者优先）。</dd><dd>3、  良好的敬业精神和职业道德操守，工作细致、严谨、精益求精，充满工作热情和责任感。</dd><dd>4、  具有出色的执行力和沟通协调能力，具备解决突发事件的能力；</dd><dd>5、  善于人际沟通，协调能力强，有很强的感召力和凝聚力。</dd><dd>6、  听从公司调配，适应外埠地区工作。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_5 tid_0 tid_1 show"><div class="position_brief"><div class="title_1">门店店员</div><div class="title_2">运营类</div><div class="title_3">上海</div><div class="title_4">若干</div><div class="title_5">2014-12-29</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1. 接待解答顾客咨询，处理电子产品的以旧换新，维护良好的品牌形象；</dd><dd>2. 负责销售记录、盘点、账目核对等工作，按规定完成各项销售统计工作；</dd><dd>3. 负责店铺日常店务工作：产品陈列，报表填写，经营区域卫生清洁；</dd><dd>4. 及时向店长反馈店铺经营中的问题；</dd><dd>5. 完成店长、上级安排的工作。</dd></dl><dl><dt>岗位要求：</dt><dd>1. 男女不限，28周岁以下；</dd><dd>2. 中专以上学历，可接受应届生；</dd><dd>3. 形象端正，吃苦耐劳，诚信，做事认真仔细；</dd><dd>4. 具备良好的沟通和协调能力；</dd><dd>5. 对电子产品感兴趣，有电子产品销售经验为佳。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_1 tid_0 tid_2 show"><div class="position_brief"><div class="title_1">后端实习生</div><div class="title_2">技术类</div><div class="title_3">上海</div><div class="title_4">若干</div><div class="title_5">2015-9-30</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、你可以参与到爱回收底层的架构设计、实现与优化；</dd><dd>2、或从需求开始到网站上线，你可以体验完整的网站搭建过程；</dd><dd>3、或通过不断的CodeReview，学习爱回收后台代码，锻炼提升自己的coding能力；</dd><dd>4、在这里你可以运用各种有趣的技术，来解决实际问题，提高自己解决问题的能力。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_1 tid_0 tid_2 show"><div class="position_brief"><div class="title_1">前端实习生</div><div class="title_2">技术类</div><div class="title_3">上海</div><div class="title_4">若干</div><div class="title_5">2015-9-30</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、你可以尝试部门相关产品和项目前端页面开发；</dd><dd>2、学习如何准确地实现设计师所希望达到的效果，并且符合前端规范；</dd><dd>3、与后端的小伙伴紧密配合，锻炼不同角色之间的合作；</dd><dd>4、接触到各种 Web 前端技术（ HTML5/CSS3/Javascript）并学会如何熟练的应用它们。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_1 tid_0 tid_2 show"><div class="position_brief"><div class="title_1">APP实习生</div><div class="title_2">技术类</div><div class="title_3">上海</div><div class="title_4">若干</div><div class="title_5">2015-9-30</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、在iOS或Android平台开发爱回收网手机应用，结合手机和网站的特点，给用户提供最佳的产品体验；</dd><dd>2、锻炼学习Android编程、C/C++/Object C 编程；</dd><dd>3、学习了解iOS/Android平台特性、网络通信、线程管理、用户界面设计</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_1 tid_0 tid_2 show"><div class="position_brief"><div class="title_1">数据仓库实习生</div><div class="title_2">技术类</div><div class="title_3">上海</div><div class="title_4">若干</div><div class="title_5">2015-9-30</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、你可以跟踪互联网领域大数据相关的前沿内容和发展趋势，学习相关的技术知识；</dd><dd>2、从最基本的数据查询工作开始，根据业务需求，提供及时据查询服务，开发定制化的业务报表。同时，根据你对技术与业务的掌握程度，开发任务将会逐渐侧重于数据平台底层技术。</dd></dl><dl><dt>岗位要求：</dt><dd></dd><dd></dd><dd></dd><dd></dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_4 tid_0 tid_2 show"><div class="position_brief"><div class="title_1">设计实习生</div><div class="title_2">产品类</div><div class="title_3">上海</div><div class="title_4">若干</div><div class="title_5">2015-9-30</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、视觉</dd><dd>你可以尝试网站平台的界面设计工作，表现和传达你无限的创意，增加品牌感染力，不断提升产品视觉品质；</dd><dd>学习对市场品牌形象等宣传资料、广告资料相关内容的设计；</dd><dd>2、交互</dd><dd>你可以学习网站或后台系统界面的流程、原型以及UI设计；</dd><dd>学习输出相关产品设计原型和设计规范，以及设计实现后的效果跟踪；</dd><dd>学习了解电商用户的交互习惯；</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_3 tid_0 tid_2 show"><div class="position_brief"><div class="title_1">HR实习生</div><div class="title_2">职能类</div><div class="title_3">上海</div><div class="title_4">若干</div><div class="title_5">2015-9-30</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、招聘网站的维护；</dd><dd>2、根据招聘岗位要求筛选简历，电话预约面试；</dd><dd>3、学习如何面试；</dd><dd>4、上级交代的其他工作。</dd></dl><dl><dt>岗位要求：</dt><dd>1、本科及以上学历，专业不限；</dd><dd>2、实习生，对招聘工作有一定的兴趣；</dd><dd>3、有一定的抗压能力，之前有过人事实习经验者优先</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_5 tid_0 tid_2 show"><div class="position_brief"><div class="title_1">客服实习生</div><div class="title_2">运营</div><div class="title_3">上海</div><div class="title_4">若干</div><div class="title_5">2015-9-30</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、满足客户需求，确保服务质量，负责新订单、售后、客户咨询、客户服务质量保证等业务受理和处理；</dd><dd>2、根据业务发展需要及整体客户需求完成相关服务；</dd><dd>3、收集客户建议，并对部门流程完善提出可行性方案</dd></dl><dl><dt>岗位要求：</dt><dd>1、 本科及以上学历，针对大三，大四，研三，研四，有过呼叫中心工作经验优先考虑；</dd><dd>2、 能适应项目的轮班安排（做二休二）；</dd><dd>3、 普通话标准，表达流利，沟通顺畅，逻辑性强；</dd><dd>4、 工作主动，执行力强，良好的掌控情绪的能力。</dd></dl></div></li><li class="position_item aid_0 pid_0 aid_1 pid_2 tid_0 tid_2 show"><div class="position_brief"><div class="title_1">市场实习生</div><div class="title_2">市场类</div><div class="title_3">上海</div><div class="title_4">若干</div><div class="title_5">2015-9-30</div><div class="title_6">展开</div></div><div class="position_detail"><dl><dt>岗位职责：</dt><dd>1、协助市场部整理日常资料</dd><dd>2、市场活动资料的准备</dd><dd>3、市场数据、整理及分析</dd><dd>4、领导安排的其他工作</dd></dl><dl><dt>岗位要求：</dt><dd>1、大三或大四学生；</dd><dd>2、主动，有责任心，沟通能力强；</dd></dl></div></li></ul><div class="text"><span>联系方式：</span><dl><dt>上海</dt><dt>联系人：admin</dt><dt><!-- react-text: 2290 -->简历投递邮箱：<!-- /react-text --><a href="mailto:jane.jian@aihuishou.com" class="no_hover">jane.jian@aihuishou.com</a></dt></dl><dl><dt>北京</dt><dt>联系人：admin2</dt><dt><!-- react-text: 2296 -->简历投递邮箱：<!-- /react-text --><a href="mailto:lisa.liang@aihuishou.com" class="no_hover">lisa.liang@aihuishou.com</a></dt></dl></div><div class="recruit_bg2"></div></div></div></body>
</html>