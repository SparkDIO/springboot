/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50625
 Source Host           : localhost:3306
 Source Schema         : epidemic

 Target Server Type    : MySQL
 Target Server Version : 50625
 File Encoding         : 65001

 Date: 10/12/2021 18:09:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '编号',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证',
  `account` double(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `level` int(11) NOT NULL DEFAULT 1 COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '超级管理员信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES (1, 'superadmin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 22, '2021-11-15 17:42:13', '18843232356', '上海市', '111', 'aa@163.com', '342425199001116372', 185.30, 1);
INSERT INTO `admin_info` VALUES (2, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '社区管理员02', '男', 23, '2021-12-09 00:00:00', '13545678921', '九江市', '001', '819122195@qq.com', '360121199708125945', NULL, 1);

-- ----------------------------
-- Table structure for advertiser_info
-- ----------------------------
DROP TABLE IF EXISTS `advertiser_info`;
CREATE TABLE `advertiser_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告名称',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '公告内容',
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of advertiser_info
-- ----------------------------
INSERT INTO `advertiser_info` VALUES (1, '系统公告', '<p>这是系统公告1，管理员可以在后台修helllO改</p><p><br></p><p>88888</p>', '2021-04-28 14:56:05');
INSERT INTO `advertiser_info` VALUES (2, '系统公告', '这是系统公告2，管理员可以在后台修改', '2021-11-15 17:42:13');

-- ----------------------------
-- Table structure for business_info
-- ----------------------------
DROP TABLE IF EXISTS `business_info`;
CREATE TABLE `business_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证',
  `account` double(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `level` int(11) NOT NULL DEFAULT 2 COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of business_info
-- ----------------------------
INSERT INTO `business_info` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 22, '2021-11-15 17:42:13', '18843232356', '上海市', 'aa@163.com', '342425199001116372', 0.00, 2);
INSERT INTO `business_info` VALUES (2, 'hhh', '202cb962ac59075b964b07152d234b70', NULL, '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);

-- ----------------------------
-- Table structure for cart_info
-- ----------------------------
DROP TABLE IF EXISTS `cart_info`;
CREATE TABLE `cart_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `count` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  `goodsId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属商品',
  `userId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属用户',
  `level` int(11) NULL DEFAULT NULL COMMENT '用户等级',
  `createTime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物车信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cart_info
-- ----------------------------
INSERT INTO `cart_info` VALUES (28, 1, 4, 6, 3, '2021-03-07 12:15:53');

-- ----------------------------
-- Table structure for check_info
-- ----------------------------
DROP TABLE IF EXISTS `check_info`;
CREATE TABLE `check_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `age` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '年龄',
  `temperature` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '体温',
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '人员检测信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of check_info
-- ----------------------------
INSERT INTO `check_info` VALUES (1, '张三', '23', '38', '13455556666', '九江');
INSERT INTO `check_info` VALUES (2, '李四', '34', '37.2', '15600001111', '上海');

-- ----------------------------
-- Table structure for comment_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_info`;
CREATE TABLE `comment_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '评价内容',
  `goodsId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属商品',
  `userId` bigint(20) NOT NULL DEFAULT 0 COMMENT '评价人id',
  `level` int(11) NULL DEFAULT NULL COMMENT '用户等级',
  `createTime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品评价表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment_info
-- ----------------------------
INSERT INTO `comment_info` VALUES (1, '不错', 1, 1, 1, '2021-11-15 21:12:53');
INSERT INTO `comment_info` VALUES (2, '这医用口罩不错', 4, 6, 3, '2021-03-07 11:06:56');
INSERT INTO `comment_info` VALUES (3, 'ZHEGESHANGPNIGHZENHAO1\n', 1, 6, 3, '2021-04-28 14:51:58');

-- ----------------------------
-- Table structure for comment_richtext_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_richtext_info`;
CREATE TABLE `comment_richtext_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论人',
  `foreignId` bigint(20) NULL DEFAULT NULL COMMENT '关联的模块id',
  `parentId` bigint(20) NULL DEFAULT 0 COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '防疫须知评论信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment_richtext_info
-- ----------------------------
INSERT INTO `comment_richtext_info` VALUES (1, '不错', '2021-11-15 21:12:07', 'superadmin', 1, 0);
INSERT INTO `comment_richtext_info` VALUES (2, '这个新闻写的好我涨了不少知识！！！', '2021-11-16 11:12:02', '张天志', 1, 0);
INSERT INTO `comment_richtext_info` VALUES (3, '软心', '2021-11-16 11:12:32', '张天志', 1, 0);
INSERT INTO `comment_richtext_info` VALUES (4, '好吧', '2021-12-23 23:05:54', '熊彬', 2, 0);
INSERT INTO `comment_richtext_info` VALUES (5, '涨知识了', '2021-12-29 10:23:17', '李四', 1, 0);
INSERT INTO `comment_richtext_info` VALUES (6, '这个品论真好', '2021-04-28 14:50:22', '熊彬', 2, 0);
INSERT INTO `comment_richtext_info` VALUES (7, '对方是否', '2021-04-28 14:50:38', '熊彬', 2, 0);

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '商品描述',
  `price` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品价格',
  `discount` double(10, 2) NULL DEFAULT 1.00 COMMENT '商品折扣',
  `sales` int(11) NOT NULL DEFAULT 0 COMMENT '商品销量',
  `hot` int(11) NOT NULL DEFAULT 0 COMMENT '商品点赞数',
  `recommend` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '否' COMMENT '是否是推荐',
  `count` int(11) NOT NULL DEFAULT 0 COMMENT '商品库存',
  `typeId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属类别',
  `fileIds` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品图片id，用英文逗号隔开',
  `userId` bigint(20) NOT NULL DEFAULT 0 COMMENT '评价人id',
  `level` int(11) NULL DEFAULT NULL COMMENT '用户等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品详情表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_info
-- ----------------------------
INSERT INTO `goods_info` VALUES (1, 'N95', '这是N95', 20.00, 0.80, 40, 1298, '否', 190, 1, '[1]', 1, 1);
INSERT INTO `goods_info` VALUES (2, '面罩', '这是面罩', 20.00, 0.80, 12, 8, '是', 198, 2, '[2]', 1, 1);
INSERT INTO `goods_info` VALUES (3, '防护服', '这是防护服', 100.00, 0.80, 24, 8, '是', 196, 3, '[3]', 1, 1);
INSERT INTO `goods_info` VALUES (4, '医用口罩', '这是医用口罩', 3.00, 0.90, 6, 32, '否', 194, 1, '[4]', 1, 1);

-- ----------------------------
-- Table structure for message_info
-- ----------------------------
DROP TABLE IF EXISTS `message_info`;
CREATE TABLE `message_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '留言名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '留言内容',
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '留言时间',
  `parentId` bigint(20) NULL DEFAULT 0 COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '在线交流信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message_info
-- ----------------------------
INSERT INTO `message_info` VALUES (1, 'superadmin', '这个社区真的太棒了', '2021-11-15 21:16:54', 0);
INSERT INTO `message_info` VALUES (2, 'superadmin', '那是！', '2021-11-15 21:17:12', 1);
INSERT INTO `message_info` VALUES (3, '张天志', '我好中意你啊！！！', '2021-11-16 11:10:12', 1);
INSERT INTO `message_info` VALUES (4, '张天志', '确实', '2021-11-16 20:47:25', 1);
INSERT INTO `message_info` VALUES (5, '张天志', '社区好软心', '2021-11-16 20:49:27', 0);
INSERT INTO `message_info` VALUES (6, 'bearProfessor', '建议社区应该加强管理', '2021-12-01 09:14:37', 0);
INSERT INTO `message_info` VALUES (7, 'superadmin', '4+85488+', '2021-12-23 19:41:44', 0);
INSERT INTO `message_info` VALUES (8, '李四', '输入', '2021-12-29 10:20:31', 0);
INSERT INTO `message_info` VALUES (9, '熊彬', 'this n community is so warm', '2021-04-28 14:48:22', 0);
INSERT INTO `message_info` VALUES (10, '熊彬', 'nihao', '2021-04-28 14:48:49', 6);

-- ----------------------------
-- Table structure for nx_system_file_info
-- ----------------------------
DROP TABLE IF EXISTS `nx_system_file_info`;
CREATE TABLE `nx_system_file_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `originName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '原始文件名',
  `fileName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '存储文件名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '文件信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nx_system_file_info
-- ----------------------------
INSERT INTO `nx_system_file_info` VALUES (1, 'N95.jpg', 'N951605442138834.jpg');
INSERT INTO `nx_system_file_info` VALUES (2, '面罩.jpg', '面罩1605442487573.jpg');
INSERT INTO `nx_system_file_info` VALUES (3, '防护服.jpg', '防护服1605442508251.jpg');
INSERT INTO `nx_system_file_info` VALUES (4, '已用口罩.jpg', '已用口罩1605442531802.jpg');

-- ----------------------------
-- Table structure for order_goods_rel
-- ----------------------------
DROP TABLE IF EXISTS `order_goods_rel`;
CREATE TABLE `order_goods_rel`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `orderId` bigint(20) NULL DEFAULT NULL COMMENT '订单ID',
  `goodsId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属商品',
  `count` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单商品关系映射表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_goods_rel
-- ----------------------------
INSERT INTO `order_goods_rel` VALUES (1, 1, 1, 30);
INSERT INTO `order_goods_rel` VALUES (2, 2, 2, 10);
INSERT INTO `order_goods_rel` VALUES (3, 3, 3, 20);
INSERT INTO `order_goods_rel` VALUES (4, 4, 1, 1);
INSERT INTO `order_goods_rel` VALUES (5, 5, 4, 1);
INSERT INTO `order_goods_rel` VALUES (6, 6, 1, 1);
INSERT INTO `order_goods_rel` VALUES (7, 7, 1, 1);
INSERT INTO `order_goods_rel` VALUES (9, 9, 2, 1);
INSERT INTO `order_goods_rel` VALUES (10, 10, 4, 1);
INSERT INTO `order_goods_rel` VALUES (12, 12, 4, 1);
INSERT INTO `order_goods_rel` VALUES (13, 13, 1, 1);
INSERT INTO `order_goods_rel` VALUES (14, 14, 1, 1);
INSERT INTO `order_goods_rel` VALUES (15, 15, 1, 2);
INSERT INTO `order_goods_rel` VALUES (16, 16, 1, 1);
INSERT INTO `order_goods_rel` VALUES (17, 17, 4, 1);
INSERT INTO `order_goods_rel` VALUES (19, 19, 2, 1);
INSERT INTO `order_goods_rel` VALUES (20, 19, 1, 1);
INSERT INTO `order_goods_rel` VALUES (21, 20, 3, 3);
INSERT INTO `order_goods_rel` VALUES (22, 21, 1, 1);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `orderId` bigint(20) NULL DEFAULT NULL COMMENT '订单ID',
  `totalPrice` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '总价格',
  `userId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属用户',
  `level` int(11) NULL DEFAULT NULL COMMENT '用户等级',
  `linkAddress` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系地址',
  `linkPhone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系电话',
  `linkMan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系人',
  `createTime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '未发货' COMMENT '订单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品订单信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (1, 111111, 480.00, 1, 1, '安徽省合肥市高新区', '18812337865', 'admin', '2021-11-15 17:42:13', '完成');
INSERT INTO `order_info` VALUES (2, 222222, 160.00, 1, 2, '上海市浦东新区', '18812337865', '张三', '2021-11-15 17:42:13', '完成');
INSERT INTO `order_info` VALUES (3, 333333, 320.00, 1, 3, '上海市长宁区', '18812337865', '李四', '2021-11-15 17:42:13', '完成');
INSERT INTO `order_info` VALUES (4, 12020111520363133, 16.00, 1, 1, '上海市', '18843232356', '管理员', '2021-11-15 20:36:13', '完成');
INSERT INTO `order_info` VALUES (5, 12020111521132628, 2.70, 1, 1, '上海市', '18843232356', '管理员', '2021-11-15 21:13:44', '完成');
INSERT INTO `order_info` VALUES (6, 22020122218279647, 16.00, 2, 3, '', '', '', '2021-12-22 18:27:56', '申请退款中');
INSERT INTO `order_info` VALUES (7, 22020122218538218, 16.00, 2, 3, '', '', '', '2021-12-22 18:53:10', '申请退款中');
INSERT INTO `order_info` VALUES (9, 22020122218553940, 16.00, 2, 3, '', '', '', '2021-12-22 18:55:24', '已取消');
INSERT INTO `order_info` VALUES (10, 22020122218568056, 2.70, 2, 3, '', '', '', '2021-12-22 18:56:48', '已退款');
INSERT INTO `order_info` VALUES (12, 62020122219436204, 2.70, 6, 3, '', '', '', '2021-12-22 19:43:57', '完成');
INSERT INTO `order_info` VALUES (13, 62020122318507327, 16.00, 6, 3, '', '', '', '2021-12-23 18:50:31', '完成');
INSERT INTO `order_info` VALUES (14, 62020122318540985, 16.00, 6, 3, '', '', '', '2021-12-23 18:54:47', '待发货');
INSERT INTO `order_info` VALUES (15, 62020122318568783, 32.00, 6, 3, '', '', '', '2021-12-23 18:56:03', '申请退款中');
INSERT INTO `order_info` VALUES (16, 12020122319426679, 16.00, 1, 1, '上海市', '18843232356', '管理员', '2021-12-23 19:42:44', '待发货');
INSERT INTO `order_info` VALUES (17, 62020122809593353, 2.70, 6, 3, '九江', '18317917076', 'bear', '2021-12-28 09:59:03', '待发货');
INSERT INTO `order_info` VALUES (19, 62020122810044522, 32.00, 6, 3, '九江', '18317917076', 'bear', '2021-12-28 10:04:34', '已取消');
INSERT INTO `order_info` VALUES (20, 72020122910156907, 240.00, 7, 3, '', '', '', '2021-12-29 10:15:34', '待收货');
INSERT INTO `order_info` VALUES (21, 62021030611210695, 16.00, 6, 3, '九江', '18317917076', 'bear', '2021-03-06 11:21:24', '已取消');

-- ----------------------------
-- Table structure for praise_richtext_info
-- ----------------------------
DROP TABLE IF EXISTS `praise_richtext_info`;
CREATE TABLE `praise_richtext_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `userId` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '点赞时间',
  `level` int(11) NULL DEFAULT NULL COMMENT '用户等级',
  `foreignId` bigint(20) NULL DEFAULT NULL COMMENT '关联的模块id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '防疫须知点赞信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of praise_richtext_info
-- ----------------------------
INSERT INTO `praise_richtext_info` VALUES (1, 1, '2021-11-15 21:11:58', 1, 1);
INSERT INTO `praise_richtext_info` VALUES (2, 1, '2021-11-16 11:12:40', 3, 1);
INSERT INTO `praise_richtext_info` VALUES (3, 2, '2021-12-22 18:22:47', 3, 1);
INSERT INTO `praise_richtext_info` VALUES (4, 1, '2021-02-25 17:41:49', 2, 1);
INSERT INTO `praise_richtext_info` VALUES (5, 6, '2021-04-28 10:31:46', 3, 1);
INSERT INTO `praise_richtext_info` VALUES (6, 6, '2021-04-28 14:50:51', 3, 2);

-- ----------------------------
-- Table structure for richtext_info
-- ----------------------------
DROP TABLE IF EXISTS `richtext_info`;
CREATE TABLE `richtext_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '公告内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '防疫须知信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of richtext_info
-- ----------------------------
INSERT INTO `richtext_info` VALUES (1, '新冠肺炎的预防和控制', '2021-11-15T20:35', '<h2><br></h2><p>1.新型冠状病毒</p><p><br></p><p>新型冠状病毒是指以前从未在人类中发现的冠状病毒新毒株。2019年12月导致武汉病毒性肺炎暴发疫情的病毒为新型冠状病毒，世界卫生组织将该病毒命名为COVID-19。</p><h2><br></h2><p>2.传染源</p><p><br></p><p>目前主要是新型冠状病毒感染的患者，无症状感染者也可能成为传染源。</p><p><br></p><p>3.传播途径</p><p>	</p><p>经呼吸道飞沫和密切接触传播是主要的传播途径，在相对封闭的环境中长时间暴露于高浓度气溶胶情况下存在经气溶胶传播的可能。</p><p>	</p><p>4.新冠肺炎的症状</p><p>	</p><p>以发热、乏力、干咳为主要表现。少数患者伴有鼻塞、流涕、腹泻等症状。重型病例多在一周后出现呼吸困难，严重者快速进展为急性呼吸窘迫综合征、脓毒症休克、难以纠正的代谢性酸中毒和出凝血功能障碍。值得注意的是重型、危重型患者病程中可为中低热，甚至无明显发热。</p><p>	</p><p>部分患者仅表现为低热、轻微乏力等，无肺炎表现，多在1周后恢复。</p><p>	</p><p>从目前收治的病例情况看，多数患者预后良好，儿童病例症状相对较轻，少数患者病情危重。死亡病例多见于老年人和有慢性基础疾病者。</p><p>	</p><p>5.新冠肺炎的预防</p><p>	（1）避免去疾病正在流行的地区。</p><p>	（2）减少到人员密集的公共场所活动，尤其是空气流动性差的地方，例如公共浴池、温泉、影院、网吧、KTV、 商场、车站、机场、码头、展览馆等。</p><p>	（3）不要接触、购买和食用野生动物(即野味)，避免前往售卖活体动物(禽类、海产品、野生动物等)的市场，禽肉蛋要充分煮熟后食用。</p><p>	（4）居室保持清洁，勤开窗，经常通风，每天2次，每次半小时。</p><p>	（5）随时保持手卫生。减少接触公共场所的公共物品和部位；从公共场所返回、咳嗽用手捂之后、饭前便后，用洗手液或香皂等流水洗手，或者使用含酒精成分的免洗洗手液；不确定手是否清洁时，避免用手接触口鼻眼；打喷嚏或咳嗽时用手肘衣服遮住口鼻。</p><p>	（6）建议外出佩戴口罩。外出前往公共场所、乘坐公共交通工具时，可佩戴一次性使用医用口罩，外出就医应佩戴医用外科口罩或N95口罩。</p><p>	（7）保持良好卫生和健康习惯。家庭成员不共用毛巾，保持家居、餐具清洁，勤晒衣被。不随地吐痰，口鼻分泌物用纸巾包好，弃置于有盖垃圾箱内。注意营养，勤运动。</p><p>	（8）主动做好个人及家庭成员的健康监测。建议早晚测量体温各一次。</p><p>	（9）准备常用物资。家庭应常备体温计和一次性使用医用口罩、家用消毒用品等物品。也可备有医用外科口罩或N95口罩供必要时外出使用。</p><p>	（10）家庭成员出现可疑症状(包括发热、咳嗽、咽痛、胸闷等)时，及时就诊。</p><p>	观察是否有异常反应发生。aaabb</p>');

-- ----------------------------
-- Table structure for submit_info
-- ----------------------------
DROP TABLE IF EXISTS `submit_info`;
CREATE TABLE `submit_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '提交时间',
  `subreason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '来由',
  `userName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '提交人',
  `level` int(11) NULL DEFAULT NULL COMMENT '用户等级',
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  `reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '理由',
  `verifyName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '外来人员报备信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of submit_info
-- ----------------------------
INSERT INTO `submit_info` VALUES (1, '赵大刚', '2021-11-15 19:09:52', '张三亲戚，来做客', 'superadmin', 1, '审核通过', '体温检查通过', 'superadmin');
INSERT INTO `submit_info` VALUES (2, '赵千里', '2021-11-15 21:14:39', '我家大爷要过来玩', 'superadmin', 1, '审核通过', '测试体温通过', 'superadmin');
INSERT INTO `submit_info` VALUES (3, '1', '2021-12-23 00:00:00', '1', 'superadmin', 1, '待审核', '', '');
INSERT INTO `submit_info` VALUES (4, 'aaaa', '2021-12-29 10:21:08', '走亲戚', '李四', 3, '待审核', '', '');
INSERT INTO `submit_info` VALUES (5, '张三来访', '2021-04-28 14:49:26', '走亲戚', '熊彬', 3, '待审核', '', '');

-- ----------------------------
-- Table structure for type_info
-- ----------------------------
DROP TABLE IF EXISTS `type_info`;
CREATE TABLE `type_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型名称',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '类型描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品类别表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type_info
-- ----------------------------
INSERT INTO `type_info` VALUES (1, '口罩', '这是口罩');
INSERT INTO `type_info` VALUES (2, '面罩', '这是面罩');
INSERT INTO `type_info` VALUES (3, '防护服', '这是防护服');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证',
  `account` double(10, 2) NULL DEFAULT 0.00 COMMENT '余额',
  `level` int(11) NOT NULL DEFAULT 3 COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '张天志', 'e10adc3949ba59abbe56e057f20f883e', '老王', '男', 22, '2021-11-15 17:42:13', '18843232356', '九江', 'aa@163.com', '342425199001116372', 0.00, 3);
INSERT INTO `user_info` VALUES (2, 'bearProfessor', 'e10adc3949ba59abbe56e057f20f883e', NULL, '男', NULL, NULL, NULL, NULL, NULL, NULL, 168.00, 3);
INSERT INTO `user_info` VALUES (3, '张三', 'ee11cbb19052e40b07aac0ca060c23ee', NULL, '女', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `user_info` VALUES (6, '熊彬', 'e10adc3949ba59abbe56e057f20f883e', 'bear', '男', 23, NULL, '18317917076', '九江', '819122194@qq.com', '3601211999905145814', 30.60, 3);
INSERT INTO `user_info` VALUES (7, '李四', '202cb962ac59075b964b07152d234b70', NULL, '男', NULL, NULL, NULL, NULL, NULL, NULL, 90.00, 3);

SET FOREIGN_KEY_CHECKS = 1;