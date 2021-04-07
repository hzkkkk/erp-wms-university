/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : hzk_wms_goods

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
-- Table structure for wms_goods
-- ----------------------------
DROP TABLE IF EXISTS `wms_goods`;
CREATE TABLE `wms_goods` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `user_id` varchar(40) DEFAULT NULL COMMENT '拥有者用户id',
  `nick_name` varchar(40) DEFAULT NULL COMMENT '拥有者用户昵称',
  `user_image` varchar(255) DEFAULT NULL COMMENT '拥有者头像url',
  `title` varchar(255) DEFAULT NULL COMMENT '物资标题',
  `summary` text COMMENT '物资简介',
  `image_url` varchar(255) DEFAULT NULL COMMENT '物资主图地址',
  `md_content` longtext COMMENT 'md主体内容',
  `html_content` longtext COMMENT 'html主体内容',
  `view_count` int(11) DEFAULT '0' COMMENT '浏览次数',
  `thumhup` int(11) DEFAULT '0' COMMENT '点赞数',
  `status` tinyint(3) DEFAULT '1' COMMENT '0: 已删除, 1:已借，2:可借出，3：已损坏',
  `ispublic` tinyint(3) DEFAULT '1' COMMENT '0：不公开，1：公开',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='物资信息表';

-- ----------------------------
-- Records of wms_goods
-- ----------------------------
BEGIN;
INSERT INTO `wms_goods` VALUES ('1', '9', NULL, NULL, '...', 'balabalabala', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200405/ea90bff14995488e9c2791a8694df38c.png', '# vue-element-admin 概述\n![aHR0cHM6Ly91cGxvYWQtaW1hZ2VzLmppYW5zaHUuaW8vdXBsb2FkX2ltYWdlcy81NTMxMjExLWQxYTNlNWIzNmVlMDNmMDgucG5nP2ltYWdlTW9ncjIvYXV0by1vcmllbnQvc3RyaXAlN0NpbWFnZVZpZXcyLzIvdy80NjAvZm9ybWF0L3dlYnA.jpeg](https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/4a8e837091584673a4c3fd92647a4f7a.jpeg)\n[vue-element-admin](https://panjiachen.github.io/vue-element-admin) 是一个后台前端解决方案，它基于 [vue](https://github.com/vuejs/vue) 和 [element-ui](https://github.com/ElemeFE/element)实现。它使用了最新的前端技术栈，内置了 i18n 国际化解决方案，动态路由，权限验证，提炼了典型的业务模型，提供了丰富的功能组件，它可以帮助你快速搭建企业级中后台产品原型。\n\n[vue-element-admin](https://panjiachen.github.io/vue-element-admin) 定位是后台集成方案，不太适合当基础模板来进行二次开发，因为本项目集成了很多你可能用不到的功能，会造成不少的代码冗余。\n\n官方还提供了一套基础模板 [vue-admin-template](https://github.com/PanJiaChen/vue-admin-template) ，我们基于它进行二次开发，想要什么功能或者组件就去 `vue-element-admin` 那里复制过来。\n\n\n\n## 参考：\n\n- 官方文档 ：https://panjiachen.gitee.io/vue-element-admin-site/zh/\n\n- [vue-element-admin](https://github.com/PanJiaChen/vue-element-admin) 脚手架: \n\n  在线预览：https://panjiachen.gitee.io/vue-element-admin\n\n  `gitee`  ：https://gitee.com/mirrors/vue-element-admin\n\n  `github` ：https://github.com/PanJiaChen/vue-element-admin\n\n- [vue-admin-template](https://github.com/PanJiaChen/vue-admin-template) 脚手架: \n\n  在线预览：https://panjiachen.gitee.io/vue-admin-template\n\n  `github` 源码：https://github.com/PanJiaChen/vue-admin-template\n\n', '<h1><a id=\"vueelementadmin__0\"></a>vue-element-admin 概述</h1>\n<p><img src=\"https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/4a8e837091584673a4c3fd92647a4f7a.jpeg\" alt=\"aHR0cHM6Ly91cGxvYWQtaW1hZ2VzLmppYW5zaHUuaW8vdXBsb2FkX2ltYWdlcy81NTMxMjExLWQxYTNlNWIzNmVlMDNmMDgucG5nP2ltYWdlTW9ncjIvYXV0by1vcmllbnQvc3RyaXAlN0NpbWFnZVZpZXcyLzIvdy80NjAvZm9ybWF0L3dlYnA.jpeg\" /><br />\n<a href=\"https://panjiachen.github.io/vue-element-admin\" target=\"_blank\">vue-element-admin</a> 是一个后台前端解决方案，它基于 <a href=\"https://github.com/vuejs/vue\" target=\"_blank\">vue</a> 和 <a href=\"https://github.com/ElemeFE/element\" target=\"_blank\">element-ui</a>实现。它使用了最新的前端技术栈，内置了 i18n 国际化解决方案，动态路由，权限验证，提炼了典型的业务模型，提供了丰富的功能组件，它可以帮助你快速搭建企业级中后台产品原型。</p>\n<p><a href=\"https://panjiachen.github.io/vue-element-admin\" target=\"_blank\">vue-element-admin</a> 定位是后台集成方案，不太适合当基础模板来进行二次开发，因为本项目集成了很多你可能用不到的功能，会造成不少的代码冗余。</p>\n<p>官方还提供了一套基础模板 <a href=\"https://github.com/PanJiaChen/vue-admin-template\" target=\"_blank\">vue-admin-template</a> ，我们基于它进行二次开发，想要什么功能或者组件就去 <code>vue-element-admin</code> 那里复制过来。</p>\n<h2><a id=\"_10\"></a>参考：</h2>\n<ul>\n<li>\n<p>官方文档 ：https://panjiachen.gitee.io/vue-element-admin-site/zh/</p>\n</li>\n<li>\n<p><a href=\"https://github.com/PanJiaChen/vue-element-admin\" target=\"_blank\">vue-element-admin</a> 脚手架:</p>\n<p>在线预览：https://panjiachen.gitee.io/vue-element-admin</p>\n<p><code>gitee</code>  ：https://gitee.com/mirrors/vue-element-admin</p>\n<p><code>github</code> ：https://github.com/PanJiaChen/vue-element-admin</p>\n</li>\n<li>\n<p><a href=\"https://github.com/PanJiaChen/vue-admin-template\" target=\"_blank\">vue-admin-template</a> 脚手架:</p>\n<p>在线预览：https://panjiachen.gitee.io/vue-admin-template</p>\n<p><code>github</code> 源码：https://github.com/PanJiaChen/vue-admin-template</p>\n</li>\n</ul>\n', 224, 1, 1, 1, '2020-01-07 10:38:07', '2020-05-20 20:47:57');
INSERT INTO `wms_goods` VALUES ('1244940138650423298', '1', NULL, NULL, '修改标题xxxxx', '122', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200405/bbd8b38ba5e0444fa2075ef28dfeec75.png', '1222', '<p>1222</p>\n', 0, 1, 2, 1, '2020-02-07 10:38:07', '2020-04-16 21:09:14');
INSERT INTO `wms_goods` VALUES ('1245884663208275970', '2', NULL, NULL, 'test', '123', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200403/d8cdd8ae405f47f3baadcd6c852dd6b1.png', '123', '<p>123</p>\n', 0, 2, 2, 1, '2020-02-26 10:38:07', '2020-04-17 16:58:21');
INSERT INTO `wms_goods` VALUES ('1245894712647413762', '2', NULL, NULL, '图片', '123', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200403/37cd9bca2f2e40bdabfd25ac16b35257.png', '1', '<p>1</p>\n', 0, 2, 2, 1, '2020-03-07 10:38:07', '2020-04-16 21:13:30');
INSERT INTO `wms_goods` VALUES ('1246718260580331521', '2', NULL, NULL, 'gtest', '123', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200405/8207df8964c44b47850fc4135042bce7.png', '123', '<p>123</p>\n', 1, 2, 2, 1, '2020-04-07 10:38:07', '2020-04-16 17:09:05');
INSERT INTO `wms_goods` VALUES ('1256827283824635906', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 0, 1, '2020-05-03 14:04:05', '2020-07-25 16:02:25');
INSERT INTO `wms_goods` VALUES ('1263079731933392898', NULL, NULL, NULL, 'test', '1231', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/e34b0c224b6249c997a852d6def27c5f.jpeg', '1231231', '<p>1231231</p>\n', 0, 0, 2, 1, '2020-05-20 20:10:49', '2020-05-20 20:10:49');
INSERT INTO `wms_goods` VALUES ('1263079788816543745', NULL, NULL, NULL, 'test', '1231', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/e34b0c224b6249c997a852d6def27c5f.jpeg', '1231231', '<p>1231231</p>\n', 0, 0, 2, 1, '2020-05-20 20:11:03', '2020-05-20 20:11:03');
INSERT INTO `wms_goods` VALUES ('1263079980475265025', NULL, NULL, NULL, 'test', '1231', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/e34b0c224b6249c997a852d6def27c5f.jpeg', '1231231', '<p>1231231</p>\n', 0, 0, 2, 1, '2020-05-20 20:11:48', '2020-05-20 20:11:48');
INSERT INTO `wms_goods` VALUES ('1263080137249959937', NULL, NULL, NULL, 'test', '1231', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/e34b0c224b6249c997a852d6def27c5f.jpeg', '1231231', '<p>1231231</p>\n', 0, 0, 2, 1, '2020-05-20 20:12:26', '2020-05-20 20:12:26');
INSERT INTO `wms_goods` VALUES ('1263080212978118658', NULL, NULL, NULL, 'test', '1231', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/e34b0c224b6249c997a852d6def27c5f.jpeg', '1231231', '<p>1231231</p>\n', 0, 0, 2, 1, '2020-05-20 20:12:44', '2020-05-20 20:12:44');
INSERT INTO `wms_goods` VALUES ('1263080327776219138', NULL, NULL, NULL, '123123', '123123', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/d5bbc19724314f018e1a4e792715dfbf.jpeg', 'afdasdfsdf', '<p>afdasdfsdf</p>\n', 8, 0, 2, 1, '2020-07-20 20:13:11', '2020-05-20 20:14:41');
INSERT INTO `wms_goods` VALUES ('1263081450994053121', NULL, NULL, NULL, '123', 'sdfsdf', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/9a315121b8bc40cb895dc2d064ff5536.jpeg', 'sdfsdf', '<p>sdfsdf</p>\n', 4, 3, 2, 1, '2020-05-20 20:17:39', '2020-05-20 20:18:09');
INSERT INTO `wms_goods` VALUES ('1263091654519336962', NULL, '显卡', NULL, 'asdfsdfsdfgdfg', 'asdsdfsdfgdg', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/ab53fbaabc5a49d585adb5db8f0e390f.jpeg', 'dddddd', '<p>dddddd</p>\n', 3, 5, 2, 1, '2020-07-20 20:58:12', '2020-05-20 20:58:12');
INSERT INTO `wms_goods` VALUES ('1263092250819342337', NULL, '显卡', NULL, 'wwwwww', 'wwwwwww', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/6a14d3e018494d63a1b7c1203c119029.jpeg', 'wwwwww', '<p>wwwwww</p>\n', 39, 11, 2, 1, '2020-05-20 21:00:34', '2020-05-20 21:00:34');
INSERT INTO `wms_goods` VALUES ('1263092800898117633', '9', '显卡', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 'xxxxxx', 'asdfsdf', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/0e77c5e95b644295ab01bf3e28980d9e.jpeg', 'asdfsdfd', '<p>asdfsdfd</p>\n', 1, 0, 1, 1, '2020-05-20 21:02:45', '2020-05-20 21:02:45');
INSERT INTO `wms_goods` VALUES ('1263095988200058881', '9', '显卡', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '测试', '测试', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/20e5749dcca04789ab290220ed62563b.png', '# 一级标题**测试**', '<h1><a id=\"_0\"></a>一级标题<strong>测试</strong></h1>\n', 0, 0, 1, 1, '2020-05-20 21:15:25', '2020-05-20 21:15:25');
INSERT INTO `wms_goods` VALUES ('1263098950418870273', '9', '显卡', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '显卡', '显卡显卡显卡显卡', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200520/9b96373ea7e141438655ca28f480b862.jpeg', '显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡', '<p>显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡显卡</p>\n', 11, 0, 1, 1, '2020-05-20 21:27:11', '2020-05-21 12:12:42');
INSERT INTO `wms_goods` VALUES ('1263442805739651073', '9', '显卡', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '梦学---xxxx', 'asdfsd', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200521/9ebdf5e241d047a9afcab4af7ec5ed39.jpeg', 'sdfsdfdfd', '<p>sdfsdfdfd</p>\n', 3, 2, 2, 0, '2020-05-21 20:13:33', '2020-05-22 17:09:34');
INSERT INTO `wms_goods` VALUES ('1288293481762193409', '9', '显卡', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200522/8665d73ae2484bd28bc2ff4103538385.png', 'vue-element-admin 是一个后台前端解决方案，它基于 vue 和 element-ui', 'vue-element-admin 是一个后台前端解决方案，它基于 vue 和 element-ui实现。它使用了最新的前端技术栈，内置了 i18n 国际化解决方案，动态路由，权限验证，提炼了典型的业务模型，提供了丰富的功能组件，它可以帮助你快速搭建企业级中后台产品原型。', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200729/803246133a69413485b122a51a980aea.jpg', '# vue-element-admin 概述\n\n[vue-element-admin](https://panjiachen.github.io/vue-element-admin) 是一个后台前端解决方案，它基于 [vue](https://github.com/vuejs/vue) 和 [element-ui](https://github.com/ElemeFE/element)实现。它使用了最新的前端技术栈，内置了 i18n 国际化解决方案，动态路由，权限验证，提炼了典型的业务模型，提供了丰富的功能组件，它可以帮助你快速搭建企业级中后台产品原型。\n\n[vue-element-admin](https://panjiachen.github.io/vue-element-admin) 定位是后台集成方案，不太适合当基础模板来进行二次开发，因为本项目集成了很多你可能用不到的功能，会造成不少的代码冗余。\n\n官方还提供了一套基础模板 [vue-admin-template](https://github.com/PanJiaChen/vue-admin-template) ，我们基于它进行二次开发，想要什么功能或者组件就去 `vue-element-admin` 那里复制过来。\n\n\n\n**参考：**\n\n- 官方文档 ：https://panjiachen.gitee.io/vue-element-admin-site/zh/\n\n- [vue-element-admin](https://github.com/PanJiaChen/vue-element-admin) 脚手架: \n\n  在线预览：https://panjiachen.gitee.io/vue-element-admin\n\n  `gitee`  ：https://gitee.com/mirrors/vue-element-admin\n\n  `github` ：https://github.com/PanJiaChen/vue-element-admin\n\n- [vue-admin-template](https://github.com/PanJiaChen/vue-admin-template) 脚手架: \n\n  在线预览：https://panjiachen.gitee.io/vue-admin-template\n\n  `github` 源码：https://github.com/PanJiaChen/vue-admin-template\n\n# 克隆与运行项目\n\n为了项目版本保持一致，大家全部使用老师在网盘中提供好的模板项目。因为可能你用的版本和老师的不一致，而出现一些未知的问题，解决起来很棘手；并且老师已经把项目依赖都已经下载好了，节省你的下载时间。\n\n所以强烈建议你用网盘提供好的。\n\n> `vue-element-admin` 模板项目位于：03-配套资料/01-前端模板代码.zip\n\n\n\n1. **克隆 `vue-element-admin` 项目与安装依赖**\n\n   ```sh\n   # 克隆项目\n   git clone https://github.com/PanJiaChen/vue-element-admin.git\n   \n   # 进入项目目录\n   cd vue-element-admin\n   \n   # 强烈建议不要用 cnpm 安装 会有各种诡异的bug 可以通过如下操作解决 npm 下载速度慢的问题\n   npm install --registry=https://registry.npm.taobao.org\n   \n   # 安装依赖，如果报错，则参见下文·报错声明·\n   npm install\n   \n   # 本地开发 启动项目\n   npm run dev\n   ```\n\n   >**报错声明：**\n   >\n   >**拉取项目后，当 `run install` 时，如果提示 `node-sass` 下载失败，则在项目根目录创建一个 `.npmrc` 文件 ,**\n   >\n   >**文件内容是把 `node-sass` 的路径修改成淘宝的 `npm`，就很顺利的可以在国内的网络环境下载了**\n   >\n   >```properties\n   >sass_binary_site=https://npm.taobao.org/mirrors/node-sass/\n   >registry=https://registry.npm.taobao.org\n   >```\n\n   \n\n', '<h1><a id=\"vueelementadmin__0\"></a>vue-element-admin 概述</h1>\n<p><a href=\"https://panjiachen.github.io/vue-element-admin\" target=\"_blank\">vue-element-admin</a> 是一个后台前端解决方案，它基于 <a href=\"https://github.com/vuejs/vue\" target=\"_blank\">vue</a> 和 <a href=\"https://github.com/ElemeFE/element\" target=\"_blank\">element-ui</a>实现。它使用了最新的前端技术栈，内置了 i18n 国际化解决方案，动态路由，权限验证，提炼了典型的业务模型，提供了丰富的功能组件，它可以帮助你快速搭建企业级中后台产品原型。</p>\n<p><a href=\"https://panjiachen.github.io/vue-element-admin\" target=\"_blank\">vue-element-admin</a> 定位是后台集成方案，不太适合当基础模板来进行二次开发，因为本项目集成了很多你可能用不到的功能，会造成不少的代码冗余。</p>\n<p>官方还提供了一套基础模板 <a href=\"https://github.com/PanJiaChen/vue-admin-template\" target=\"_blank\">vue-admin-template</a> ，我们基于它进行二次开发，想要什么功能或者组件就去 <code>vue-element-admin</code> 那里复制过来。</p>\n<p><strong>参考：</strong></p>\n<ul>\n<li>\n<p>官方文档 ：https://panjiachen.gitee.io/vue-element-admin-site/zh/</p>\n</li>\n<li>\n<p><a href=\"https://github.com/PanJiaChen/vue-element-admin\" target=\"_blank\">vue-element-admin</a> 脚手架:</p>\n<p>在线预览：https://panjiachen.gitee.io/vue-element-admin</p>\n<p><code>gitee</code>  ：https://gitee.com/mirrors/vue-element-admin</p>\n<p><code>github</code> ：https://github.com/PanJiaChen/vue-element-admin</p>\n</li>\n<li>\n<p><a href=\"https://github.com/PanJiaChen/vue-admin-template\" target=\"_blank\">vue-admin-template</a> 脚手架:</p>\n<p>在线预览：https://panjiachen.gitee.io/vue-admin-template</p>\n<p><code>github</code> 源码：https://github.com/PanJiaChen/vue-admin-template</p>\n</li>\n</ul>\n<h1><a id=\"_28\"></a>克隆与运行项目</h1>\n<p>为了项目版本保持一致，大家全部使用老师在网盘中提供好的模板项目。因为可能你用的版本和老师的不一致，而出现一些未知的问题，解决起来很棘手；并且老师已经把项目依赖都已经下载好了，节省你的下载时间。</p>\n<p>所以强烈建议你用网盘提供好的。</p>\n<blockquote>\n<p><code>vue-element-admin</code> 模板项目位于：03-配套资料/01-前端模板代码.zip</p>\n</blockquote>\n<ol>\n<li>\n<p><strong>克隆 <code>vue-element-admin</code> 项目与安装依赖</strong></p>\n<pre><code class=\"lang-sh\"># 克隆项目\ngit clone https://github.com/PanJiaChen/vue-element-admin.git\n\n# 进入项目目录\ncd vue-element-admin\n\n# 强烈建议不要用 cnpm 安装 会有各种诡异的bug 可以通过如下操作解决 npm 下载速度慢的问题\nnpm install --registry=https://registry.npm.taobao.org\n\n# 安装依赖，如果报错，则参见下文·报错声明·\nnpm install\n\n# 本地开发 启动项目\nnpm run dev\n</code></pre>\n<blockquote>\n<p><strong>报错声明：</strong></p>\n<p><strong>拉取项目后，当 <code>run install</code> 时，如果提示 <code>node-sass</code> 下载失败，则在项目根目录创建一个 <code>.npmrc</code> 文件 ,</strong></p>\n<p><strong>文件内容是把 <code>node-sass</code> 的路径修改成淘宝的 <code>npm</code>，就很顺利的可以在国内的网络环境下载了</strong></p>\n<pre><code class=\"lang-properties\">sass_binary_site=https://npm.taobao.org/mirrors/node-sass/\nregistry=https://registry.npm.taobao.org\n</code></pre>\n</blockquote>\n</li>\n</ol>\n', 2, 1, 2, 1, '2020-07-29 10:01:16', '2020-07-29 10:01:33');
INSERT INTO `wms_goods` VALUES ('1288296750278443009', '9', '显卡', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200522/8665d73ae2484bd28bc2ff4103538385.png', '第二章 初始化博客社区门户项目', 'ESLint 是一个用来按照规则给出报告的代码检测工具，使用它可以避免低级错误和统一代码的风格，也保证了代码的可读性。\n', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200729/6f71c3c1fd8a49f19b0f7f4056a9b99b.png', '# 第二章 初始化项目\n![image20200509092757510.png](https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200729/4882eecb1bb44802b2752e74eef0e7a9.png)\n## 重命名项目\n\n1. 将目录名 `vue-admin-template-master` 重命名为 `mengxuegu-blog-admin` \n\n2. 将  `mengxuegu-blog-admin/package.json` 中的 `name` 值改为 `mengxuegu-blog-admin` \n\n   ```json\n   {\n     \"name\": \"mengxuegu-blog-admin\",\n     \"version\": \"1.0.1\",\n     \"description\": \"mengxuegu blog\",\n     \"author\": \"mengxuegu.com\",\n     // ...\n   }\n   ```\n\n3. 将  `mengxuegu-blog-admin/package-lock.jsom` 中的 `name` 值改为 `mengxuegu-blog-admin` \n\n   ```json\n   {\n     \"name\": \"mengxuegu-blog-admin\",\n     \"version\": \"1.0.1\",\n     \"lockfileVersion\": 1,\n   ```\n\n## Eslint 语法规范检查\n\nESLint 是一个用来按照规则给出报告的代码检测工具，使用它可以避免低级错误和统一代码的风格，也保证了代码的可读性。\n\n### 取消 ESLint 校验\n\n在工程根目录下的 `vue.config.js` 中将 lintOnSave 指定为 false 即可。\n\n```js\nlintOnSave: false, // process.env.NODE_ENV === \'development\',\n```\n', '<h1><a id=\"__0\"></a>第二章 初始化项目</h1>\n<p><img src=\"https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200729/4882eecb1bb44802b2752e74eef0e7a9.png\" alt=\"image20200509092757510.png\" /></p>\n<h2><a id=\"_2\"></a>重命名项目</h2>\n<ol>\n<li>\n<p>将目录名 <code>vue-admin-template-master</code> 重命名为 <code>mengxuegu-blog-admin</code></p>\n</li>\n<li>\n<p>将  <code>mengxuegu-blog-admin/package.json</code> 中的 <code>name</code> 值改为 <code>mengxuegu-blog-admin</code></p>\n<pre><div class=\"hljs\"><code class=\"lang-json\">{\n  <span class=\"hljs-attr\">\"name\"</span>: <span class=\"hljs-string\">\"mengxuegu-blog-admin\"</span>,\n  <span class=\"hljs-attr\">\"version\"</span>: <span class=\"hljs-string\">\"1.0.1\"</span>,\n  <span class=\"hljs-attr\">\"description\"</span>: <span class=\"hljs-string\">\"mengxuegu blog\"</span>,\n  <span class=\"hljs-attr\">\"author\"</span>: <span class=\"hljs-string\">\"mengxuegu.com\"</span>,\n  // ...\n}\n</code></div></pre>\n</li>\n<li>\n<p>将  <code>mengxuegu-blog-admin/package-lock.jsom</code> 中的 <code>name</code> 值改为 <code>mengxuegu-blog-admin</code></p>\n<pre><div class=\"hljs\"><code class=\"lang-json\">{\n  <span class=\"hljs-attr\">\"name\"</span>: <span class=\"hljs-string\">\"mengxuegu-blog-admin\"</span>,\n  <span class=\"hljs-attr\">\"version\"</span>: <span class=\"hljs-string\">\"1.0.1\"</span>,\n  <span class=\"hljs-attr\">\"lockfileVersion\"</span>: <span class=\"hljs-number\">1</span>,\n</code></div></pre>\n</li>\n</ol>\n<h2><a id=\"Eslint__27\"></a>Eslint 语法规范检查</h2>\n<p>ESLint 是一个用来按照规则给出报告的代码检测工具，使用它可以避免低级错误和统一代码的风格，也保证了代码的可读性。</p>\n<h3><a id=\"_ESLint__31\"></a>取消 ESLint 校验</h3>\n<p>在工程根目录下的 <code>vue.config.js</code> 中将 lintOnSave 指定为 false 即可。</p>\n<pre><div class=\"hljs\"><code class=\"lang-js\">lintOnSave: <span class=\"hljs-literal\">false</span>, <span class=\"hljs-comment\">// process.env.NODE_ENV === \'development\',</span>\n</code></div></pre>\n', 1, 0, 2, 1, '2020-07-29 10:14:15', '2020-07-29 10:14:31');
INSERT INTO `wms_goods` VALUES ('1288310670351335425', '9', '显卡', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200522/8665d73ae2484bd28bc2ff4103538385.png', '博客管理系统后台微服务架构技术栈', '门户包括: 博客物资、问答管理、评论管理等                         |\n系统管理中心：分类管理、标签管理、物资审核、广告管理、问答管理、系统权限管理等功能。', NULL, '# 项目架构\n\n## 项目功能\n\n| 模块名称     | 功能说明                                                     |\n| ------------ | ------------------------------------------------------------ |\n| 门户         | 包括: 博客物资、问答管理、评论管理等                         |\n| 系统管理中心 | 分类管理、标签管理、物资审核、广告管理、问答管理、系统权限管理等功能。 |\n\n\n## 后台技术栈\n\n| 技术名                          | 版本          |\n| ------------------------------- | ------------- |\n| JDK                             | 1.8+          |\n| Maven                           | 3.3.9         |\n| Spring Boot                     | 2.2.5.RELEASE |\n| Spring Cloud                    | Hoxton.SR3    |\n| Spring Security OAuth2          | 5.3.0         |\n| Mybatis                         |               |\n| Mybatis-Plus                    | 3.2.0         |\n| Alibaba Nacos 注册中心&配置中心 |               |\n| druid 连接池                    | 1.1.21        |\n| Swagger-ui                      |               |\n\n', '<h1><a id=\"_0\"></a>项目架构</h1>\n<h2><a id=\"_2\"></a>项目功能</h2>\n<table>\n<thead>\n<tr>\n<th>模块名称</th>\n<th>功能说明</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>门户</td>\n<td>包括: 博客物资、问答管理、评论管理等</td>\n</tr>\n<tr>\n<td>系统管理中心</td>\n<td>分类管理、标签管理、物资审核、广告管理、问答管理、系统权限管理等功能。</td>\n</tr>\n</tbody>\n</table>\n<h2><a id=\"_10\"></a>后台技术栈</h2>\n<table>\n<thead>\n<tr>\n<th>技术名</th>\n<th>版本</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>JDK</td>\n<td>1.8+</td>\n</tr>\n<tr>\n<td>Maven</td>\n<td>3.3.9</td>\n</tr>\n<tr>\n<td>Spring Boot</td>\n<td>2.2.5.RELEASE</td>\n</tr>\n<tr>\n<td>Spring Cloud</td>\n<td>Hoxton.SR3</td>\n</tr>\n<tr>\n<td>Spring Security OAuth2</td>\n<td>5.3.0</td>\n</tr>\n<tr>\n<td>Mybatis</td>\n<td></td>\n</tr>\n<tr>\n<td>Mybatis-Plus</td>\n<td>3.2.0</td>\n</tr>\n<tr>\n<td>Alibaba Nacos 注册中心&amp;配置中心</td>\n<td></td>\n</tr>\n<tr>\n<td>druid 连接池</td>\n<td>1.1.21</td>\n</tr>\n<tr>\n<td>Swagger-ui</td>\n<td></td>\n</tr>\n</tbody>\n</table>\n', 1, 0, 2, 1, '2020-07-29 11:09:34', '2020-07-29 11:10:47');
INSERT INTO `wms_goods` VALUES ('2', '1', NULL, NULL, '电脑', 'RT', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200405/461d3f8f4a0f4a4a9186f1adab4c3c46.png', '1. 将目录名 `vue-admin-template` 重命名为 `mengxuegu-blog-admin` \n\n2. 将  `mengxuegu-blog-admin/package.jsom` 中的 `name` 值改为 `mengxuegu-blog-admin` \n\n   ```json\n   {\n     \"name\": \"mengxuegu-blog-admin\",\n     \"version\": \"1.0.1\",\n     \"description\": \"mengxuegu blog\",\n     \"author\": \"mengxuegu.com\",\n     // ...\n   }\n   ```\n\n3. 将  `mengxuegu-blog-admin/package-lock.jsom` 中的 `name` 值改为 `mengxuegu-blog-admin` \n\n   ```json\n   {\n     \"name\": \"mengxuegu-blog-admin\",\n     \"version\": \"1.0.1\",\n     \"lockfileVersion\": 1,\n   ```\n\n   效果图：', '<ol>\n<li>\n<p>将目录名 <code>vue-admin-template</code> 重命名为 <code>mengxuegu-blog-admin</code></p>\n</li>\n<li>\n<p>将  <code>mengxuegu-blog-admin/package.jsom</code> 中的 <code>name</code> 值改为 <code>mengxuegu-blog-admin</code></p>\n<pre><div class=\"hljs\"><code class=\"lang-json\">{\n  <span class=\"hljs-attr\">\"name\"</span>: <span class=\"hljs-string\">\"mengxuegu-blog-admin\"</span>,\n  <span class=\"hljs-attr\">\"version\"</span>: <span class=\"hljs-string\">\"1.0.1\"</span>,\n  <span class=\"hljs-attr\">\"description\"</span>: <span class=\"hljs-string\">\"mengxuegu blog\"</span>,\n  <span class=\"hljs-attr\">\"author\"</span>: <span class=\"hljs-string\">\"mengxuegu.com\"</span>,\n  // ...\n}\n</code></div></pre>\n</li>\n<li>\n<p>将  <code>mengxuegu-blog-admin/package-lock.jsom</code> 中的 <code>name</code> 值改为 <code>mengxuegu-blog-admin</code></p>\n<pre><div class=\"hljs\"><code class=\"lang-json\">{\n  <span class=\"hljs-attr\">\"name\"</span>: <span class=\"hljs-string\">\"mengxuegu-blog-admin\"</span>,\n  <span class=\"hljs-attr\">\"version\"</span>: <span class=\"hljs-string\">\"1.0.1\"</span>,\n  <span class=\"hljs-attr\">\"lockfileVersion\"</span>: <span class=\"hljs-number\">1</span>,\n</code></div></pre>\n<p>效果图：</p>\n</li>\n</ol>\n', 10, 2, 2, 1, '2020-04-07 10:38:07', '2020-04-16 21:37:42');
INSERT INTO `wms_goods` VALUES ('3', '2', NULL, NULL, 'test', 'test', 'https://mengxuegu.oss-cn-shenzhen.aliyuncs.com/article/20200405/48df8ff1ba55428294c75b8b6751fa3d.png', '1. 将目录名 `vue-admin-template` 重命名为 `mengxuegu-blog-admin` \n\n2. 将  `mengxuegu-blog-admin/package.jsom` 中的 `name` 值改为 `mengxuegu-blog-admin` \n\n   ```json\n   {\n     \"name\": \"mengxuegu-blog-admin\",\n     \"version\": \"1.0.1\",\n     \"description\": \"mengxuegu blog\",\n     \"author\": \"mengxuegu.com\",\n     // ...\n   }\n   ```\n\n3. 将  `mengxuegu-blog-admin/package-lock.jsom` 中的 `name` 值改为 `mengxuegu-blog-admin` \n\n   ```json\n   {\n     \"name\": \"mengxuegu-blog-admin\",\n     \"version\": \"1.0.1\",\n     \"lockfileVersion\": 1,\n   ```\n\n   效果图：', '<ol>\n<li>\n<p>将目录名 <code>vue-admin-template</code> 重命名为 <code>mengxuegu-blog-admin</code></p>\n</li>\n<li>\n<p>将  <code>mengxuegu-blog-admin/package.jsom</code> 中的 <code>name</code> 值改为 <code>mengxuegu-blog-admin</code></p>\n<pre><div class=\"hljs\"><code class=\"lang-json\">{\n  <span class=\"hljs-attr\">\"name\"</span>: <span class=\"hljs-string\">\"mengxuegu-blog-admin\"</span>,\n  <span class=\"hljs-attr\">\"version\"</span>: <span class=\"hljs-string\">\"1.0.1\"</span>,\n  <span class=\"hljs-attr\">\"description\"</span>: <span class=\"hljs-string\">\"mengxuegu blog\"</span>,\n  <span class=\"hljs-attr\">\"author\"</span>: <span class=\"hljs-string\">\"mengxuegu.com\"</span>,\n  // ...\n}\n</code></div></pre>\n</li>\n<li>\n<p>将  <code>mengxuegu-blog-admin/package-lock.jsom</code> 中的 <code>name</code> 值改为 <code>mengxuegu-blog-admin</code></p>\n<pre><div class=\"hljs\"><code class=\"lang-json\">{\n  <span class=\"hljs-attr\">\"name\"</span>: <span class=\"hljs-string\">\"mengxuegu-blog-admin\"</span>,\n  <span class=\"hljs-attr\">\"version\"</span>: <span class=\"hljs-string\">\"1.0.1\"</span>,\n  <span class=\"hljs-attr\">\"lockfileVersion\"</span>: <span class=\"hljs-number\">1</span>,\n</code></div></pre>\n<p>效果图：</p>\n</li>\n</ol>\n', 100, 1, 2, 1, '2020-04-07 10:38:07', '2020-04-16 21:08:59');
INSERT INTO `wms_goods` VALUES ('string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 1, 1, '2020-05-03 14:04:05', '2020-05-03 14:05:03');
COMMIT;

-- ----------------------------
-- Table structure for wms_goods_provider
-- ----------------------------
DROP TABLE IF EXISTS `wms_goods_provider`;
CREATE TABLE `wms_goods_provider` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `article_id` varchar(40) DEFAULT NULL COMMENT '物资 id',
  `provider_id` varchar(40) DEFAULT NULL COMMENT '标签id',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='物资标签中间表';

-- ----------------------------
-- Records of wms_goods_provider
-- ----------------------------
BEGIN;
INSERT INTO `wms_goods_provider` VALUES ('1245982620028936194', '1245884663208275970', '11', '2020-04-03 15:53:00');
INSERT INTO `wms_goods_provider` VALUES ('1245982620028936195', '1245884663208275970', '8', '2020-04-03 15:53:00');
INSERT INTO `wms_goods_provider` VALUES ('1245982620028936196', '1245884663208275970', '10', '2020-04-03 15:53:00');
INSERT INTO `wms_goods_provider` VALUES ('1246608348114264066', '2', '15', '2020-04-05 09:19:25');
INSERT INTO `wms_goods_provider` VALUES ('1246608348114264067', '2', '18', '2020-04-05 09:19:25');
INSERT INTO `wms_goods_provider` VALUES ('1246608626444083202', '3', '19', '2020-04-05 09:20:32');
INSERT INTO `wms_goods_provider` VALUES ('1246608626444083203', '3', '18', '2020-04-05 09:20:32');
INSERT INTO `wms_goods_provider` VALUES ('1246608626444083204', '3', '20', '2020-04-05 09:20:32');
INSERT INTO `wms_goods_provider` VALUES ('1246608626444083205', '3', '17', '2020-04-05 09:20:32');
INSERT INTO `wms_goods_provider` VALUES ('1246608697378152450', '1245894712647413762', '14', '2020-04-05 09:20:48');
INSERT INTO `wms_goods_provider` VALUES ('1246608697378152451', '1245894712647413762', '13', '2020-04-05 09:20:48');
INSERT INTO `wms_goods_provider` VALUES ('1246608697378152452', '1245894712647413762', '15', '2020-04-05 09:20:48');
INSERT INTO `wms_goods_provider` VALUES ('1246718260588720130', '1246718260580331521', '12', '2020-04-05 16:36:10');
INSERT INTO `wms_goods_provider` VALUES ('1250731885750067202', '1244940138650423298', '1', '2020-04-16 18:24:53');
INSERT INTO `wms_goods_provider` VALUES ('1250731885750067203', '1244940138650423298', '3', '2020-04-16 18:24:53');
INSERT INTO `wms_goods_provider` VALUES ('1256827086478438402', 'string', 'string', '2020-05-03 14:05:02');
INSERT INTO `wms_goods_provider` VALUES ('1256827283837218817', '1256827283824635906', 'string', '2020-05-03 14:05:49');
INSERT INTO `wms_goods_provider` VALUES ('1263079731945975810', '1263079731933392898', '1244923532817915906', '2020-05-20 20:10:49');
INSERT INTO `wms_goods_provider` VALUES ('1263079731945975811', '1263079731933392898', '3', '2020-05-20 20:10:49');
INSERT INTO `wms_goods_provider` VALUES ('1263079731945975812', '1263079731933392898', '6', '2020-05-20 20:10:49');
INSERT INTO `wms_goods_provider` VALUES ('1263079731945975813', '1263079731933392898', '5', '2020-05-20 20:10:49');
INSERT INTO `wms_goods_provider` VALUES ('1263079788824932354', '1263079788816543745', '1244923532817915906', '2020-05-20 20:11:03');
INSERT INTO `wms_goods_provider` VALUES ('1263079788824932355', '1263079788816543745', '3', '2020-05-20 20:11:03');
INSERT INTO `wms_goods_provider` VALUES ('1263079788824932356', '1263079788816543745', '6', '2020-05-20 20:11:03');
INSERT INTO `wms_goods_provider` VALUES ('1263079788824932357', '1263079788816543745', '5', '2020-05-20 20:11:03');
INSERT INTO `wms_goods_provider` VALUES ('1263079980487847938', '1263079980475265025', '1244923532817915906', '2020-05-20 20:11:48');
INSERT INTO `wms_goods_provider` VALUES ('1263079980487847939', '1263079980475265025', '3', '2020-05-20 20:11:48');
INSERT INTO `wms_goods_provider` VALUES ('1263079980487847940', '1263079980475265025', '6', '2020-05-20 20:11:48');
INSERT INTO `wms_goods_provider` VALUES ('1263079980492042242', '1263079980475265025', '5', '2020-05-20 20:11:48');
INSERT INTO `wms_goods_provider` VALUES ('1263080137262542850', '1263080137249959937', '1244923532817915906', '2020-05-20 20:12:26');
INSERT INTO `wms_goods_provider` VALUES ('1263080137262542851', '1263080137249959937', '3', '2020-05-20 20:12:26');
INSERT INTO `wms_goods_provider` VALUES ('1263080137262542852', '1263080137249959937', '6', '2020-05-20 20:12:26');
INSERT INTO `wms_goods_provider` VALUES ('1263080137262542853', '1263080137249959937', '5', '2020-05-20 20:12:26');
INSERT INTO `wms_goods_provider` VALUES ('1263080212982312962', '1263080212978118658', '1244923532817915906', '2020-05-20 20:12:44');
INSERT INTO `wms_goods_provider` VALUES ('1263080212982312963', '1263080212978118658', '3', '2020-05-20 20:12:44');
INSERT INTO `wms_goods_provider` VALUES ('1263080212982312964', '1263080212978118658', '6', '2020-05-20 20:12:44');
INSERT INTO `wms_goods_provider` VALUES ('1263080212982312965', '1263080212978118658', '5', '2020-05-20 20:12:44');
INSERT INTO `wms_goods_provider` VALUES ('1263080327784607745', '1263080327776219138', '8', '2020-05-20 20:13:11');
INSERT INTO `wms_goods_provider` VALUES ('1263080327784607746', '1263080327776219138', '12', '2020-05-20 20:13:11');
INSERT INTO `wms_goods_provider` VALUES ('1263080327784607747', '1263080327776219138', '15', '2020-05-20 20:13:11');
INSERT INTO `wms_goods_provider` VALUES ('1263080327784607748', '1263080327776219138', '14', '2020-05-20 20:13:11');
INSERT INTO `wms_goods_provider` VALUES ('1263080327784607749', '1263080327776219138', '13', '2020-05-20 20:13:11');
INSERT INTO `wms_goods_provider` VALUES ('1263081451006636034', '1263081450994053121', '7', '2020-05-20 20:17:39');
INSERT INTO `wms_goods_provider` VALUES ('1263081451006636035', '1263081450994053121', '11', '2020-05-20 20:17:39');
INSERT INTO `wms_goods_provider` VALUES ('1263081451006636036', '1263081450994053121', '9', '2020-05-20 20:17:39');
INSERT INTO `wms_goods_provider` VALUES ('1263081451006636037', '1263081450994053121', '10', '2020-05-20 20:17:39');
INSERT INTO `wms_goods_provider` VALUES ('1263089075571830786', '1', '8', '2020-05-20 20:47:57');
INSERT INTO `wms_goods_provider` VALUES ('1263089075576025090', '1', '12', '2020-05-20 20:47:57');
INSERT INTO `wms_goods_provider` VALUES ('1263091654527725569', '1263091654519336962', '2', '2020-05-20 20:58:12');
INSERT INTO `wms_goods_provider` VALUES ('1263091654527725570', '1263091654519336962', '1', '2020-05-20 20:58:12');
INSERT INTO `wms_goods_provider` VALUES ('1263092250827730945', '1263092250819342337', '19', '2020-05-20 21:00:34');
INSERT INTO `wms_goods_provider` VALUES ('1263092250827730946', '1263092250819342337', '18', '2020-05-20 21:00:34');
INSERT INTO `wms_goods_provider` VALUES ('1263092250827730947', '1263092250819342337', '20', '2020-05-20 21:00:34');
INSERT INTO `wms_goods_provider` VALUES ('1263092250827730948', '1263092250819342337', '17', '2020-05-20 21:00:34');
INSERT INTO `wms_goods_provider` VALUES ('1263092800906506241', '1263092800898117633', '19', '2020-05-20 21:02:45');
INSERT INTO `wms_goods_provider` VALUES ('1263092800906506242', '1263092800898117633', '18', '2020-05-20 21:02:45');
INSERT INTO `wms_goods_provider` VALUES ('1263092800906506243', '1263092800898117633', '20', '2020-05-20 21:02:45');
INSERT INTO `wms_goods_provider` VALUES ('1263092800906506244', '1263092800898117633', '17', '2020-05-20 21:02:45');
INSERT INTO `wms_goods_provider` VALUES ('1263095988208447489', '1263095988200058881', '1244923532817915906', '2020-05-20 21:15:25');
INSERT INTO `wms_goods_provider` VALUES ('1263095988208447490', '1263095988200058881', '3', '2020-05-20 21:15:25');
INSERT INTO `wms_goods_provider` VALUES ('1263095988208447491', '1263095988200058881', '6', '2020-05-20 21:15:25');
INSERT INTO `wms_goods_provider` VALUES ('1263095988208447492', '1263095988200058881', '5', '2020-05-20 21:15:25');
INSERT INTO `wms_goods_provider` VALUES ('1263321794348220418', '1263098950418870273', '15', '2020-05-21 12:12:41');
INSERT INTO `wms_goods_provider` VALUES ('1263321794348220419', '1263098950418870273', '14', '2020-05-21 12:12:41');
INSERT INTO `wms_goods_provider` VALUES ('1263321794348220420', '1263098950418870273', '13', '2020-05-21 12:12:41');
INSERT INTO `wms_goods_provider` VALUES ('1263758893237071873', '1263442805739651073', '15', '2020-05-22 17:09:34');
INSERT INTO `wms_goods_provider` VALUES ('1263758893237071874', '1263442805739651073', '14', '2020-05-22 17:09:34');
INSERT INTO `wms_goods_provider` VALUES ('1263758893237071875', '1263442805739651073', '13', '2020-05-22 17:09:34');
INSERT INTO `wms_goods_provider` VALUES ('1288293481808330754', '1288293481762193409', '4', '2020-07-29 10:01:16');
INSERT INTO `wms_goods_provider` VALUES ('1288296750295220225', '1288296750278443009', '1244923532817915906', '2020-07-29 10:14:15');
INSERT INTO `wms_goods_provider` VALUES ('1288296750295220226', '1288296750278443009', '4', '2020-07-29 10:14:15');
INSERT INTO `wms_goods_provider` VALUES ('1288310670363918338', '1288310670351335425', '12', '2020-07-29 11:09:34');
INSERT INTO `wms_goods_provider` VALUES ('1288310670363918339', '1288310670351335425', '9', '2020-07-29 11:09:34');
INSERT INTO `wms_goods_provider` VALUES ('1288310670363918340', '1288310670351335425', '10', '2020-07-29 11:09:34');
COMMIT;

-- ----------------------------
-- Table structure for wms_category
-- ----------------------------
DROP TABLE IF EXISTS `wms_category`;
CREATE TABLE `wms_category` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(3) DEFAULT '1' COMMENT '状态(1:正常，0:禁用)',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='物资分类表';

-- ----------------------------
-- Records of wms_category
-- ----------------------------
BEGIN;
INSERT INTO `wms_category` VALUES ('1', '前端', '前端技术', 1, 1, '2024-03-10 12:13:06', '2024-03-10 12:13:06');
INSERT INTO `wms_category` VALUES ('1250639404517728258', '大数据', '大数据热门技术', 0, 1, '2020-04-16 12:17:24', '2020-04-16 12:17:24');
INSERT INTO `wms_category` VALUES ('2', 'Java', 'java系列', 1, 3, '2024-03-10 12:15:00', '2024-03-10 12:15:00');
INSERT INTO `wms_category` VALUES ('3', '移动端', '如android、ios', 1, 4, '2024-03-10 12:15:07', '2024-03-10 12:15:07');
INSERT INTO `wms_category` VALUES ('4', '人工智能', '人工智能相关', 1, 6, '2024-03-10 12:16:59', '2024-03-10 12:16:59');
INSERT INTO `wms_category` VALUES ('7', '区块链', '区块链相关', 1, 8, '2024-03-10 12:17:11', '2024-03-10 12:17:11');
COMMIT;

-- ----------------------------
-- Table structure for wms_provider
-- ----------------------------
DROP TABLE IF EXISTS `wms_provider`;
CREATE TABLE `wms_provider` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `category_id` varchar(40) DEFAULT NULL COMMENT '分类id',
  `name` varchar(40) DEFAULT NULL COMMENT '标签名称',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标签表';

-- ----------------------------
-- Records of wms_provider
-- ----------------------------
BEGIN;
INSERT INTO `wms_provider` VALUES ('1', '1', '二手书店', '2024-03-10 12:23:47', '2024-03-10 12:23:47');
INSERT INTO `wms_provider` VALUES ('10', '2', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('11', '2', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('12', '2', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('1244923532817915906', '1', 'test', '2020-03-31 17:44:34', '2020-03-31 17:44:34');
INSERT INTO `wms_provider` VALUES ('1250704765871144961', NULL, NULL, '2020-04-16 16:37:07', '2020-04-16 16:37:07');
INSERT INTO `wms_provider` VALUES ('13', '3', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('14', '3', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('15', '3', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('17', '4', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('18', '4', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('19', '4', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('2', '1', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('20', '4', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('3', '1', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('4', '1', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('5', '1', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('6', '1', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('7', '2', 'test', '2024-03-10 12:23:47', '2024-03-10 12:23:47');
INSERT INTO `wms_provider` VALUES ('8', '2', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
INSERT INTO `wms_provider` VALUES ('9', '2', 'test', '2024-03-10 12:26:22', '2024-03-10 12:26:22');
COMMIT;

