/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : 123

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 12/06/2022 17:34:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for c
-- ----------------------------
DROP TABLE IF EXISTS `c`;
CREATE TABLE `c`  (
  `中风险地区` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c
-- ----------------------------
INSERT INTO `c` VALUES ('　　二. 中风险地区 29个');
INSERT INTO `c` VALUES ('　　☑ 上海市：24个');
INSERT INTO `c` VALUES ('　　松江区方松街道滨湖路585弄');
INSERT INTO `c` VALUES ('　　浦东新区花木街道丁香路910弄');
INSERT INTO `c` VALUES ('　　闵行区吴泾镇剑川路165号');
INSERT INTO `c` VALUES ('　　浦东新区惠南镇梅花新邨');
INSERT INTO `c` VALUES ('　　浦东新区花木街道银霄路39弄');
INSERT INTO `c` VALUES ('　　静安区曹家渡街道武定西路1189号');
INSERT INTO `c` VALUES ('　　静安区天目西路街道芷江西路593弄');
INSERT INTO `c` VALUES ('　　黄浦区瑞金二路街道13街坊(巨鹿路以南，进贤路以北，茂名南路以西，陕西南路以东合围地块)');
INSERT INTO `c` VALUES ('　　徐汇区湖南路街道新乐路58弄');
INSERT INTO `c` VALUES ('　　宝山区大场镇乾溪一村小区');
INSERT INTO `c` VALUES ('　　宝山区杨行镇蕰川路1498弄');
INSERT INTO `c` VALUES ('　　虹口区江湾镇街道池沟路60弄小区');
INSERT INTO `c` VALUES ('　　虹口区北外滩街道昆明路56号');
INSERT INTO `c` VALUES ('　　静安区大宁路街道广延路1188弄');
INSERT INTO `c` VALUES ('　　徐汇区天平路街道永嘉路172弄住宅小区(含永嘉路172弄、170号、166弄1-3号)');
INSERT INTO `c` VALUES ('　　徐汇区田林街道田林十一村(多层住宅区)');
INSERT INTO `c` VALUES ('　　宝山区高境镇逸仙路1588弄');
INSERT INTO `c` VALUES ('　　静安区共和新路街道谈家桥路163弄');
INSERT INTO `c` VALUES ('　　静安区曹家渡街道余姚路327号');
INSERT INTO `c` VALUES ('　　浦东新区花木街道樱花路801弄');
INSERT INTO `c` VALUES ('　　宝山区张庙街道泗塘一村四号地块');
INSERT INTO `c` VALUES ('　　闵行区莘庄镇报春路388弄新梅花苑小区');
INSERT INTO `c` VALUES ('　　闵行区浦江镇召楼路2056弄博雅苑小区');
INSERT INTO `c` VALUES ('　　徐汇区湖南路街道淮海中路1352号-1372号');
INSERT INTO `c` VALUES ('　　☑ 北京市：2个');
INSERT INTO `c` VALUES ('　　朝阳区崔各庄乡京旺家园第二社区');
INSERT INTO `c` VALUES ('　　朝阳区十八里店乡小武基村');
INSERT INTO `c` VALUES ('　　☑ 河北省：1个');
INSERT INTO `c` VALUES ('　　廊坊市永清县海森威工业小区');
INSERT INTO `c` VALUES ('　　☑ 辽宁省：2个');
INSERT INTO `c` VALUES ('　　丹东市振兴区锦绣花园三期');
INSERT INTO `c` VALUES ('　　丹东市元宝区御景苑回迁楼区(御景苑41号楼、42号楼)');

-- ----------------------------
-- Table structure for chengce
-- ----------------------------
DROP TABLE IF EXISTS `chengce`;
CREATE TABLE `chengce`  (
  `chengce` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chengce
-- ----------------------------
INSERT INTO `chengce` VALUES ('　　政策来源：2022年5月4日，北京市新型冠状病毒肺炎疫情防控工作新闻发布会');
INSERT INTO `chengce` VALUES ('　　为更好落实“外防输入、内防反弹”总策略和“动态清零”总方针，进一步科学精准做好疫情防控工作，根据奥密克戎变异株潜伏期短、临床症状较轻的特点，首都严格进京管理联防联控协调机制决定，调整本市有关风险人员隔离管理措施。');
INSERT INTO `chengce` VALUES ('　　一、关于密接、次密和高风险人群：');
INSERT INTO `chengce` VALUES ('　　•密接人员调整为实施“10天集中隔离+7天居家隔离”;');
INSERT INTO `chengce` VALUES ('　　•次密人员实行“7天居家隔离”，不符合居家隔离条件的实行“7天集中隔离”;');
INSERT INTO `chengce` VALUES ('　　•高风险人群实行“10天居家隔离+7天健康监测”。期间，按规范进行核酸检测和抗原自测。');
INSERT INTO `chengce` VALUES ('　　二、关于入境人员：');
INSERT INTO `chengce` VALUES ('　　入境口岸为北京的，调整为实施“10天集中隔离+7天居家隔离”。');
INSERT INTO `chengce` VALUES ('　　•10天集中隔离期满后，若目的地为北京，需闭环转运至社区，实施7天居家隔离，在京无固定居所、不具备居家隔离条件的继续实施4天集中隔离;');
INSERT INTO `chengce` VALUES ('　　•若目的地不为北京，则需继续实施4天集中隔离，之后方可离京。隔离期间，按规范进行核酸检测与抗原自测。');
INSERT INTO `chengce` VALUES ('　　入境口岸为国内其他地区的——');
INSERT INTO `chengce` VALUES ('　　•若在当地集中隔离满14天，即可参照国内人员政策进京;');
INSERT INTO `chengce` VALUES ('　　•不满14天，原则上不得进京;');
INSERT INTO `chengce` VALUES ('　　•不满14天进京的，居家隔离补足14天，不具备居家隔离条件的进行集中隔离。');
INSERT INTO `chengce` VALUES ('　　上述政策措施自发布之日起执行。');
INSERT INTO `chengce` VALUES ('　　对于入境未满14天人员将继续开展大数据监测预警，民航铁路部门将对此类进京人员进行购票限制，“北京健康宝”会弹窗提示。请有入境进京计划的朋友，合理安排行程，严格遵守首都防疫规定。');
INSERT INTO `chengce` VALUES ('手机访问 北京本地宝首页');

-- ----------------------------
-- Table structure for s
-- ----------------------------
DROP TABLE IF EXISTS `s`;
CREATE TABLE `s`  (
  `高风险地区` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s
-- ----------------------------
INSERT INTO `s` VALUES ('　　一. 高风险地区 8个');
INSERT INTO `s` VALUES ('　　☑ 内蒙古自治区：8个');
INSERT INTO `s` VALUES ('　　锡林郭勒盟二连浩特市北疆社区');
INSERT INTO `s` VALUES ('　　锡林郭勒盟二连浩特市西城社区');
INSERT INTO `s` VALUES ('　　锡林郭勒盟二连浩特市锡林社区');
INSERT INTO `s` VALUES ('　　锡林郭勒盟二连浩特市东城社区');
INSERT INTO `s` VALUES ('　　锡林郭勒盟二连浩特市额仁社区');
INSERT INTO `s` VALUES ('　　锡林郭勒盟二连浩特市呼和社区');
INSERT INTO `s` VALUES ('　　锡林郭勒盟二连浩特市乌兰社区');

-- ----------------------------
-- Table structure for 高风险
-- ----------------------------
DROP TABLE IF EXISTS `高风险`;
CREATE TABLE `高风险`  (
  `高风险地区` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 高风险
-- ----------------------------
INSERT INTO `高风险` VALUES ('　　一. 高风险地区 8个');
INSERT INTO `高风险` VALUES ('　　☑ 内蒙古自治区：8个');
INSERT INTO `高风险` VALUES ('　　锡林郭勒盟二连浩特市北疆社区');
INSERT INTO `高风险` VALUES ('　　锡林郭勒盟二连浩特市西城社区');
INSERT INTO `高风险` VALUES ('　　锡林郭勒盟二连浩特市锡林社区');
INSERT INTO `高风险` VALUES ('　　锡林郭勒盟二连浩特市东城社区');
INSERT INTO `高风险` VALUES ('　　锡林郭勒盟二连浩特市额仁社区');
INSERT INTO `高风险` VALUES ('　　锡林郭勒盟二连浩特市呼和社区');
INSERT INTO `高风险` VALUES ('　　锡林郭勒盟二连浩特市乌兰社区');
INSERT INTO `高风险` VALUES ('　　锡林郭勒盟二连浩特市南苑社区');
INSERT INTO `高风险` VALUES ('　　二. 中风险地区 29个');
INSERT INTO `高风险` VALUES ('　　☑ 上海市：24个');
INSERT INTO `高风险` VALUES ('　　松江区方松街道滨湖路585弄');
INSERT INTO `高风险` VALUES ('　　浦东新区花木街道丁香路910弄');
INSERT INTO `高风险` VALUES ('　　闵行区吴泾镇剑川路165号');
INSERT INTO `高风险` VALUES ('　　浦东新区惠南镇梅花新邨');
INSERT INTO `高风险` VALUES ('　　浦东新区花木街道银霄路39弄');
INSERT INTO `高风险` VALUES ('　　静安区曹家渡街道武定西路1189号');
INSERT INTO `高风险` VALUES ('　　静安区天目西路街道芷江西路593弄');
INSERT INTO `高风险` VALUES ('　　黄浦区瑞金二路街道13街坊(巨鹿路以南，进贤路以北，茂名南路以西，陕西南路以东合围地块)');
INSERT INTO `高风险` VALUES ('　　徐汇区湖南路街道新乐路58弄');
INSERT INTO `高风险` VALUES ('　　宝山区大场镇乾溪一村小区');
INSERT INTO `高风险` VALUES ('　　宝山区杨行镇蕰川路1498弄');
INSERT INTO `高风险` VALUES ('　　虹口区江湾镇街道池沟路60弄小区');
INSERT INTO `高风险` VALUES ('　　虹口区北外滩街道昆明路56号');
INSERT INTO `高风险` VALUES ('　　静安区大宁路街道广延路1188弄');
INSERT INTO `高风险` VALUES ('　　徐汇区天平路街道永嘉路172弄住宅小区(含永嘉路172弄、170号、166弄1-3号)');
INSERT INTO `高风险` VALUES ('　　徐汇区田林街道田林十一村(多层住宅区)');
INSERT INTO `高风险` VALUES ('　　宝山区高境镇逸仙路1588弄');
INSERT INTO `高风险` VALUES ('　　静安区共和新路街道谈家桥路163弄');
INSERT INTO `高风险` VALUES ('　　静安区曹家渡街道余姚路327号');
INSERT INTO `高风险` VALUES ('　　浦东新区花木街道樱花路801弄');
INSERT INTO `高风险` VALUES ('　　宝山区张庙街道泗塘一村四号地块');
INSERT INTO `高风险` VALUES ('　　闵行区莘庄镇报春路388弄新梅花苑小区');
INSERT INTO `高风险` VALUES ('　　闵行区浦江镇召楼路2056弄博雅苑小区');
INSERT INTO `高风险` VALUES ('　　徐汇区湖南路街道淮海中路1352号-1372号');
INSERT INTO `高风险` VALUES ('　　☑ 北京市：2个');
INSERT INTO `高风险` VALUES ('　　朝阳区崔各庄乡京旺家园第二社区');
INSERT INTO `高风险` VALUES ('　　朝阳区十八里店乡小武基村');
INSERT INTO `高风险` VALUES ('　　☑ 河北省：1个');
INSERT INTO `高风险` VALUES ('　　廊坊市永清县海森威工业小区');
INSERT INTO `高风险` VALUES ('　　☑ 辽宁省：2个');
INSERT INTO `高风险` VALUES ('　　丹东市振兴区锦绣花园三期');
INSERT INTO `高风险` VALUES ('　　丹东市元宝区御景苑回迁楼区(御景苑41号楼、42号楼)');

SET FOREIGN_KEY_CHECKS = 1;
