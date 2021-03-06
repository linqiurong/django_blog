/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 127.0.0.1:3306
 Source Schema         : django_blog

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 04/03/2020 18:52:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 轮播图', 7, 'add_banner');
INSERT INTO `auth_permission` VALUES (26, 'Can change 轮播图', 7, 'change_banner');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 轮播图', 7, 'delete_banner');
INSERT INTO `auth_permission` VALUES (28, 'Can view 轮播图', 7, 'view_banner');
INSERT INTO `auth_permission` VALUES (29, 'Can add 博客分类', 8, 'add_category');
INSERT INTO `auth_permission` VALUES (30, 'Can change 博客分类', 8, 'change_category');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 博客分类', 8, 'delete_category');
INSERT INTO `auth_permission` VALUES (32, 'Can view 博客分类', 8, 'view_category');
INSERT INTO `auth_permission` VALUES (33, 'Can add 友情链接', 9, 'add_link');
INSERT INTO `auth_permission` VALUES (34, 'Can change 友情链接', 9, 'change_link');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 友情链接', 9, 'delete_link');
INSERT INTO `auth_permission` VALUES (36, 'Can view 友情链接', 9, 'view_link');
INSERT INTO `auth_permission` VALUES (37, 'Can add 文章标签', 10, 'add_tag');
INSERT INTO `auth_permission` VALUES (38, 'Can change 文章标签', 10, 'change_tag');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 文章标签', 10, 'delete_tag');
INSERT INTO `auth_permission` VALUES (40, 'Can view 文章标签', 10, 'view_tag');
INSERT INTO `auth_permission` VALUES (41, 'Can add 推荐位', 11, 'add_tui');
INSERT INTO `auth_permission` VALUES (42, 'Can change 推荐位', 11, 'change_tui');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 推荐位', 11, 'delete_tui');
INSERT INTO `auth_permission` VALUES (44, 'Can view 推荐位', 11, 'view_tui');
INSERT INTO `auth_permission` VALUES (45, 'Can add 文章', 12, 'add_article');
INSERT INTO `auth_permission` VALUES (46, 'Can change 文章', 12, 'change_article');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 文章', 12, 'delete_article');
INSERT INTO `auth_permission` VALUES (48, 'Can view 文章', 12, 'view_article');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (12, 'myblog', 'article');
INSERT INTO `django_content_type` VALUES (7, 'myblog', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'myblog', 'category');
INSERT INTO `django_content_type` VALUES (9, 'myblog', 'link');
INSERT INTO `django_content_type` VALUES (10, 'myblog', 'tag');
INSERT INTO `django_content_type` VALUES (11, 'myblog', 'tui');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-02-21 07:10:33.420494');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-02-21 07:10:33.526373');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-02-21 07:10:33.699382');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-02-21 07:10:33.739876');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-21 07:10:33.749955');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-02-21 07:10:33.800335');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-02-21 07:10:33.822155');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-02-21 07:10:33.835457');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-02-21 07:10:33.845457');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-02-21 07:10:33.870911');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-02-21 07:10:33.874521');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-21 07:10:33.886113');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-02-21 07:10:33.914363');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-21 07:10:33.941204');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-02-21 07:10:33.953489');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-02-21 07:10:33.965981');
INSERT INTO `django_migrations` VALUES (17, 'myblog', '0001_initial', '2020-02-21 07:10:34.080923');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2020-02-21 07:10:34.176496');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for myblog_article
-- ----------------------------
DROP TABLE IF EXISTS `myblog_article`;
CREATE TABLE `myblog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `excerpt` longtext NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `body` longtext NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tui_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myblog_article_category_id_c6cb4ed6_fk_myblog_category_id` (`category_id`),
  KEY `myblog_article_tui_id_665a51e0_fk_myblog_tui_id` (`tui_id`),
  KEY `myblog_article_user_id_7728319b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `myblog_article_category_id_c6cb4ed6_fk_myblog_category_id` FOREIGN KEY (`category_id`) REFERENCES `myblog_category` (`id`),
  CONSTRAINT `myblog_article_tui_id_665a51e0_fk_myblog_tui_id` FOREIGN KEY (`tui_id`) REFERENCES `myblog_tui` (`id`),
  CONSTRAINT `myblog_article_user_id_7728319b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of myblog_article
-- ----------------------------
BEGIN;
INSERT INTO `myblog_article` VALUES (1, 'W3C启动Web支付标准工作，推进在线结算流程', 'W3C 计划制定的标准将支持目前现存及即将问世的诸多支付方式，其中包括借记卡支付、信用卡支付、移动支付系统、代管账户支付、比特币支付以及其他分布式分账类 技术。', 'article_img/2018/10/23/wpress1.jpg', '<p>2015年10月21日，万维网联盟启动Web支付工作组，打造更简便更安全的在线支付体验。</p><p>W3C \r\n计划制定的标准将支持目前现存及即将问世的诸多支付方式，其中包括借记卡支付、信用卡支付、移动支付系统、代管账户支付、比特币支付以及其他分布式分账类\r\n \r\n技术。相关支付API将支持浏览器辅助实现的支付工具注册及选择等功能，并为自动安全支付，特别是移动设备端的自动安全支付建立良好的基础，从而为广大商\r\n 家和用户带来更安全的交易平台以及更多的支付方式选择。</p><p>W3C CEO \r\nJaffe博士评论说，“行业将电子钱包视为一种可以改善支付安全和可用性，并多种营销手段的支付解决方案。然而，用户并没有完全接受这一方案。我们认为\r\n \r\n其中的一个原因是电子钱包市场的分裂性，以及电子钱包提供商使用不兼容的编程接口造成的。W3C即将编写的标准将通过定义标准化的编程接口帮助确保不同支\r\n \r\n付方案的互操作性。所以，当你购买商品的时候，你应该有一个标准的方法来使自己的支付工具和商家可接受的工具相匹配，并确保二者能够与商家的结账流程平滑整合。”</p><p>W3C新启动的Web支付工作组章程（及常见问题解答）由W3C\r\n \r\nWeb支付兴趣组完成，该兴趣组成员来自银行、支付服务提供商、商家、浏览器厂商、硬件厂商以及其他行业相关方。新的Web支付工作组将于2015年10月26日-30日在日本札幌举办的W3C全体技术大会期间举办第一次小组会议。</p><p>更多关于W3C Web支付工作组的信息请见新闻通稿（英文版）（中文版）。</p><pre class=\"brush:bash;toolbar:false\">#&nbsp;友情链接\r\nclass&nbsp;Link(models.Model):\r\n&nbsp;&nbsp;&nbsp;&nbsp;name&nbsp;=&nbsp;models.CharField(&#39;链接名称&#39;,&nbsp;max_length=20)\r\n&nbsp;&nbsp;&nbsp;&nbsp;linkurl&nbsp;=&nbsp;models.URLField(&#39;网址&#39;,max_length=100)\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;def&nbsp;__str__(self):\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;self.name\r\n&nbsp;&nbsp;&nbsp;&nbsp;class&nbsp;Meta:\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;verbose_name&nbsp;=&nbsp;&#39;友情链接&#39;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;verbose_name_plural&nbsp;=&nbsp;&#39;友情链接&#39;</pre><p><br/></p><p><br/></p>', 1, '2018-10-23 07:59:21.225432', '2020-02-23 05:53:39.857305', 1, 1, 1);
INSERT INTO `myblog_article` VALUES (2, '博客列入12家估值飙升互联网创业企业 Quora第一', '美国科技博客Business Insider今天刊文称，Facebook、Zynga和Groupon等创业企业的估值已经大幅上升，而风险投资公司开始将目光瞄准其他一些公司，这导致许多公司的估值近期大幅上升。', 'article_img/2018/10/23/wpress2.jpg', '<p>美国科技博客Business Insider今天刊文称，Facebook、Zynga和Groupon等创业企业的估值已经大幅上升，而风险投资公司开始将目光瞄准其他一些公司，这导致许多公司的估值近期大幅上升。</p><p><strong>Business Insider列出了12家估值飙升的创业企业：</strong></p><p><img class=\"alignnone size-full wp-image-3853\" title=\"quora\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/08/quora.png\" alt=\"\" data-tag=\"bdshare\" width=\"745\" height=\"306\"/></p><p><strong>1.Quora，估值8600万美元</strong></p><p>Quora目前估值仅为8600万美元，但致力于成为一家估值达10亿美元的公司。到目前为止，Quora已经以8600万美元的估值从Benchmark\r\n \r\nCapital和个人投资者手中融资1100万美元。今年早些时候，有传闻称有投资公司愿意以3亿美元的估值向Quora投资，但被Quora以估值过低为由拒绝。Quora的创始人认为，该公司的潜力远高于这一水平。还有消息称Quora曾拒绝了其他公司10亿美元的收购报价。</p><p>Quora是一家由Facebook前员工亚当·德安捷罗(Adam D’Angelo)和查理·切沃(Charlie \r\nCheever)共同创办的问答网站。这个网站最大的优点之一是，任何人都可以向杰出的风险投资家、企业家和其他互联网名人发问，而且通常很快就能得到答复。</p><p><strong>2.Foursquare，估值6亿美元</strong></p><p>Foursquare今年6月完成了一轮总额5000万美元的融资。该公司此前还曾融资2000万美元。有传闻称Foursquare的估值已经达到10亿美元，但实际上可能更接近于6亿美元。</p><p>Foursquare是一家基于用户地理位置信息的手机社交服务网站，这一网站鼓励手机用户同他人分享自己当前所在地理位置等信息。</p><p><strong>3.ZocDoc，估值7亿美元</strong></p><p>ZocDoc本周完成了一轮5000万美元的融资，该公司此轮融资由DST牵头。ZocDoc成立于2007年。</p><p>ZocDoc是一家医疗领域的互联网公司，在ZocDoc网站上，用户能够寻找医生并进行在线预约。</p><p><strong>4.Appnexus，估值8.5亿美元</strong></p><p>广告竞价网络Appnexus去年在C轮融资中获得了5000万美元资金，估值则上升至8.5亿美元。该公司到目前为止已融资6550万美元。</p><p>AppNexus是一家实时竞价广告创业公司，实时竞价广告允许广告主跟踪新Web页面加载时的数据，然后向特定消费者支付广告印象。</p><p><strong>5.Spotify，估值10亿美元</strong></p><p>音乐服务Spotify今年6月以10亿美元的估值融资1亿美元，投资方包括凯鹏华盈、Accel和DST。目前尚没有一家网络音乐公司有很好的盈利能力，Spotify需要找到盈利模式。该公司向唱片公司支付了大量费用，因此如果没有明确的业务模式，那么这一估值只是空中楼阁。</p><p>Spotify是一家音乐流服务提供商，注册用户逾1000万。</p><p><strong>6.Storm8，估值10亿美元</strong></p><p>有报道称，移动游戏公司Storm8将完成一轮3亿美元的融资，投资方包括Accel和Technology Crossover Ventures。如果完成这轮融资，Storm8的估值也将达到10亿美元。</p><p>Storm8由前Facebook工程师Chak Ming Li和Perry Tam于2009年联合创办，以开发令人上瘾的角色扮演游戏而著称，这些游戏运行在iPhone、iPod Touch和Android系统上。</p><p><strong>7.Square，估值10亿美元</strong></p><p>由Twitter创始人杰克·多西(Jack Dorsey)创立的移动支付服务Square估值也达到了10亿美元。今年6月底，凯鹏华盈牵头了该公司一轮总额1亿美元的融资。一些人已经开始猜测，Square的估值将于何时达到20亿美元。</p><p>Square是一家移动支付公司，该公司推出的Square刷卡器(Square Credit Card Reader)已成功入驻苹果零售店，并受到了广大美国用户的喜爱。</p><p><strong>8.Gilt Groupe，估值10亿美元</strong></p><p>今年早些时候，Gilt Groupe融资1.38亿美元。该公司今年的营收预计将达到5亿美元。</p><p>Groupe是一家在线精品销售网站，销售一些顶级设计师的样品与非卖品，打造奢侈品的电子商务平台。</p><p><strong>9.Airbnb，估值10亿美元</strong></p><p>尽管遭遇了一系列负面消息的影响，但Airbnb的表现仍然很好。上月，该公司完成了一轮总额1.12亿美元的融资，估值达到10亿美元。</p><p>AirBnB创办于2008年8月，提供了一个游客与房东的互动交流平台，将旅游与房屋租赁有机结合。</p><p><strong>10.Vente Privee，估值30亿美元</strong></p><p>零售网站Vente Privee目前的估值为30亿美元，但该公司创始人雅克斯-安东尼·格兰琼(Jacques-Antoine \r\nGranjon)希望使估值继续上升。2010年，Vente \r\nPrivee的营收为13亿美元，而今年营收预计将为15亿美元。格兰琼的目标是使该公司营收达到150亿美元，从而成为欧洲的亚马逊。</p><p>Vente Privee是一家在线奢侈品折扣销售网站。</p><p><strong>11.Dropbox，估值50亿至100亿美元</strong></p><p>Dropbox早在2007年就完成了一轮720万美元的融资，有传闻称该公司目前正在进行新一轮的融资。科技博客TechCrunch报道称，Dropbox计划融资2亿至3亿美元。因此，该公司估值将从20亿美元上升至50亿至100亿美元。</p><p>Dropbox是一家在线云存储解决方案提供商。</p><p><strong>12.Rovio，估值2亿美元</strong></p><p>去年，《愤怒的小鸟》开发商Rovio获得了500万美元营收和300万美元利润。今年3月，Rovio完成了新一轮融资，估值达到2亿美元。不过如果《愤怒的小鸟》继续表现良好，Rovio的估值将很快突破10亿美元。</p><p>Rovio是一家位于芬兰的手机游戏开发商，其作品涵盖各种类型以及多种平台，主要作品包括：《愤怒的小鸟(Angry Birds)》、《漆黑惊栗》等。</p><p><br/></p>', 1, '2018-10-23 08:19:27.148280', '2020-03-04 10:31:35.409172', 2, 1, 1);
INSERT INTO `myblog_article` VALUES (3, '手机端阅读类产品的信息架构', '信息架构是产品和用户认知之间的沟通桥梁，是评价一项设计产品的重要标准。本文就以手机端阅读类产品为例谈一点对信息架构的认识和理解。', 'article_img/2018/10/23/wpress3.jpg', '<p>信息架构是产品和用户认知之间的沟通桥梁，是评价一项设计产品的重要标准。本文就以手机端阅读类产品为例谈一点对信息架构的认识和理解。</p><h3><strong>一、什么是信息架构？</strong></h3><p>信息架构是在信息环境中，影响系统组织、导览、及分类标签的组合结构，是信息直观表达的载体。</p><p>信息架构会影响信息的可用性和可寻性。换而言之，信息架构的核心工作是建立恰当的导航，将组织过的、有序化的信息呈现给目标用户以方便获取和管理。</p><h3><strong>二、手机端信息架构的影响因素</strong></h3><p>手机端产品有其自身的特点，比如手机屏幕尺寸的限制、操作方式的局限，以及手机随时随地的便利性等。信息架构的设计必须符合手机端特点，发挥其优势，做到独一无二的设计，而不是简单的进行PC端网页迁移。手机端信息架构的影响因素众多且处于激烈的变化中，但其中最为深刻也是较为稳定的两个因素是用户环境和显示空间。</p><h4><strong>1.复杂的用户环境</strong></h4><p>好的信息架构是围绕产品的用户环境建立起来的，因此有必要简单了解一下手机端阅读类产品的各种用户环境。出于全面的考虑，将用户环境划分为用户群、媒体环境和物理环境三部分进行简单的分析：</p><p><img class=\"alignnone size-full wp-image-3109\" title=\"shouji02\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/02/shouji02.jpeg\" alt=\"\" data-tag=\"bdshare\" width=\"700\" height=\"451\"/></p><ul class=\" list-paddingleft-2\"><li><p>依据某主流市场调研机构的研究，手机端阅读产品的用户群主要为：1.白领和学生；2.都市“草根”；3.时尚高端人群。<strong> </strong></p></li><li><p>访问网络时所用的设备叫做媒体环境，主要为智能手机。平台众多、机型复杂，呈终端碎片化特点。其中具有宽大屏幕的触屏手机最适合手机阅读。</p></li><li><p>用户访问网络所处的位置被称为物理环境，决定着访问信息的方式。手机阅读类产品的物理环境主要为等车、排队等碎片时间，另外还包括一些闲暇休息时间，主要目的是打发时间。</p></li></ul><h4><strong>2.有限的显示空间</strong></h4><p><strong> </strong>相对于PC端，手机屏幕的显示空间无疑成为信息展示的瓶颈。PC端网页可以承载丰富的信息内容并能保持良好的显示效果；而手机端显示空间却显得异常宝贵。请看二者的对比图示：</p><p><img class=\"alignnone size-full wp-image-3110\" title=\"shouji03\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/02/shouji03.jpeg\" alt=\"\" data-tag=\"bdshare\" width=\"700\" height=\"426\"/></p><p><strong> </strong><strong> </strong></p><p>以上提到的用户环境和显示空间是影响手机端阅读类产品信息架构的重要制约因素，决定了其“窄而浅”的基本特点。这几乎属于所有手机端产品信息架构的共性。但是，具体到阅读类产品需要采用哪些相应的信息架构策略呢？</p><h3><strong>三、手机端阅读类产品信息架构策略</strong></h3><p>Donna \r\nSpencer提出用户搜索信息的四种方式。用户访问阅读类产品，正是典型的搜索信息获取信息的过程；而如何引导用户顺利、高效地到达目标信息则是信息架构设计的职责所在。个人以Donna\r\n Spencer的四种搜索信息的方式为维度，对手机端阅读类产品对应的信息架构策略进行了简单归纳。</p><h4>1、<strong>Known-item</strong><strong>已知项目</strong></h4><p>在已知项目搜索中，用户</p><ul class=\" list-paddingleft-2\"><li><p>知道他们想要什么；</p></li><li><p>知道用什么词语描述他们想要的信息；</p></li><li><p>明白从哪里开始。</p></li></ul><p>解决此类需求，最典型的信息架构策略是提供搜索框。用户输入明确的关键词，一次点击就能找到所需信息。这是已知项目搜索最为快捷的导航方式，各大手机阅读类网站几乎都设置有搜索框：</p><p><img class=\"alignnone size-full wp-image-3111\" title=\"shouji04\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/02/shouji04.jpeg\" alt=\"\" data-tag=\"bdshare\" width=\"700\" height=\"191\"/></p><h4><strong>2、Exploratory探索</strong></h4><p>探索性信息搜索中，用户对所需要的信息有所了解，但不知道用什么词语可以将它准确描述出来。并且用户不知道从哪里开始，即使找到了较为符合的内容，也不知道这些内容是否足够。</p><p>这种情景下，用户需要一个学习的过程，从而缩小固有认知和目标信息的差距。因此，信息架构设计必须允许用户通过尝试和摸索获得对网站全局的概括了解。导航（Navigation）是解决这部分需求的典型架构策略。由于手机端信息显示空间的限制，很难承袭PC端网页的tab导航方式。业内较为常用的导航方式有：站内信息板块化提炼、导航多级别化设置、热频链接的提供等等，如下图所示：</p><p><img class=\"alignnone size-full wp-image-3112\" title=\"shouji05\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/02/shouji05.jpeg\" alt=\"\" data-tag=\"bdshare\" width=\"700\" height=\"131\"/></p><h4><strong>3、Don’t know what you need to know无特定目标</strong></h4><p>有时候用户为了打发等车或者旅途中的无聊时间，而毫无目标的来到阅读网站“闲逛”。他们不知道自己需要什么内容，换句话说，读什么并不重要，只是为自己找个事情做。</p><p>解决这部分需求最典型的信息架构策略是提供榜单列表。人们都有同理心，大家好评度最高的电影一般不会坏到哪里去；同样，点击量最高的小说也都比较精彩。所以，毫无目标的情况下，榜单列表是引导用户阅读最好的建议式指南针。这种榜单形式已被各阅读类网站广泛应用。</p><h4><strong>4、Re-finding返回寻找</strong></h4><p>用户可能会返回网站继续上一次的阅读，但要记住上一次读到了第一百三十章还是第一百三十二章确实很难。用手机浏览器添加书签固然可以解决问题，但需要频繁操作，相当疲惫。可以考虑的架构策略是为用户提供最后一次阅读章节的“记忆”链接，减轻用户的操作负担以及记忆负担，让用户充分感受该产品的智能和温馨。</p><h3><strong>四、需要经历的信息架构三境界：</strong></h3><p>要做好手机阅读类产品的信息架构不可能一蹴而就，产品的日臻完善需要一个循序渐进、不断优化的过程。基于对相关产品的研究和个人理解，手机端阅读类产品的信息架构一般需要经历三种境界：</p><h4><strong>第一境界：“斜月沉沉藏海雾，碣石潇湘无限路。”</strong></h4><p>信息架构的组织不明晰、导航不明确、分类不恰当，导致信息的无序化。将用户陷于迷宫之中，搜索变得困难重重。例如用户登录某个阅读网站，刚进入页面的第一屏就被淹没在大面积的广告中，丧失了信息方向感；接下来的内容信息在有限的显示空间中隐藏过深，需要点开层层链接才可以到达正文页面；加上有的标题文气十足，每一步操作都会引起用户思考，如此冗长的操作流程实在是手机网页设计的大忌。</p><h4><strong>第二境界：“两岸猿声啼不住，轻舟已过万重山”</strong></h4><p>信息架构的组织较为明晰、导航简短便捷、内容分类一目了然。用户凭借有序化组织架构的引导，可以快速了解和获取目标信息。这就需要手机端阅读类产品的导航窄而浅，做到宽度和深度的恰如其分、相得益彰。此外，导航标题的语义应当具有较强的排他性，不与其他标题有语义重叠区，也就是语义的典型化。如此，用户的操作流程可以缩短、思考的时间可以减少。</p><h4><strong>第三境界：“近水知鱼性，近山识鸟音。”</strong></h4><p>搜索个性化是未来的发展趋势，如果应用恰当，可以明显提高手机阅读类产品的用户体验。例如自动识别用户兴趣和地点的自我推送功能，更加适合手机端阅读类产品。首先用户的阅读兴趣稳定性非常大；其次在流动的地点和碎片的时间里用户搜索信息的耐心十分有限，需要一个更加便利的信息获取渠道。当用户每次访问网站，都可以收到高匹配度的内容推荐，这份知己的温馨已经可以和老朋友相媲美了：）</p><p><br/></p><p><br/></p>', 1, '2018-10-23 08:22:32.743876', '2020-03-04 10:31:42.504291', 3, 2, 1);
INSERT INTO `myblog_article` VALUES (4, '网站设计-不只是门面漂亮这么简单', '美国科技博客Business Insider今天刊文称，Facebook、Zynga和Groupon等创业企业的估值已经大幅上升，而风险投资公司开始将目光瞄准其他一些公司，这导致许多公司的估值近期大幅上升。', 'article_img/2018/10/23/wpress4.jpg', '<article class=\"article-content\"><p>美国科技博客Business Insider今天刊文称，Facebook、Zynga和Groupon等创业企业的估值已经大幅上升，而风险投资公司开始将目光瞄准其他一些公司，这导致许多公司的估值近期大幅上升。</p><p><strong>Business Insider列出了12家估值飙升的创业企业：</strong></p><p><img class=\"alignnone size-full wp-image-3853\" title=\"quora\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/08/quora.png\" alt=\"\" data-tag=\"bdshare\" width=\"745\" height=\"306\"/></p><p><strong>1.Quora，估值8600万美元</strong></p><p>Quora目前估值仅为8600万美元，但致力于成为一家估值达10亿美元的公司。到目前为止，Quora已经以8600万美元的估值从Benchmark\r\n \r\nCapital和个人投资者手中融资1100万美元。今年早些时候，有传闻称有投资公司愿意以3亿美元的估值向Quora投资，但被Quora以估值过低为由拒绝。Quora的创始人认为，该公司的潜力远高于这一水平。还有消息称Quora曾拒绝了其他公司10亿美元的收购报价。</p><p>Quora是一家由Facebook前员工亚当·德安捷罗(Adam D’Angelo)和查理·切沃(Charlie \r\nCheever)共同创办的问答网站。这个网站最大的优点之一是，任何人都可以向杰出的风险投资家、企业家和其他互联网名人发问，而且通常很快就能得到答复。</p><p><strong>2.Foursquare，估值6亿美元</strong></p><p>Foursquare今年6月完成了一轮总额5000万美元的融资。该公司此前还曾融资2000万美元。有传闻称Foursquare的估值已经达到10亿美元，但实际上可能更接近于6亿美元。</p><p>Foursquare是一家基于用户地理位置信息的手机社交服务网站，这一网站鼓励手机用户同他人分享自己当前所在地理位置等信息。</p><p><strong>3.ZocDoc，估值7亿美元</strong></p><p>ZocDoc本周完成了一轮5000万美元的融资，该公司此轮融资由DST牵头。ZocDoc成立于2007年。</p><p>ZocDoc是一家医疗领域的互联网公司，在ZocDoc网站上，用户能够寻找医生并进行在线预约。</p><p><strong>4.Appnexus，估值8.5亿美元</strong></p><p>广告竞价网络Appnexus去年在C轮融资中获得了5000万美元资金，估值则上升至8.5亿美元。该公司到目前为止已融资6550万美元。</p><p>AppNexus是一家实时竞价广告创业公司，实时竞价广告允许广告主跟踪新Web页面加载时的数据，然后向特定消费者支付广告印象。</p><p><strong>5.Spotify，估值10亿美元</strong></p><p>音乐服务Spotify今年6月以10亿美元的估值融资1亿美元，投资方包括凯鹏华盈、Accel和DST。目前尚没有一家网络音乐公司有很好的盈利能力，Spotify需要找到盈利模式。该公司向唱片公司支付了大量费用，因此如果没有明确的业务模式，那么这一估值只是空中楼阁。</p><p>Spotify是一家音乐流服务提供商，注册用户逾1000万。</p><p><strong>6.Storm8，估值10亿美元</strong></p><p>有报道称，移动游戏公司Storm8将完成一轮3亿美元的融资，投资方包括Accel和Technology Crossover Ventures。如果完成这轮融资，Storm8的估值也将达到10亿美元。</p><p>Storm8由前Facebook工程师Chak Ming Li和Perry Tam于2009年联合创办，以开发令人上瘾的角色扮演游戏而著称，这些游戏运行在iPhone、iPod Touch和Android系统上。</p><p><strong>7.Square，估值10亿美元</strong></p><p>由Twitter创始人杰克·多西(Jack Dorsey)创立的移动支付服务Square估值也达到了10亿美元。今年6月底，凯鹏华盈牵头了该公司一轮总额1亿美元的融资。一些人已经开始猜测，Square的估值将于何时达到20亿美元。</p><p>Square是一家移动支付公司，该公司推出的Square刷卡器(Square Credit Card Reader)已成功入驻苹果零售店，并受到了广大美国用户的喜爱。</p><p><strong>8.Gilt Groupe，估值10亿美元</strong></p><p>今年早些时候，Gilt Groupe融资1.38亿美元。该公司今年的营收预计将达到5亿美元。</p><p>Groupe是一家在线精品销售网站，销售一些顶级设计师的样品与非卖品，打造奢侈品的电子商务平台。</p><p><strong>9.Airbnb，估值10亿美元</strong></p><p>尽管遭遇了一系列负面消息的影响，但Airbnb的表现仍然很好。上月，该公司完成了一轮总额1.12亿美元的融资，估值达到10亿美元。</p><p>AirBnB创办于2008年8月，提供了一个游客与房东的互动交流平台，将旅游与房屋租赁有机结合。</p><p><strong>10.Vente Privee，估值30亿美元</strong></p><p>零售网站Vente Privee目前的估值为30亿美元，但该公司创始人雅克斯-安东尼·格兰琼(Jacques-Antoine \r\nGranjon)希望使估值继续上升。2010年，Vente \r\nPrivee的营收为13亿美元，而今年营收预计将为15亿美元。格兰琼的目标是使该公司营收达到150亿美元，从而成为欧洲的亚马逊。</p><p>Vente Privee是一家在线奢侈品折扣销售网站。</p><p><strong>11.Dropbox，估值50亿至100亿美元</strong></p><p>Dropbox早在2007年就完成了一轮720万美元的融资，有传闻称该公司目前正在进行新一轮的融资。科技博客TechCrunch报道称，Dropbox计划融资2亿至3亿美元。因此，该公司估值将从20亿美元上升至50亿至100亿美元。</p><p>Dropbox是一家在线云存储解决方案提供商。</p><p><strong>12.Rovio，估值2亿美元</strong></p><p>去年，《愤怒的小鸟》开发商Rovio获得了500万美元营收和300万美元利润。今年3月，Rovio完成了新一轮融资，估值达到2亿美元。不过如果《愤怒的小鸟》继续表现良好，Rovio的估值将很快突破10亿美元。</p><p>Rovio是一家位于芬兰的手机游戏开发商，其作品涵盖各种类型以及多种平台，主要作品包括：《愤怒的小鸟(Angry Birds)》、《漆黑惊栗》等。</p><p><br/></p></article><p><br/></p>', 0, '2018-10-23 08:24:09.116563', '2018-10-23 08:31:17.025646', 5, 2, 1);
INSERT INTO `myblog_article` VALUES (5, '谷歌用户体验设计准则', 'Google用户体验团队致力于创建有用的（useful）、快速的（fast）、简单的（simple）、有吸引力的（engaging）、创新的（ innovative）、适合大众的（universal）、有用的（profitable）、漂亮的（beautiful）、值得信赖的（trustworthy）、个性化的（personable）的应用。', 'article_img/2018/10/23/wpress5.jpg', '<article class=\"article-content\"><p><strong>谷歌的愿景:</strong></p><p>Google用户体验团队致力于创建有用的（useful）、快速的（fast）、简单的（simple）、有吸引力的（engaging）、创新的（\r\n \r\ninnovative）、适合大众的（universal）、有用的（profitable）、漂亮的（beautiful）、值得信赖的（trustworthy）、个性化的（personable）的应用。</p><p><strong>Google用户体验的十大准则:</strong></p><h2>1. 将焦点集中在用户的生活，工作，和他们的梦想上。</h2><p>Google\r\n \r\n用户体验小组努力发现用户的真正需求，包括那些他们自己都无法阐明的需求。有了这些信息，Google就可以创建解决现实问题的产品并激发所有人的创造力。Google的目标不仅仅是按部就班的工作，而是改善人们的生活。总之，一个精心设计的Google产品在日常生活中是非常有用的。他并不是靠花哨的视觉效果和技术打动用户的，虽然也有具备这些特性。他不会强迫用户去使用他们不想要的特性，但是他会引导有兴趣的用户自发的去使用他们。他不会入侵别人的生活，但是回想那些想要探索世界信息、工作的更加快速和便捷、分享想法的用户敞开大门。</p><h2>2. 每一毫秒的价值</h2><p>没有什么比用户的时间更加宝贵。Google页面的快速加载得力于精简的代码和精心挑选的图片。为了让用户更加容易的找到想要的内容，Google将最重要的功能和文本放在最显眼的位置。一些不必要的点击、输入、步骤和其他操作都被Google去除了。Google的产品只会请求一次信息并且包含了智能的默认选项。所有任务都是高效的。速度为用户带来便利。如果没有充足的理由，Google\r\n 绝对不会牺牲速度。</p><h2>3. 简单就是力量</h2><p>简单造就了良好设计中的许多元素，包括易用性、速度、视觉效果和可访问性。一个产品从设计之初就应该保持简单。Google不打算创建功能繁复的产品，我们最好的设计只包含那些用户完成目标过程中所必需的功能。即使产品需要大量的特性和复杂的视觉设计，也要看起来简单而强大。在以牺牲简单为代价去追求一个不太重要的功能之前，Google\r\n 会三思而后行。Google希望将产品推向新的发展方向，而不仅仅是增加更多功能。</p><h2>4. 引导新手和吸引专家</h2><p>为多数人设计并不意味着为降低标准设计。最好的\r\n \r\nGoogle设计表面上看起来很简单，但是却包含了强大的功能，可以让需要的用户很容易地访问到。Google的目标是为新用户提供美妙的初始体验，同时也吸引那些经验丰富的用户，他们会让其他人也来使用这个产品。一个精心设计的\r\n \r\nGoogle产品会让新用户很快熟悉，在必要的时候提供帮助，并且保证用户可以通过简单符合直觉的操作使用产品的大多数有价值的功能。逐步披露高级功能会鼓励用户去扩展他们对产品的使用。在适当情况下，Google会适时地提供一些智能功能来吸引那些资深网络用户——那些在多个设备和电脑之间共享数据的人、在线上和线下工作的人、以及需要存储空间的人。</p><h2>5. 敢于创新</h2><p>设计上的一致性是\r\n \r\nGoogle产品获得信任的基石，它令用户舒适并提高他们的工作效率。但是要想把设计从沉闷乏味变得令人愉快就要依靠想象力。Google鼓励那些创新、冒险的设计，只要它们符合用户需求。团队鼓励新的想法并发展它们。不是为了去适应现有的产品功能，Google更着眼于改变整个游戏规则。</p><h2>6. 为全世界设计</h2><p>万维网已经向世界各地的人们开放了互联网上的所有资源。例如，很多用户通过移动设备来使用\r\n \r\nGoogle的产品，而不是坐在桌子前面通过电脑。我们设计出的产品应该在用户随意选择的任何一种媒介上都可以适时调整和使用。在可能的情况下，Google会适时地支持较慢的连接速度和旧版的浏览器，而且\r\n \r\nGoogle会允许用户选择如何浏览信息（屏幕大小，字体大小）和如何输入信息（智能查询分析）。用户体验团队会研究世界上用户体验的根本差异，为每一个用户、每一个设备和每一种文化设计出合适的产品。简单的翻译，或者功能上的“优雅降级”，都不足以满足人们的需要。Google还致力于改善产品的可访问性。Google对简单和具有包容性产品的渴望，以及Google让全世界的信息普遍可访问的使命，都要求产品支持辅助技术，向包括有身体和认知缺陷在内的所有用户提供愉悦的体验。</p><h2>7. 安排今天和明天的业务</h2><p>那些盈利的 \r\nGoogle产品竭力做到以有助于用户的方式赚钱。为了实现这一崇高目标，设计师将和产品团队一起确保商业计划能够和用户的目标无缝集成。他们会确保广告具有相关性、有用并可以明确地识别出是广告。\r\n Google 也会注意保护那些广告客户和其它靠 Google 谋生的人的利益。如果靠某个产品增加收入会减少Google 未来的用户数量，那么 \r\nGoogle绝对不会做这种尝试。如果一个有利可图的设计没有让用户满意，它就会被打回重做。不是每个产品都需要盈利，但是不能有产品对业务不利。</p><h2>8. 愉悦用户的眼睛，但不分散注意力。</h2><p>如果人们看到一个\r\n \r\nGoogle的产品时说“哇，真漂亮！”，用户体验团队就可以欢呼了。一个积极的第一印象会让用户觉得舒服，使他们确信这个产品是可靠和专业的，并且会鼓励用户做出自己的产品。简约美学对于大部分的\r\n \r\nGoogle产品都是适用的，因为一个干净、清爽、加载迅速，而且不会分散用户的注意力的设计一定符合用户需求的。吸引人的图像、颜色和字体需要与速度、可扫描文本和简易导航取得平衡。尽管如此，考虑到用户和文化背景的因素，“简单优雅”并不是对所有产品来说都是最合适的。Google产品的视觉设计会让用户感到满意并且有助于使用。</p><h2>9. 值得信任。</h2><p>好的设计可以深深赢得使用 Google \r\n产品的用户的信任。Google可靠性的建立是从基础就开始的，例如，界面确保高效和专业、动作容易撤销、广告被明确识别、术语的一致性以及令用户惊喜而非惊诧。此外，Google的产品是向全世界开放的，它包含指向竞争对手的链接并且鼓励用户做出贡献，如社区地图或者\r\n iGoogle 小工具。一个更大的挑战是确保Google \r\n对用户控制自己数据的权利表示了尊重。在如何使用信息和信息如何共享给他人（如果有的话）方面，Google是透明的，所以用户可以做出知情的选择。我们的产品在有危险的时候会警告用户，比如不安全的链接，使用户容易受到垃圾邮件骚扰的行为，或者将数据分享在Google\r\n 之外的其它地方而被存储的可能性。Google 越大，遵循“不作恶”的座右铭就越重要。</p><h2>10. 有人情味。</h2><p>Google包括了各种各样的人格特质，而Google的设计也是有人性的。文本和设计元素都是友好、机灵并且智能的，而不是枯燥、古板或傲慢的。Google的文本直接和用户对话，并提供实际、非正式的协助，就像任何一个人回答邻居所提出的问题一样。而且\r\n Google不会让有趣或个性干扰到设计的其它元素，尤其是当人们被生活或找到重要信息的能力严重困扰的时候。</p><p>Google 并不是什么都懂，而且没有设计是完美的。Google的产品希望得到反馈，Google 会根据这些反馈采取行动。当实践这些设计准则的时候，Google 用户体验团队会在每个产品的可用时间里寻找最佳的平衡。然后，迭代、创新和改善会循环往复。</p><p><br/></p></article><p><br/></p>', 0, '2018-10-23 08:25:13.893833', '2018-10-23 08:31:32.887781', 4, 1, 1);
INSERT INTO `myblog_article` VALUES (6, '社交网络应故意设计得“不够完善”', '关于社交网站的设计，互联网上的博文铺天盖地，但是系统性地结集成书的却不多见。前几日在图书馆发现了《社交网站界面设计》一书，这本书分享了作者在Yahoo、AOL以及其他公司工作十几年来的经验，对整个网站的每一个环节都给出了建议，并且制定了数百条原则，致力于给用户最好的交互体验。', 'article_img/2018/10/23/wpress6.jpg', '<p>关于社交网站的设计，互联网上的博文铺天盖地，但是系统性地结集成书的却不多见。前几日在图书馆发现了《社交网站界面设计》一书，这本书分享了作者在Yahoo、AOL以及其他公司工作十几年来的经验，对整个网站的每一个环节都给出了建议，并且制定了数百条原则，致力于给用户最好的交互体验。</p><p><strong>在书中，作者说道：“我们必须得有机会让社交网站的”社民“自己亲自”完善“设计”</strong></p><p>这个观点刚看起来的确不可思议，所有的网站当然都想做到完美，这是毋庸置疑的。</p><p>然而“不完善”的网站恰恰是一个非常巧妙的设计策略。在Web2.0时代，用户已经习惯于贡献内容（中国的基础用户们可能还需要更多的一段时间来培养习惯？）。我们如若让用户可以参与到网站的建设中，用户会更喜欢这个他“投入了心血”的网站，这个“为他做了改变”的网站。这样的做法，一方面更精准地提升了网站的用户体验，另一方面又会使用户觉得这是一个“重视用户”的网站。</p><p style=\"text-align: center;\"><img class=\"size-full wp-image-2972 aligncenter\" title=\"shejiaowangluo\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/02/shejiaowangluo.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"391\" height=\"307\"/></p><p>我们很高兴看到，在近两年的中国互联网，有很多的新兴网络服务已经采用了beta版即推出公测+邀请注册控制用户数量的策略。邀请注册一方面控制了用户的数量与质量，保证了服务器端压力的可控性和Feedback的高质量；另一方面又可作为饥渴营销，在互联网上得到免费的广告传播效应。但是，一旦服务成型，就应该对广大用户开放，像宽途网这种一个新用户给100个邀请码却仍然不开放注册的做法让人很难感受到诚意。</p><p>在实行这一做法的过程中，有三点值得注意：</p><h2><strong>一、改进应遵循少量多次的原则</strong></h2><p>除非是有着根本性的理念改变的大版本更新，否则应尽量避免一次性改变过多的界面元素和功能，这样可能会引起用户对操作界面的不适从而导致用户潜意识对服务的抵制。而适当增加版本的更新的频率会让关注者认为所使用的产品正处在上升期，其开发团队富有执行力。</p><h2><strong>二、必须有所限制，有富有说服力的决策者</strong></h2><p>无限的民主就有可能演变成暴民的狂欢，网站的开发团队必须先构建起一个框架，“这些环境应该是最基本的，稳定的，不变的，可靠的”。在这种情况下，当开发团队跟用户的意见相左时，一个能够服众的决策者就显得尤其重要。这个决策者必须深受用户欢迎，并且真正对产品负责，有着独到的眼光与想法（好吧我就是在说乔布斯这样的，不过这样的决策者是不是根本就不会采纳这篇文章的建议呢？）。</p><h2><strong>三、敢于筛选，专注于主干功能</strong></h2><p>一千个用户心中就有一千种社交网络，也许用户会天马行空地提出各种各样的功能要求。对于开发团队，此时最重要的是能够冷静对用户的建议进行筛选。使自己的服务各种各样的功能看起来富有诱惑力，但是复杂的界面，臃肿的功能以及糟糕的载入速度会让你得不偿失。来自Dropbox的经验是“只考虑加入80%以上用户要求的功能”。</p><p>在以工程师为驱动的产品创造中，会产生许多很棒的点子却一时找不到商业应用或者发展潜力。这是不妨就让用户一起参与到建设中，拓展产品的实用意义。例如豆瓣阿尔法城就是一个不错的例子，直到现在，我们也不知道这个应用的意义，甚至它的创建者阿北也不一定知道未来究竟会是什么样子。就像Twitter的理念从“What\r\n are you doing”到“what‘s happening”的改变一样，许多应用正在产品定位与用户使用习惯的冲突中，做着悄然的改变。</p><p><br/></p>', 0, '2018-10-23 08:26:20.263404', '2018-10-23 08:31:48.555255', 2, 2, 1);
INSERT INTO `myblog_article` VALUES (7, '腾讯出品：制定设计的原则', '在我们开始一个项目的设计的时候，脑子里肯定有无数的构想。是做视觉冲击强烈、夺人眼球的绚丽风格？还是复古的拼贴风？', 'article_img/2018/10/23/wpress7.jpg', '<p>在我们开始一个项目的设计的时候，脑子里肯定有无数的构想。是做视觉冲击强烈、夺人眼球的绚丽风格？还是复古的拼贴风？又或者目前最in的极简主义设计，让重点醒目的跃于画面之上？作为设计师，我们总是日积月累的收集各种各样的好创意，好的设计方案。但怎么能在那么多积累的想法中找到对即将开始的项目最合适它的创意或视觉效果呢？</p><p>除了靠我们作为设计师的本能感觉和一直以来积累的经验以外，还有一个很重要的东西能帮助我们决定，那就是——制定设计的原则。<strong> </strong></p><p><img class=\"aligncenter size-full wp-image-2780\" title=\"tx\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/01/tx.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"649\" height=\"250\"/></p><h2><strong>什么是设计原则？</strong></h2><p><strong>设计的原则应该体现产品或服务的经验或价值的核心。</strong></p><p><strong> </strong>这些原则应该是简要的，一语中的的，令人难忘的。\r\n \r\n在完成项目的整个过程中，我们都应该用心记住这些原则。一个好的设计原则不仅仅要具体，它还应该贯通于整个设计中。在整个设计中的每一条原则都绝对不应该相互矛盾。因此我们不能仅仅想到制定怎样的原则比较方便我们的设计，而是要做更多尝试来让每条原则和产品更加的契合，更好的为产品服务。</p><p><strong>看看谷歌10个用户体验设计原则。（虽然有些老了~还是拿出来作为例子）</strong></p><p>1、以人为本——专注于人们的生活、工作、梦想。Focus on people – their lives, their work, their dreams.<br/>2、把速度精确到毫秒Every millisecond counts.<br/>3、简而有力Simplicity is powerful.<br/>4、&nbsp;雅俗共赏Engage beginners and attract experts.<br/>5、敢于创新Dare to innovate.<br/>6、立足于世界的设计Design for the world.<br/>7 、掌握现在，放眼未来Plan for today’s and tomorrow’s business.<br/>8、创造愉悦而没有干扰的视觉享受Delight the eye without distracting the mind.<br/>9、值得信任Be worthy of people’s trust.<br/>10、&nbsp;添加一些人情味Add a human touch.</p><p><strong>值得注意的是：</strong>设计原则是为了让我们在众多创意中选择更符合我们产品的创意，而不是让我们依据这些原则来创意。</p><p>利用设计原则来对各样的创意进行筛选，这个方法很好用。但是如果过于坚持这些原则、甚至只是围绕着这些原则来设计就不值得推崇了。虽然看起来在原则这个坚实框架下头脑风暴创意是个不错的主意。但是，如果我们那样做了，就很难有颠覆性的创意产生了~所以，在最初的头脑风暴激荡的时候，不需要用这些原则来约束自己。</p><p>这样的创意就没有被具体的原则所约束。大家集思广益，很容易就能把设计丰富、充实起来，并最终完成。</p><h2><strong>设计原则的要点:</strong></h2><p>1、它是建立在设计研究的基础上的<br/>2、它是简短的<br/>3、它是让人记忆深刻的<br/>4、它是贯穿整个设计的<br/>5、它是以”便于使用“为特定目标的<br/>6、它是每个与众不同的想法的集合<br/>7、它是绝不自我矛盾的</p><p>最后，再次分享一些设计原则的例子：</p><h2><strong>谷歌日历的设计原则：</strong></h2><p>1、迅速的、夺人眼球的、使用愉悦的<br/>2、用简单到爆的方式让信息输入日历<br/>3、不止是一个屏幕里德日历（备忘录、提醒等功能）<br/>4、易于分享，你可以在这里方便的看到你的生个生活</p><h2><strong>TiVo</strong><strong>的设计原则（TiVo</strong><strong>凭着“在几分钟之内让小孩和普通人学会操作”而席卷美国市场）</strong></h2><p>1、傻瓜式的娱乐<br/>2、傻瓜式电视<br/>3、有多到要命的视频<br/>4、一切做到流畅而舒适<br/>5、不形式主义和故作高深<br/>6、尊重观众的隐私<br/>7、做到如同电视般强大</p><h2><strong>微软Windows </strong><strong>用户体验设计原则：</strong></h2><p>1、减少概念……增强信心<br/>2、小的好或坏也很重要<br/>3、看起来和用起来都很棒<br/>4、要解决的是让人分心的事，而不是可发现性<br/>5、旋钮和问题前的 UX<br/>6、个性化，而非定制化<br/>7、体验的生命周期<br/>8、为移动人士建造</p><h2><strong>Iphone</strong><strong>的人机界面原则：</strong></h2><p>创建优秀的用户界面Human Interface Principles: Creating a Great User Interface</p><p><strong>1、隐喻Metaphors</strong></p><p>当您设计您的应用程序时，请认识到 iPhone 操作系统存在的隐喻，并且不要对这些隐喻重新定义。</p><p><strong>2、直接操纵Direct Manipulation</strong></p><p>因为其多点触摸界面，iPhone 操作系统的用户享受着高度的直接操纵的愉悦感受。使用手势操作让用户对他们在屏幕上看到的对象，感觉上更具亲和力，和控制感，因为他们不必使用任何中间设备（如鼠标）操纵它们。</p><p><strong>3、即看即点See and Point</strong></p><p>提供选择给用户，而不是要求更多开放性的输入，同时,允许可以让用户集中精力在你的应用程序完成任务，而不是去记忆如何操作它。</p><p><strong>4、反馈Feedback</strong></p><p>用户除了要看到他们操作的结果，还需要得到操作控件时的即时反馈，以及在长时间操作中的状态报告。您的应用程序应提供明显的变化来响应每个用户操作。</p><p><strong>5、用户控制User Control</strong></p><p>让用户来触发并控制行为，而不是您的应用程序。保持行为的简单和直接，使用户能够很容易地理解并记住他们。尽可能使用标准的控件和用户已经熟悉的行为。</p><p><strong>6、美学集成度Aesthetic Integrity</strong></p><p>用户期望一个美丽的界面外观，承诺乐趣和鼓励发现。要确保你设计的用户界面元素在这样的应用程序里是细致的，因此它们才能提供一个内部一致的体验。</p><p><br/></p>', 1, '2018-10-23 08:27:01.077590', '2020-02-24 00:56:00.640413', 1, 2, 1);
INSERT INTO `myblog_article` VALUES (8, '30个别出心裁的WordPress设计', '使用WordPress的顶级网页设计师并不在少数，WordPress社区的创造力也不可小觑。下面我们就来看看其中一些WordPress牛人们是怎样设计自己的网站的吧', 'article_img/2018/10/23/wpress8.jpg', '<p>使用WordPress的顶级网页设计师并不在少数，WordPress社区的创造力也不可小觑。下面我们就来看看其中一些WordPress牛人们是怎样设计自己的网站的吧。</p><p>这些网站里，有些是完全坚持WordPress最初的博客模式的，也有些是把WordPress当做CMS使用。</p><p>1. <a href=\"http://holabeew.com/\">Beew</a></p><p><img class=\"aligncenter size-full wp-image-2307\" title=\"wpress1\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress1.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"300\"/></p><p>2. <a href=\"http://www.dreamsmedia.in/\">Dreams Media</a></p><p><img class=\"aligncenter size-full wp-image-2308\" title=\"wpress2\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress2.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"301\"/></p><p>3. <a href=\"http://www.rudalov.com/\">Alexandre Rudalov</a></p><p><img class=\"aligncenter size-full wp-image-2309\" title=\"wpress3\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress3.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"301\"/></p><p>4. <a href=\"http://www.sheenaoosten.com/\">Sheena Oosten</a></p><p><img class=\"aligncenter size-full wp-image-2310\" title=\"wpress4\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress4.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"301\"/></p><p>5. Jasson Perea</p><p><img class=\"aligncenter size-full wp-image-2311\" title=\"wpress5\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress5.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"301\"/></p><p>6. <a href=\"http://www.attitudedesign.co.uk/\">Attitude Design</a></p><p><img class=\"aligncenter size-full wp-image-2312\" title=\"wpress6\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress6.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"302\"/></p><p>7. <a href=\"http://www.mobiledevelopmentexperts.com/\">Mobile Development Experts</a></p><p><img class=\"aligncenter size-full wp-image-2313\" title=\"wpress7\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress7.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"300\"/></p><p>8. <a href=\"http://www.soccerclassroom.com/\">Soccer Classrom</a></p><p><img class=\"aligncenter size-full wp-image-2314\" title=\"wpress8\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress8.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"300\"/></p><p>9. <a href=\"http://www.marketingprofesional.net/\">Marketing Professional</a></p><p><img class=\"aligncenter size-full wp-image-2315\" title=\"wpress9\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress9.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"302\"/></p><p>10.<a href=\"http://www.calobeedoodles.com/\"> Calobee Doodles</a></p><p><img class=\"aligncenter size-full wp-image-2316\" title=\"wpress10\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress10.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"303\"/></p><p>11. <a href=\"http://outlinez.net/\">Outlinez</a></p><p><img class=\"aligncenter size-full wp-image-2317\" title=\"wpress11\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress11.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"303\"/></p><p>12. <a href=\"http://jenifferdake.net/\">Jeniffer Dake</a></p><p><img class=\"aligncenter size-full wp-image-2318\" title=\"wpress12\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress12.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"303\"/></p><p>13. <a href=\"http://signumworks.com/\">Signum Works</a></p><p><img class=\"aligncenter size-full wp-image-2319\" title=\"wpress13\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress13.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"297\"/></p><p>14. <a href=\"http://creativemug.com/\">Creative Mug</a></p><p><img class=\"aligncenter size-full wp-image-2320\" title=\"wpress14\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress14.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"303\"/></p><p>15. <a href=\"http://www.madebycreature.com/\">Made by Creature</a></p><p><img class=\"aligncenter size-full wp-image-2321\" title=\"wpress15\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress15.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"301\"/></p><p>16. Ink Mutt Interactive</p><p><img class=\"aligncenter size-full wp-image-2322\" title=\"wpress16\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress16.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"301\"/></p><p>17. <a href=\"http://www.cafundoestudio.com.br/blog2010/\">Cafundo Studio</a></p><p><img class=\"aligncenter size-full wp-image-2323\" title=\"wpress17\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress17.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"300\"/></p><p>18. <a href=\"http://www.wawacoffeetopia.com/\">CoffeeTopia</a></p><p><img class=\"aligncenter size-full wp-image-2324\" title=\"wpress18\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress18.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"300\"/></p><p>19. <a href=\"http://jqueryfordesigners.com/\">Jquery for Designers</a></p><p><img class=\"aligncenter size-full wp-image-2325\" title=\"wpress19\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress19.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"301\"/></p><p>20. <a href=\"http://www.ndzynes.com//\">NDzynes</a></p><p><img class=\"aligncenter size-full wp-image-2326\" title=\"wpress20\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress20.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"299\"/></p><p>21. <a href=\"http://www.shlokapics.fr/\">Shloka Pics</a></p><p><img class=\"aligncenter size-full wp-image-2327\" title=\"wpress21\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress21.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"301\"/></p><p>22. <a href=\"http://us.appletonestate.com/agegate.php\">Appleton Estate</a></p><p><img class=\"aligncenter size-full wp-image-2328\" title=\"wpress22\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress22.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"301\"/></p><p>23. <a href=\"http://knoxify.com/\">Knoxify</a></p><p><img class=\"aligncenter size-full wp-image-2329\" title=\"wpress23\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress23.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"300\"/></p><p>24.<a href=\"http://kidkoala.com/\"> Kid Koala</a></p><p><img class=\"aligncenter size-full wp-image-2330\" title=\"wpress24\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress24.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"300\"/></p><p>25. Simon Foster Design</p><p><img class=\"aligncenter size-full wp-image-2331\" title=\"wpress25\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress25.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"300\"/></p><p>26. <a href=\"http://www.divisionparis.com/\">Division</a></p><p><img class=\"aligncenter size-full wp-image-2332\" title=\"wpress26\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress26.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"300\"/></p><p>27. <a href=\"http://www.livingdesign.info/\">Living Design</a></p><p><img class=\"aligncenter size-full wp-image-2333\" title=\"wpress27\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress27.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"300\"/></p><p>28. <a href=\"http://www.joelmyles.com/\">Joel Myles</a></p><p><img class=\"aligncenter size-full wp-image-2334\" title=\"wpress28\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress28.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"300\"/></p><p>29. <a href=\"http://www.rhettcanipe.com/\">RHETTCANIPE</a></p><p><img class=\"aligncenter size-full wp-image-2335\" title=\"wpress29\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress29.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"300\"/></p><p>30. <a href=\"http://nanyate.com/\">Nanyate</a></p><p><img class=\"aligncenter size-full wp-image-2336\" title=\"wpress30\" src=\"http://www.daqianduan.com/wp-content/uploads/2010/09/wpress30.jpg\" alt=\"\" data-tag=\"bdshare\" width=\"600\" height=\"301\"/></p><p><br/></p>', 1, '2018-10-23 08:28:57.071219', '2020-02-24 00:58:29.743860', 5, 1, 1);
INSERT INTO `myblog_article` VALUES (9, '用户体验设计-让你的牙膏盒使用更合理', '这是另一个有趣的牙膏包装设计,很有感觉。消除死角,减少牙膏残留在盒子里,减少了两种包装。这意味着我们能减少浪费和价格，且利于回收。这样很有感觉的用户体验，希望得到一些公司的采纳。', 'article_img/2018/10/23/wpress9.jpg', '<p>这是另一个有趣的牙膏包装设计,很有感觉。消除死角,减少牙膏残留在盒子里,减少了两种包装。</p><p>这意味着我们能减少浪费和价格，且利于回收。这样很有感觉的用户体验，希望得到一些公司的采纳。</p><p><img class=\"alignnone size-full wp-image-3807\" title=\"save_paste\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/07/save_paste.jpg\" alt=\"\" data-tag=\"bdshare\"/></p><p><img class=\"alignnone size-full wp-image-3807\" title=\"save_paste\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/07/save_paste3.jpg\" alt=\"\" data-tag=\"bdshare\"/></p><p><img class=\"alignnone size-full wp-image-3807\" title=\"save_paste\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/07/save_paste4.jpg\" alt=\"\" data-tag=\"bdshare\"/></p><p><img class=\"alignnone size-full wp-image-3807\" title=\"save_paste\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/07/save_paste5.jpg\" alt=\"\" data-tag=\"bdshare\"/></p><p><img class=\"alignnone size-full wp-image-3807\" title=\"save_paste\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/07/save_paste6.jpg\" alt=\"\" data-tag=\"bdshare\"/></p><p><img class=\"alignnone size-full wp-image-3807\" title=\"save_paste\" src=\"http://www.daqianduan.com/wp-content/uploads/2011/07/save_paste7.jpg\" alt=\"\" data-tag=\"bdshare\"/></p><p><br/></p>', 0, '2018-10-23 08:33:27.658866', '2018-10-23 08:33:27.658866', 2, 2, 1);
INSERT INTO `myblog_article` VALUES (10, '简单HTML5打造内涵搜索框', '随着HTML5的深入人心，其越来越多的新功能为更多Coder所用，HTML5新增了不少人性化标签和属性，马上介绍的就是新的表单属性。', 'article_img/2018/10/23/wpress10.jpg', '<p>随着HTML5的深入人心，其越来越多的新功能为更多Coder所用，HTML5新增了不少人性化标签和属性，马上介绍的就是新的表单属性。</p><p><strong>实例图片：</strong></p><p style=\"text-align: center;\"><img class=\"size-full wp-image-4289  aligncenter\" title=\"简单HTML5打造内涵搜索框\" src=\"http://www.daqianduan.com/wp-content/uploads/2012/05/search1.png\" alt=\"\" data-tag=\"bdshare\" width=\"400\" height=\"400\"/></p><p><strong>代码如下：</strong></p><pre style=\"margin: 15px 0; font: 100 12px/18px monaco, andale mono, courier new; padding: 10px 12px; border: #ccc 1px solid; border-left-width: 4px; background-color: #fefefe; box-shadow: 0 0 4px #eee; word-break: break-all; word-wrap: break-word; color: #444;\">&lt;input&nbsp;type=&quot;text&quot;&nbsp;placeholder=&quot;输入&nbsp;回车搜索&quot;&nbsp;autofocus&nbsp;x-webkit-speech&gt;</pre><p>很赞？Yes！</p><p>简短的几个代码就能实现原本多行JS才能实现的完美交互效果，这就是HTML5略窥一点的赞！</p><p><strong>placeholder</strong>是为了设置初始值，并且这个初始值的颜色为灰色，当input的内容变动时，这个值就消失，它的职责就是给人一种亲和力的指示，十分有爱。</p><p><strong>autofocus</strong>，顾名思义：自动聚焦，当进入当前页面时，这个input会自动获取焦点，而你可以在打开页面后直接输入东西进行搜索。当autofocus出现两次以上的时候，浏览器会选择最后一个带有autofocus属性的input聚焦。</p><p><strong>x-webkit-speech</strong>，这个大概不必多解释了，webkit核的浏览器（如Chrome）特有的语音识别工具，给input装上也是再好不过的了，话说Google也给自己的搜索框装上这个工具。</p><p>好了，不扯了，简单的一个小框框，其实有更多需要我们研究的东西。比如这个简单CSS3 让搜索更有爱是我之前写的搜索框有爱体验，简单即是美！</p><p><br/></p>', 0, '2018-10-23 08:34:17.566609', '2018-10-23 08:35:02.994477', 2, 1, 1);
INSERT INTO `myblog_article` VALUES (11, 'Windows node版本管理器–nvm', 'Windows node版本管理器–nvm', 'article_img/2018/10/23/wpress11.jpg', '<p>众所周知，node版本众多，但是由于项目需要或其他原因我们需要切换node版本，这个时候就需要node版本管理器啦。目前比较流行的两个是‘n’和‘nvm’（ps：试了‘n’，未安装成功，查了一下据说不支持window），所以改用nvm了，所以就介绍这个了。</p><p>&nbsp; &nbsp; NVM for Windows请戳–&gt;<a href=\"https://github.com/coreybutler/nvm-windows\">nvm-windows</a>，需要注意的是安装前需要卸载现有的nodej.s和npm安装位置。</p><p><strong>&nbsp; &nbsp; 常用命令：</strong></p><pre class=\"prettyprint\">&nbsp;nvm&nbsp;list&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*列出node.js列表*/\r\n&nbsp;nvm&nbsp;on&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*启用node.js版本管理*/\r\n&nbsp;nvm&nbsp;off&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*禁用node.js版本管理（不会卸载任何东西）*/\r\n&nbsp;nvm&nbsp;use&nbsp;&lt;version&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*切换到使用指定的版本*/\r\n&nbsp;nvm&nbsp;version&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*显示当前正在运行的NVM&nbsp;for&nbsp;Windows版本*/</pre><p>&nbsp; &nbsp; 这里只列举了几个常用命令，更多命令见<a href=\"https://github.com/coreybutler/nvm-windows\">nvm-windows</a>。</p><p><br/></p>', 1, '2018-10-23 08:36:13.777538', '2020-02-23 05:53:46.832042', 2, 1, 1);
INSERT INTO `myblog_article` VALUES (12, '分享一个生成二维码的插件–QRCode.js', '随着移动设备的普及，日常生活中随处可见二维码，大有一码走天下之势。那么前端如何来生成二维码?通过QRCode.js我们可以快速生成二维码啦，一起来看看怎么使用吧。', 'article_img/2018/10/23/wpress11_Bq6lZwQ.jpg', '<p>随着移动设备的普及，日常生活中随处可见二维码，大有一码走天下之势。那么前端如何来生成二维码？</p><p>通过QRCode.js我们可以快速生成二维码啦，一起来看看怎么使用吧。</p><p>1、引入插件</p><pre class=\"prettyprint\">&nbsp;&nbsp;&nbsp;&nbsp;/*html*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;id=&quot;qrcode&quot;&gt;&lt;/div&gt;&nbsp;&nbsp;&nbsp;&nbsp;/*js*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;src=&quot;qrcode.js&quot;&gt;&lt;/script&gt;</pre><p>2、基本用法</p><pre class=\"prettyprint\">&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;qrcode&nbsp;=&nbsp;document.getElementById(&#39;qrcode&#39;)&nbsp;&nbsp;&nbsp;&nbsp;/*直接生成二维码*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;new&nbsp;QRCode(qrcode,&nbsp;&#39;http://www.daqianduan.com&#39;)&nbsp;&nbsp;&nbsp;&nbsp;/*也可以配置二维码的宽高等*/&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;qrcodeObj&nbsp;=&nbsp;new&nbsp;QRCode(&#39;qrcode&#39;,&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;text:&nbsp;&#39;http://www.daqianduan.com&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;width:&nbsp;256,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;height:&nbsp;256,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;colorDark&nbsp;:&nbsp;&#39;#000000&#39;,&nbsp;//前景色\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;colorLight&nbsp;:&nbsp;&#39;#ffffff&#39;&nbsp;&nbsp;//背景色\r\n&nbsp;&nbsp;&nbsp;&nbsp;})</pre><p>3、API</p><ul class=\" list-paddingleft-2\"><li><p>设置二维码内容–makeCode</p></li></ul><pre class=\"prettyprint\">&nbsp;&nbsp;&nbsp;&nbsp;qrcodeObj.makeCode(&#39;http://www.daqianduan.com/?p=6518&amp;preview=true&#39;)</pre><ul class=\" list-paddingleft-2\"><li><p>&nbsp;清除二维码–clear</p></li></ul><pre class=\"prettyprint\">&nbsp;&nbsp;&nbsp;&nbsp;qrcodeObj.clear()</pre><p>&nbsp;</p><p><br/></p>', 6, '2018-10-23 08:37:13.004571', '2020-02-21 09:40:22.513053', 1, 2, 1);
INSERT INTO `myblog_article` VALUES (13, '完美快速解决百度分享不支持HTTPS的问题', '百度分享不支持HTTPS这件事由来已久，我之前向百度分享提交过这个问题，无果！但近期themebetter主题用户咨询的比较多，我们就总结了解决方案。', 'article_img/2018/10/23/wpress12.jpg', '<p>百度分享不支持HTTPS这件事由来已久，我之前向百度分享提交过这个问题，无果！但近期<a href=\"https://themebetter.com\" target=\"_blank\" rel=\"noopener\">themebetter</a>主题用户咨询的比较多，我们就总结了解决方案。</p><p><strong>第一步：下载百度分享必备文件</strong></p><p><a href=\"https://themebetter.com/uploads/2017/09/static.zip\">点此下载static.zip</a>，将解压（解压密码：themebetter）后得到的static文件夹上传到网站根目录（注：域名/static）。</p><p><strong>最后一步：修改百度分享代码</strong></p><p><img src=\"https://themebetter.com/uploads/2017/09/baidushare.jpg\" alt=\"完美快速解决百度分享不支持HTTPS的问题\" data-tag=\"bdshare\"/></p><p>删除百度分享代码中的以下网址</p><pre class=\"prettyprint\">http://bdimg.share.baidu.com</pre><p>至此，你就解决了百度分享不支持HTTPS的问题。</p><p><br/></p>', 2, '2018-10-23 08:38:18.351677', '2020-03-04 10:31:40.614055', 5, 1, 1);
INSERT INTO `myblog_article` VALUES (14, 'JS判断单、多张图片加载完成', '在实际的运用中有这样一种场景，某资源加载完成后再执行某个操作，例如在做导出时，后端通过打开模板页生成PDF，并返回下载地址。这时前后端通常需要约定一个flag，用以标识模板准备就绪，可以生成PDF了。', 'article_img/2018/10/23/wpress18.jpg', '<p>在实际的运用中有这样一种场景，某资源加载完成后再执行某个操作，例如在做导出时，后端通过打开模板页生成PDF，并返回下载地址。这时前后端通常需要约定一个flag，用以标识模板准备就绪，可以生成PDF了。</p><p>试想，如果模板中有图片，此时如何判断图片是否加载完成？</p><p>在此之前来了解一下jquery的ready与window.onload的区别，ready只是dom结构加载完毕，便视为加载完成。(此时图片没有加载完毕)，onload是指dom的生成和资源完全加载（比如flash、图片）出来后才执行。接下来回到正题，先从单张图片说起。</p><p>（1）、单张图片（图片在文档中）</p><pre class=\"prettyprint\">//&nbsp;HTML&lt;img&nbsp;id=&#39;xiu&#39;&nbsp;src=&quot;http://www.daqianduan.com/wp-content/uploads/2014/11/hs-xiu.jpg&quot;&gt;&nbsp;&nbsp;//js\r\n&nbsp;$(document).ready(function(){\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;//jquery\r\n&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;#xiu&#39;).load(function(){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;加载完成&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;});\r\n\r\n&nbsp;&nbsp;&nbsp;//原生&nbsp;&nbsp;onload\r\n&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;xiu&nbsp;=&nbsp;document.getElementById(&#39;xiu&#39;)\r\n&nbsp;&nbsp;&nbsp;&nbsp;xiu.onload&nbsp;=&nbsp;xiu.onreadystatechange&nbsp;=&nbsp;function(){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!this.readyState||this.readyState==&#39;loaded&#39;||this.readyState==&#39;complete&#39;){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;加载完成&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;};})</pre><p>注：<br/>1、IE8及以下版本不支持onload事件，但支持onreadystatechange事件；<br/>2、readyState是onreadystatechange事件的一个状态，值为loaded或complete的时候，表示已经加载完毕。<br/>3、以下内容省略兼容</p><p>（2）、单张图片（图片动态生成）</p><pre class=\"prettyprint\">//js\r\n&nbsp;var&nbsp;xiu&nbsp;=&nbsp;new&nbsp;Image()\r\n&nbsp;xiu.src&nbsp;=&nbsp;&#39;http://www.daqianduan.com/wp-content/uploads/2014/11/hs-xiu.jpg&#39;\r\n&nbsp;xiu.onload&nbsp;=&nbsp;function(){\r\n&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;加载完成&nbsp;\r\n&nbsp;}</pre><p>（3）、单张图片（结合ES6 Promise）</p><pre class=\"prettyprint\">//js\r\n&nbsp;new&nbsp;Promise((resolve,&nbsp;reject)=&gt;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;let&nbsp;xiu&nbsp;=&nbsp;new&nbsp;Image()\r\n&nbsp;&nbsp;&nbsp;&nbsp;xiu.src&nbsp;=&nbsp;&#39;http://www.daqianduan.com/wp-content/uploads/2014/11/hs-xiu.jpg&#39;\r\n&nbsp;&nbsp;&nbsp;&nbsp;xiu.onload&nbsp;=&nbsp;function(){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;加载完成&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;resolve(xiu)\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;}).then((xiu)=&gt;{\r\n&nbsp;//code\r\n&nbsp;})</pre><p>（4）、多张图片</p><pre class=\"prettyprint\">var&nbsp;img&nbsp;=&nbsp;[],&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;flag&nbsp;=&nbsp;0,&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;mulitImg&nbsp;=&nbsp;[\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;http://www.daqianduan.com/wp-content/uploads/2017/03/IMG_0119.jpg&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;http://www.daqianduan.com/wp-content/uploads/2017/01/1.jpg&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;http://www.daqianduan.com/wp-content/uploads/2015/11/jquery.jpg&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;http://www.daqianduan.com/wp-content/uploads/2015/10/maid.jpg&#39;\r\n&nbsp;];\r\n&nbsp;var&nbsp;imgTotal&nbsp;=&nbsp;mulitImg.length;\r\n&nbsp;for(var&nbsp;i&nbsp;=&nbsp;0&nbsp;;&nbsp;i&nbsp;&lt;&nbsp;imgTotal&nbsp;;&nbsp;i++){\r\n&nbsp;&nbsp;&nbsp;&nbsp;img[i]&nbsp;=&nbsp;new&nbsp;Image()\r\n&nbsp;&nbsp;&nbsp;&nbsp;img[i].src&nbsp;=&nbsp;mulitImg[i]\r\n&nbsp;&nbsp;&nbsp;&nbsp;img[i].onload&nbsp;=&nbsp;function(){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//第i张图片加载完成\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;flag++\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(&nbsp;flag&nbsp;==&nbsp;imgTotal&nbsp;){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//全部加载完成\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;}</pre><p>（5）、多张图片（结合ES6 Promise.all()）</p><pre class=\"prettyprint\">&nbsp;&nbsp;let&nbsp;mulitImg&nbsp;=&nbsp;[\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;http://www.daqianduan.com/wp-content/uploads/2017/03/IMG_0119.jpg&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;http://www.daqianduan.com/wp-content/uploads/2017/01/1.jpg&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;http://www.daqianduan.com/wp-content/uploads/2015/11/jquery.jpg&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;http://www.daqianduan.com/wp-content/uploads/2015/10/maid.jpg&#39;\r\n&nbsp;];\r\n&nbsp;let&nbsp;promiseAll&nbsp;=&nbsp;[],&nbsp;img&nbsp;=&nbsp;[],&nbsp;imgTotal&nbsp;=&nbsp;mulitImg.length;\r\n&nbsp;for(let&nbsp;i&nbsp;=&nbsp;0&nbsp;;&nbsp;i&nbsp;&lt;&nbsp;imgTotal&nbsp;;&nbsp;i++){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;promiseAll[i]&nbsp;=&nbsp;new&nbsp;Promise((resolve,&nbsp;reject)=&gt;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;img[i]&nbsp;=&nbsp;new&nbsp;Image()\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;img[i].src&nbsp;=&nbsp;mulitImg[i]\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;img[i].onload&nbsp;=&nbsp;function(){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//第i张加载完成\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;resolve(img[i])\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;})\r\n&nbsp;}\r\n&nbsp;Promise.all(promiseAll).then((img)=&gt;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//全部加载完成\r\n&nbsp;})</pre><p><br/></p>', 1, '2018-10-23 08:39:16.124311', '2020-02-23 05:53:30.323431', 2, 2, 1);
INSERT INTO `myblog_article` VALUES (15, 'git常用命令', '使用git已两三月了，最常用的几个命令倒是很熟悉，用的比较少的命令很是记不清，要多多探索这些命令，首先要有个帐号为所欲为，接下来开始正题', 'article_img/2018/10/23/wpress19.jpg', '<p>使用git已两三月了，最常用的几个命令倒是很熟悉，用的比较少的命令很是记不清，要多多探索这些命令，首先要有个帐号为所欲为，接下来开始正题</p><p>〉生成SSH</p><pre class=\"prettyprint\">&nbsp;$&nbsp;ssh-keygen&nbsp;-t&nbsp;ras&nbsp;-C&nbsp;&quot;email@xxx&quot;</pre><p>将生成的SSH key复制到文本框中即可（title默认为邮箱名）</p><p>〉设置用户名</p><pre class=\"prettyprint\">$&nbsp;git&nbsp;config&nbsp;--global&nbsp;user.name&nbsp;&quot;cc&quot;$&nbsp;git&nbsp;config&nbsp;--global&nbsp;user.email&nbsp;&quot;cc@xx&quot;</pre><p>〉 初始化当前目录的项目</p><pre class=\"prettyprint\">git&nbsp;init</pre><p>〉在该目录下新建一个文件，然后查看，将修改添加到暂存区</p><pre class=\"prettyprint\">echo&nbsp;&quot;#&nbsp;test&quot;&nbsp;&gt;&gt;&nbsp;README.md\r\ngit&nbsp;add&nbsp;*&nbsp;&nbsp;//将工作区所有修改添加到暂存区git&nbsp;add&nbsp;.&nbsp;&nbsp;//将工作区所有修改添加到暂存区git&nbsp;add&nbsp;filename&nbsp;//将指定文件添加到暂存区git&nbsp;status&nbsp;&nbsp;//列出变更文件</pre><p>〉将暂存区修改添加到本地仓库</p><pre class=\"prettyprint\">git&nbsp;commit&nbsp;-m&nbsp;&#39;备注信息&#39;</pre><p>〉创建仓库，并将上诉改动push到远程</p><pre class=\"f5 js-zeroclipboard-target prettyprint\">git&nbsp;remote&nbsp;add&nbsp;origin&nbsp;https://github.com/qianduanxiaoc/test.gitgit&nbsp;push&nbsp;-u&nbsp;origin&nbsp;master</pre><p>注：在这里遇到一个问题：每次push都要输入用户名和密码，原因是https方式 push，解决方法如下</p><pre class=\"f5 js-zeroclipboard-target prettyprint\">git&nbsp;remote&nbsp;rm&nbsp;origin&nbsp;&nbsp;&nbsp;//移除git&nbsp;remote&nbsp;add&nbsp;origin&nbsp;git@github.com:gitname/test.git&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//添加</pre><p>此后就不用再输入用户名和密码了</p><p>〉从远程clone项目</p><pre class=\"f5 js-zeroclipboard-target prettyprint\">git&nbsp;clone&nbsp;url</pre><p>〉放弃暂存区修改</p><pre class=\"f5 js-zeroclipboard-target prettyprint\">git&nbsp;checkout&nbsp;--&nbsp;filename&nbsp;&nbsp;//放弃暂存区修改（修改不在）git&nbsp;rm&nbsp;--cached&nbsp;filename&nbsp;&nbsp;//放弃add（修改还在，但产生一条delete记录）git&nbsp;reset&nbsp;HEAD&nbsp;filename&nbsp;&nbsp;&nbsp;//同上（没有delete记录）git&nbsp;stash&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//暂时放弃未提交的修改git&nbsp;stash&nbsp;pop&nbsp;&nbsp;//恢复</pre><p><a href=\"http://www.daqianduan.com/wp-content/uploads/2017/03/rm.png\"><img class=\"alignnone size-full wp-image-6400\" src=\"http://www.daqianduan.com/wp-content/uploads/2017/03/rm.png\" alt=\"rm\" data-tag=\"bdshare\" width=\"495\" height=\"206\"/></a></p><p><a href=\"http://www.daqianduan.com/wp-content/uploads/2017/03/reset.png\"><img class=\"alignnone size-full wp-image-6401\" src=\"http://www.daqianduan.com/wp-content/uploads/2017/03/reset.png\" alt=\"reset\" data-tag=\"bdshare\" width=\"546\" height=\"196\"/></a><br/>〉分支操作</p><pre class=\"f5 js-zeroclipboard-target prettyprint\">/*查看分支*/git&nbsp;branch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//所有本地分支git&nbsp;branch&nbsp;-r&nbsp;&nbsp;//所有远程分支git&nbsp;branch&nbsp;-a&nbsp;&nbsp;//所有远程分支和本地分支/*创建分支*/&nbsp;git&nbsp;branch&nbsp;branchName&nbsp;//留在当前分支git&nbsp;checkout&nbsp;-b&nbsp;branchName&nbsp;//创建并切换分支git&nbsp;branch&nbsp;--set-upstream-to=&lt;remote&gt;/branchName&nbsp;//建立本地分支与远程分支的追踪关系git&nbsp;branch&nbsp;--track&nbsp;branchName&nbsp;[remote&nbsp;branch]&nbsp;//新建一个分支，并与远程建立追踪关系&nbsp;git&nbsp;checkout&nbsp;branchName&nbsp;//切到指定分支&nbsp;/*分支合并*/&nbsp;git&nbsp;pull&nbsp;origin&nbsp;branch&nbsp;//取回远程更新并与本地分支合并&nbsp;git&nbsp;fetch&nbsp;origin&nbsp;branch&nbsp;//取回远程更新&nbsp;git&nbsp;merge&nbsp;branch&nbsp;//合并指定分支到当前分支(产生提交记录)&nbsp;git&nbsp;rebase&nbsp;branch&nbsp;//合并指定分支到当前分支(不产生提交记录，比较适合有强迫症的)&nbsp;git&nbsp;cherry-pick&nbsp;commitId&nbsp;//将与commitId对应的提交合进当前分支</pre><p>好了，今天就先记录这些。</p><p>\r\n		\r\n				<strong>AD：</strong><strong>【专业网站开发】</strong><a target=\"_blank\" href=\"https://themebetter.com\">7年网站开发经验 / 高端大气用户体验 / 全</a></p><p><br/></p>', 0, '2018-10-23 08:40:17.354012', '2018-10-23 08:40:17.354012', 5, 1, 1);
INSERT INTO `myblog_article` VALUES (16, '雅虎正式宣布全球裁员600人 占公司员工4%', '雅虎周二正式宣布，将在圣诞假日期间裁员600人，占公司全球职员总数的4%。该公司发言人证实，当日已向部分职员发出了解雇通知书。', 'article_img/2018/10/23/wpress20.jpg', '<p>雅虎周二正式宣布，将在圣诞假日期间裁员600人，占公司全球职员总数的4%。该公司发言人证实，当日已向部分职员发出了解雇通知书。</p><p>此前数周时间里一直有猜测称，因财务状况长期不佳，可能促使雅虎在年底前裁员5%或约650人，但一直未获得雅虎的正式回应。</p><p>雅虎在声明中称：“今天宣布的人事变动，是我们正在进行的确保雅虎在推动营收增长和利润率上升上处于最佳地位战略的一部分，同时也是为了支持向市场提供差异化产品的战略。”</p><p>声明还称：“我们将继续在全球招收新人，以支持我们的优先战略。雅虎感谢此次被裁员的职员所做出的重要贡献，我们将向他们支付解雇金和提供再就业服务。”</p><p>据雅虎内部员工透露，本次遭到裁员的员工将得到雅虎两个月薪水和一份津贴的赔偿。该员工还透露，整个产品管理部门将迁往印度，如果员工能帮助该部门成功向海外转移，离职时将获得三个月的赔偿金额。</p><p>这次裁员也是雅虎3年内进行的第四次大裁员。但削减成本的战略至今仍未对股价产生足够的提升作用。周二雅虎股价报收于16.63美元，比2008年9月时的17.30美元还低。当时雅虎全球职员数达到最高峰，为15200人，截止最新一轮裁员前，雅虎全球职员数为14100人。</p><p><strong> 相比之下</strong>，雅虎的竞争对手们如谷歌、facebook都在激烈竞争顶尖的技术工程师。谷歌在上月遭泄露的消息显示，该公司将为2.3万名员工提薪10%。</p><p><strong> 分析人士称：</strong>在圣诞节来临的前两周实施裁员计划有些残忍，但这是雅虎不可避免的道路，因为雅虎太需要加大利润和刺激增长。执掌雅虎两年的CEO巴茨也因受到外界质疑压力重重，她在上周表示，等到2012年再对她的在位表现作出评价才是公平的。</p><p><br/></p>', 3, '2018-10-23 08:41:52.097250', '2020-02-21 09:44:34.011199', 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for myblog_article_tags
-- ----------------------------
DROP TABLE IF EXISTS `myblog_article_tags`;
CREATE TABLE `myblog_article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myblog_article_tags_article_id_tag_id_7e4e85c7_uniq` (`article_id`,`tag_id`),
  KEY `myblog_article_tags_tag_id_10cdc0fe_fk_myblog_tag_id` (`tag_id`),
  CONSTRAINT `myblog_article_tags_article_id_04a3a3b7_fk_myblog_article_id` FOREIGN KEY (`article_id`) REFERENCES `myblog_article` (`id`),
  CONSTRAINT `myblog_article_tags_tag_id_10cdc0fe_fk_myblog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `myblog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of myblog_article_tags
-- ----------------------------
BEGIN;
INSERT INTO `myblog_article_tags` VALUES (1, 1, 1);
INSERT INTO `myblog_article_tags` VALUES (2, 1, 3);
INSERT INTO `myblog_article_tags` VALUES (3, 2, 2);
INSERT INTO `myblog_article_tags` VALUES (4, 3, 3);
INSERT INTO `myblog_article_tags` VALUES (5, 3, 4);
INSERT INTO `myblog_article_tags` VALUES (15, 4, 3);
INSERT INTO `myblog_article_tags` VALUES (6, 4, 4);
INSERT INTO `myblog_article_tags` VALUES (16, 4, 5);
INSERT INTO `myblog_article_tags` VALUES (17, 5, 2);
INSERT INTO `myblog_article_tags` VALUES (18, 5, 3);
INSERT INTO `myblog_article_tags` VALUES (8, 6, 2);
INSERT INTO `myblog_article_tags` VALUES (9, 6, 3);
INSERT INTO `myblog_article_tags` VALUES (10, 6, 4);
INSERT INTO `myblog_article_tags` VALUES (11, 7, 4);
INSERT INTO `myblog_article_tags` VALUES (12, 7, 5);
INSERT INTO `myblog_article_tags` VALUES (13, 8, 1);
INSERT INTO `myblog_article_tags` VALUES (14, 8, 5);
INSERT INTO `myblog_article_tags` VALUES (19, 9, 1);
INSERT INTO `myblog_article_tags` VALUES (20, 9, 2);
INSERT INTO `myblog_article_tags` VALUES (21, 9, 3);
INSERT INTO `myblog_article_tags` VALUES (22, 9, 4);
INSERT INTO `myblog_article_tags` VALUES (23, 10, 2);
INSERT INTO `myblog_article_tags` VALUES (24, 10, 3);
INSERT INTO `myblog_article_tags` VALUES (25, 10, 5);
INSERT INTO `myblog_article_tags` VALUES (26, 11, 4);
INSERT INTO `myblog_article_tags` VALUES (27, 11, 5);
INSERT INTO `myblog_article_tags` VALUES (28, 12, 1);
INSERT INTO `myblog_article_tags` VALUES (29, 12, 3);
INSERT INTO `myblog_article_tags` VALUES (30, 13, 2);
INSERT INTO `myblog_article_tags` VALUES (31, 13, 3);
INSERT INTO `myblog_article_tags` VALUES (32, 13, 4);
INSERT INTO `myblog_article_tags` VALUES (33, 13, 5);
INSERT INTO `myblog_article_tags` VALUES (34, 14, 2);
INSERT INTO `myblog_article_tags` VALUES (35, 14, 3);
INSERT INTO `myblog_article_tags` VALUES (36, 15, 3);
INSERT INTO `myblog_article_tags` VALUES (37, 15, 4);
INSERT INTO `myblog_article_tags` VALUES (38, 15, 5);
INSERT INTO `myblog_article_tags` VALUES (39, 16, 1);
INSERT INTO `myblog_article_tags` VALUES (40, 16, 2);
COMMIT;

-- ----------------------------
-- Table structure for myblog_banner
-- ----------------------------
DROP TABLE IF EXISTS `myblog_banner`;
CREATE TABLE `myblog_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_info` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `link_url` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of myblog_banner
-- ----------------------------
BEGIN;
INSERT INTO `myblog_banner` VALUES (1, 'Banner1', 'article_img/2018/10/23/wpress20.jpg', '#', 1);
INSERT INTO `myblog_banner` VALUES (2, 'Banner2', 'article_img/2018/10/23/wpress19.jpg', '#', 1);
INSERT INTO `myblog_banner` VALUES (3, 'Banner3', 'article_img/2018/10/23/wpress18.jpg', '#', 1);
INSERT INTO `myblog_banner` VALUES (4, 'Banner4', 'article_img/2018/10/23/wpress17.jpg', '#', 1);
INSERT INTO `myblog_banner` VALUES (5, 'Banner5', 'article_img/2018/10/23/wpress16.jpg', '#', 1);
COMMIT;

-- ----------------------------
-- Table structure for myblog_category
-- ----------------------------
DROP TABLE IF EXISTS `myblog_category`;
CREATE TABLE `myblog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of myblog_category
-- ----------------------------
BEGIN;
INSERT INTO `myblog_category` VALUES (1, 'Django', 999);
INSERT INTO `myblog_category` VALUES (2, 'Python', 999);
INSERT INTO `myblog_category` VALUES (3, 'Linux', 999);
INSERT INTO `myblog_category` VALUES (4, 'Mysql', 999);
INSERT INTO `myblog_category` VALUES (5, '运维知识', 999);
INSERT INTO `myblog_category` VALUES (6, '我的日记', 999);
COMMIT;

-- ----------------------------
-- Table structure for myblog_link
-- ----------------------------
DROP TABLE IF EXISTS `myblog_link`;
CREATE TABLE `myblog_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `linkurl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of myblog_link
-- ----------------------------
BEGIN;
INSERT INTO `myblog_link` VALUES (1, 'Django中文网', 'https://www.django.cn/');
INSERT INTO `myblog_link` VALUES (2, 'Django', 'https://www.django.cn/');
INSERT INTO `myblog_link` VALUES (3, 'Django教程', 'https://www.django.cn/course/');
INSERT INTO `myblog_link` VALUES (4, 'Django社区', 'https://www.django.cn/forum/');
COMMIT;

-- ----------------------------
-- Table structure for myblog_tag
-- ----------------------------
DROP TABLE IF EXISTS `myblog_tag`;
CREATE TABLE `myblog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of myblog_tag
-- ----------------------------
BEGIN;
INSERT INTO `myblog_tag` VALUES (1, 'django');
INSERT INTO `myblog_tag` VALUES (2, 'Python教程');
INSERT INTO `myblog_tag` VALUES (3, 'Django教程');
INSERT INTO `myblog_tag` VALUES (4, 'mysql知识');
INSERT INTO `myblog_tag` VALUES (5, 'Linux知识');
COMMIT;

-- ----------------------------
-- Table structure for myblog_tui
-- ----------------------------
DROP TABLE IF EXISTS `myblog_tui`;
CREATE TABLE `myblog_tui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of myblog_tui
-- ----------------------------
BEGIN;
INSERT INTO `myblog_tui` VALUES (1, '首页推荐');
INSERT INTO `myblog_tui` VALUES (2, '热门推荐');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
