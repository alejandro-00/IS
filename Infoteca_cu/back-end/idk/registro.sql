/*
Navicat MySQL Data Transfer

Source Server         : Local_Server
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : registro

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-03-15 18:03:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for alumnos
-- ----------------------------
DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE `alumnos` (
  `MATRICULA` int(11) NOT NULL,
  `NOMBRE` varchar(40) NOT NULL,
  `PATERNO` varchar(20) NOT NULL,
  `MATERNO` varchar(20) DEFAULT NULL,
  `SEXO` varchar(1) NOT NULL,
  PRIMARY KEY (`MATRICULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alumnos
-- ----------------------------
INSERT INTO `alumnos` VALUES ('12820819', '236WNI14ZR55', '4ZJTYJ81QZ2C', '5MSTIKZ7VIGI', 'H');
INSERT INTO `alumnos` VALUES ('14552478', '3W8176CUP0Q8', 'S4CGKLF84R7', '4NFW3Z5DVI8D', 'M');
INSERT INTO `alumnos` VALUES ('15306317', 'GUADALUPE ALEJANDRO', 'PÉREZ', 'CAMACHO', 'H');
INSERT INTO `alumnos` VALUES ('15570464', '3ZQP4SBMSHDC', '1HSU1EM88A28', '201AZDRG825L', 'M');
INSERT INTO `alumnos` VALUES ('15718813', '1GWFLO5OGMG9', '1AE8Y1ODBHM5', '1FZV243YB7ZK', 'M');
INSERT INTO `alumnos` VALUES ('16395153', '3ST49N0DBX8P', '5PAXSMVTYSLX', '4ZPF2NLKMSF9', 'H');
INSERT INTO `alumnos` VALUES ('16771918', '2S0GZAQXUNSP', '1I8RLWU2IVUZ', '5RLCKQFLH60O', 'M');
INSERT INTO `alumnos` VALUES ('17025629', '21BVMQVR5JEN', '3EGS6SAQLTPX', '5LY1MOS3DOWA', 'M');
INSERT INTO `alumnos` VALUES ('17653405', '2144AAOOZ78L', '39ZS7C24B7YE', '4EEZO4EG7FLF', 'M');
INSERT INTO `alumnos` VALUES ('17687397', '5RHLD52ZOGQP', '3919X83TFFJI', '58IABXKB25GG', 'M');
INSERT INTO `alumnos` VALUES ('17962620', '4KUX0Z4SLYUM', '3U2T4IIQZJIB', '5556ZW2BZ8I9', 'H');
INSERT INTO `alumnos` VALUES ('18125110', '37H0CEDY1FOL', '2K008Q35MQX2', '35M5WTJX3J2H', 'H');
INSERT INTO `alumnos` VALUES ('18751645', '59O8VDEKLEXZ', '1B8DC07L39XZ', '2KBOLJC7R27Z', 'H');
INSERT INTO `alumnos` VALUES ('18807416', '2HX5OTB6VRMD', '4K0OJCAI4EP1', '3SX1NL8SOV07', 'M');
INSERT INTO `alumnos` VALUES ('19592834', '3QU8Z7RW6BV4', '4II0AM5IOJ88', '5P5EA4UNY0CY', 'H');
INSERT INTO `alumnos` VALUES ('19663470', 'WNSHRVBTG1K', '3YOG5FWQA0ON', '4ZN2T66S40VD', 'H');
INSERT INTO `alumnos` VALUES ('20731664', '1N3SNAU2MUZ', '4KV731A4QNB7', '4ZPPFDNK55K4', 'M');
INSERT INTO `alumnos` VALUES ('22651171', '58FZMWDOQEL1', '3HFOSNLZVSK', '34I5BQN1W7DC', 'H');
INSERT INTO `alumnos` VALUES ('23287882', '1C89HK7YKXML', '4HJXE2X2QYYL', '2OTJJNNNAPZ', 'M');
INSERT INTO `alumnos` VALUES ('24092245', '4LVOTO0U9U83', '2PH4TV5X3HMI', 'CY2FMOWGV0', 'M');
INSERT INTO `alumnos` VALUES ('25016547', '40V7OGKSN7HG', '19BFV0IKZTJ', '5TSHZICYIY2V', 'M');
INSERT INTO `alumnos` VALUES ('26124152', '2S4EJTXY74VS', '5UQVCKMRUS94', '2J9NST2B9JT1', 'H');
INSERT INTO `alumnos` VALUES ('27506261', 'NTXTSB064H4', '2KWOSDL5EJG', '4LZ8RAQHXOZN', 'M');
INSERT INTO `alumnos` VALUES ('27812707', '4KQRJW3147SV', '1IZ603N50NXC', 'R8GDQ7H39BC', 'M');
INSERT INTO `alumnos` VALUES ('29454575', '6Q3J7KGI9C8', '3ZGW90A63QQ7', '1BGCM2ELWCXD', 'H');
INSERT INTO `alumnos` VALUES ('30430091', '3TVNKGV0ZVNF', '34G0WPXA7D9Z', '3V3BFXQGVFYD', 'M');
INSERT INTO `alumnos` VALUES ('30766227', '58G97S0A2YLO', '4IYRB1PJRA4L', 'R4GFAIZ6494', 'H');
INSERT INTO `alumnos` VALUES ('32265444', '550N3A2VXQ3Q', '39OS5QBX4IAU', 'WTX79YT4UK8', 'H');
INSERT INTO `alumnos` VALUES ('33249929', '1DCZXGQZZ41A', '2OCGQBNMYEU5', '3C68IYVO5EZO', 'H');
INSERT INTO `alumnos` VALUES ('33907831', '4ZSVVIU5Q1P', '2PVB40BX0819', '1CNAVLVZRMAK', 'M');
INSERT INTO `alumnos` VALUES ('34653673', '1VIFZK5BI678', '4GDD3JJ9DZIB', '4HS845LXP119', 'M');
INSERT INTO `alumnos` VALUES ('34938542', '51NZX36X6WCG', '1WH0UPJQEAIU', 'A9USOMC7626', 'M');
INSERT INTO `alumnos` VALUES ('37387022', '1AG1W25TCTSL', '19XLA1JLWCVR', '25EZG9R7WR8H', 'H');
INSERT INTO `alumnos` VALUES ('37406399', '220HFD451SJT', '5NX0U3SXOXY5', '35NLB1RYN3CW', 'M');
INSERT INTO `alumnos` VALUES ('37449057', 'RETCUGW5ZM9', '55DHR4XPWJXE', '5495AEHCFTZ3', 'M');
INSERT INTO `alumnos` VALUES ('37693066', '1H3WRDI48JD4', '2RXMG8145XVV', '3U3LYQUD7NND', 'M');
INSERT INTO `alumnos` VALUES ('38440301', '5MYNAJJZIAYI', '3V9C6298KGLE', '2R47CF1OLWO3', 'M');
INSERT INTO `alumnos` VALUES ('39762211', '2ORA5WZDLUIW', '234SNKL3AII7', '2NH42HRIZW94', 'H');
INSERT INTO `alumnos` VALUES ('41939623', '588ESVI91NM9', '224M7SVKR22X', 'UL8T5HVIE1M', 'M');
INSERT INTO `alumnos` VALUES ('42977653', '5LXUYS8MZJCW', '2N8UF32JI8WP', '37T49G4KO4QD', 'H');
INSERT INTO `alumnos` VALUES ('43111782', '1J9Q6GD3N1C', 'IA3YKL6BIA', '5VUVAJFLOQ98', 'M');
INSERT INTO `alumnos` VALUES ('43847562', '5MVYQXFD6EB6', '2NITQDDFT3RE', '38L9I4MGJCI5', 'H');
INSERT INTO `alumnos` VALUES ('44222207', '1GNL54OPBSX9', '1CB3W6YSF1ZI', '211PWN802G31', 'H');
INSERT INTO `alumnos` VALUES ('45510007', '37T4R4GKAY7D', '36QPHO51TYKQ', '3DBFGOP6B0G', 'M');
INSERT INTO `alumnos` VALUES ('46534223', '1YLD2R3LQBU0', '2NMCLCQTIBV8', '1J4A9AXOZ748', 'H');
INSERT INTO `alumnos` VALUES ('48502409', '4GDZZ3BJ88EA', '2HYWTHUGZRCP', '52MUE0YFZ499', 'M');
INSERT INTO `alumnos` VALUES ('48507419', '3CDW1MKARWEP', '3U1HY5Z9BJXW', '2LA6VRAIVWGK', 'H');
INSERT INTO `alumnos` VALUES ('49717243', '40MTKN9WR09O', 'SF0BFBAVA6W', '4E1HGN6LS75T', 'H');
INSERT INTO `alumnos` VALUES ('50762307', '2OVJ5H6V7D57', '16UUS33DOPC', '3VBUR8AS7LXI', 'H');
INSERT INTO `alumnos` VALUES ('51440059', '38T8KZHD7V08', '22CRELP8RM08', '18VYG3873D62', 'M');
INSERT INTO `alumnos` VALUES ('52115308', '4L32WTXSHHQV', '345YUKE143QO', 'VHN1DZ35858', 'H');
INSERT INTO `alumnos` VALUES ('52802444', 'Q241E8WSJJJ', '1GNLHWII0E2D', '5QD2WJUPX2YW', 'M');
INSERT INTO `alumnos` VALUES ('53047164', '4FJN0843TZQO', '1BGCNAPR2YLF', '5RBGAWRHBG60', 'H');
INSERT INTO `alumnos` VALUES ('53460822', '25B95B8TI1EE', '36EP7AH9JNMM', '2MA58F3ITTE8', 'M');
INSERT INTO `alumnos` VALUES ('55004998', '1IOA9MA3TWJ', '3QOLNO91052F', '5TMEPUH2FKBK', 'H');
INSERT INTO `alumnos` VALUES ('55289517', '58JX7G5H3WKL', '5Q57TQ2ZQ5K5', '4NECY774UP0', 'H');
INSERT INTO `alumnos` VALUES ('57061628', '22247UR0WEP6', '1FJU8MGXIJL9', '1A9WNO8KNWKT', 'H');
INSERT INTO `alumnos` VALUES ('58630715', '3ECFS1DNBW3T', '22CP87Q1ORDX', '5XR5DG4DP9O', 'H');
INSERT INTO `alumnos` VALUES ('61680471', '1VQM5RAFKQ5H', '53SME7RHSEF6', '1H3Q278GPS99', 'M');
INSERT INTO `alumnos` VALUES ('62391456', '4N46AVKJJ555', '1CMV9RU6LX9U', '50FAMR4I1GZD', 'H');
INSERT INTO `alumnos` VALUES ('62906684', 'WSED22OTQHC', '1C6RB1FFNLOS', '3B1RBOYN84LX', 'H');
INSERT INTO `alumnos` VALUES ('63446454', '3D43KSG72UVA', 'R6J19ZKVPZX', '5UMMCE3Q0GCB', 'H');
INSERT INTO `alumnos` VALUES ('64019518', '5SPVK7BOQ2QT', '4S49LVTVL50', '1XZE7DFDXUEH', 'M');
INSERT INTO `alumnos` VALUES ('65081459', '37SET44ORPMG', '567MHFYB84LR', '4E1A780KC8T0', 'M');
INSERT INTO `alumnos` VALUES ('65471593', '4JMXK2C6BBJ3', '5TO9PE6BZFLI', '3D3W3WESYSXK', 'M');
INSERT INTO `alumnos` VALUES ('65872789', '4D4JEW29DSH6', '3YORL2LNRO4T', '1GSBJ8ETDL40', 'H');
INSERT INTO `alumnos` VALUES ('66972791', '91HALYDMH5J', '36GJF2SIZRN9', '238MK4KKX4O0', 'H');
INSERT INTO `alumnos` VALUES ('68443876', '58A0JWB7K7XS', '2PKXZMN2WV5O', '4EB6ZLUIWW4A', 'H');
INSERT INTO `alumnos` VALUES ('71584269', '5LUC2UA5FDUL', '2PVNIOUOAHPN', '3YOUOVTYCQLY', 'M');
INSERT INTO `alumnos` VALUES ('72068293', '37QLVE5P67XH', '3SXDIM4SI7YE', '35G0IPG8MSZQ', 'M');
INSERT INTO `alumnos` VALUES ('72739027', '3XE63EACP1EL', '1DEQL4GP7HGQ', '1ACC098LVITQ', 'H');
INSERT INTO `alumnos` VALUES ('73065636', '1A6G5MTB8BC4', '5USDKSLRN75E', '1GPTB1E1L5SZ', 'H');
INSERT INTO `alumnos` VALUES ('73502044', '4JYRQ8VFZIJ9', '4G9KN16OSLUW', '211SU1T5V1LO', 'M');
INSERT INTO `alumnos` VALUES ('74249524', '38QMDTO13HKP', '3E42WCTAQBLN', '1WQWQV4U94BA', 'M');
INSERT INTO `alumnos` VALUES ('74279026', '19Y9RQ7JLR1X', '5NYS6366A7W9', '5TSSBKIJV6MV', 'H');
INSERT INTO `alumnos` VALUES ('74685974', '4TJR8JL5HQL', '98TWM5EQPXY', '1I60UNMHOVGE', 'H');
INSERT INTO `alumnos` VALUES ('75145004', '573DV63XYFK2', 'VW23G7LISKY', '1YZVAIGGKN8G', 'H');
INSERT INTO `alumnos` VALUES ('76442221', '5U091L1GTMEK', '40L1GN34WCQX', '35NOJQSWHU2M', 'M');
INSERT INTO `alumnos` VALUES ('77161808', '548YKYF8QV90', '1L7EQ6QMWI0', '38SJ8AGS13Z5', 'M');
INSERT INTO `alumnos` VALUES ('77659686', '5N2EP9A96N2H', '1YN77XEFC4R8', '5MSBGWTTGKGM', 'M');
INSERT INTO `alumnos` VALUES ('78217910', '72Q469Y2FZT', '76MKUNFVZMP', 'R0HXQZB119O', 'M');
INSERT INTO `alumnos` VALUES ('79301917', '1Z2ZXX1PYAG1', '25HHSAKR0GVX', '5RB9DCSEU30X', 'M');
INSERT INTO `alumnos` VALUES ('80350216', '3S0739MSXYUF', '4IMH2BMGN9DU', '5MY6K4MCRSIH', 'H');
INSERT INTO `alumnos` VALUES ('80794867', '3DI3YKN5CKS1', '3ECK68SS2X77', '191TE2MCB2DW', 'H');
INSERT INTO `alumnos` VALUES ('81332632', '3H1JJNLRXKD', '4MXI7J2AZF2G', '553LH98UGPRS', 'M');
INSERT INTO `alumnos` VALUES ('82035525', '5UOCSZW038XL', '359LHH1B74MT', '3RYKHWCZ5248', 'M');
INSERT INTO `alumnos` VALUES ('84386963', '24P3C93OUO2G', '2PP6Z4GQLACH', '18ZPHEOTJ0JB', 'M');
INSERT INTO `alumnos` VALUES ('85419300', 'VRMAC2CM6N9', '2KBPO5KJ79O8', '3D0CYFX8VU9C', 'M');
INSERT INTO `alumnos` VALUES ('85654239', '3ZED5Q6VZASV', '58FYWC95XSF7', '24926HPNLS6L', 'H');
INSERT INTO `alumnos` VALUES ('85909959', '2IRLB8NIX3K', '3QGG1JCQ06GT', '5OD2PD1FVZHR', 'M');
INSERT INTO `alumnos` VALUES ('85952965', '3UZ56O8TG7IQ', '3YSPVT7T3XX1', '2PPHVQZ8RRCP', 'H');
INSERT INTO `alumnos` VALUES ('86555991', '1ZZGPZHFCTQ5', 'URU0G6O49VW', '565AAI9FXWBJ', 'M');
INSERT INTO `alumnos` VALUES ('91171715', '54X7VOLP6EP0', '39YUN08WJKAX', '1BC85XFDQEKK', 'H');
INSERT INTO `alumnos` VALUES ('91892759', '3QGFFXJKCV67', '1H1Z9Y9B5C4X', '3D87APAVQACL', 'H');
INSERT INTO `alumnos` VALUES ('92914086', '58JTPUT5H5WH', '3YA1ZG0WJY12', '40LIE542XGA9', 'H');
INSERT INTO `alumnos` VALUES ('94597536', '1WEQ9ZWHKCZG', '4HBR5JC8KIVE', '4JVB69ROQVEY', 'M');
INSERT INTO `alumnos` VALUES ('95901767', '21812Y54AXE4', '5O6MWQT5TNJP', '39VF5RI1A21G', 'M');
INSERT INTO `alumnos` VALUES ('96089737', '74LT5PP3ZB1', '2OV1PVZPEXWL', 'R4XB76XL8EO', 'H');
INSERT INTO `alumnos` VALUES ('97053285', '4FF87JQG3DU8', '4G7Q5C1MZOZA', '2PNCM5C18B2Y', 'H');
INSERT INTO `alumnos` VALUES ('97294644', '3U549JYEKMNW', '1GTM5G9QTHJ2', '2NKC0843XFK3', 'H');
INSERT INTO `alumnos` VALUES ('98654615', '35FT46BW0AHY', '3SRC3L5WJNZZ', '3AZ5NP4V4EC6', 'M');

-- ----------------------------
-- Table structure for carrera
-- ----------------------------
DROP TABLE IF EXISTS `carrera`;
CREATE TABLE `carrera` (
  `ID_C` int(11) NOT NULL,
  `N_C` varchar(50) NOT NULL,
  `ID_E` int(11) NOT NULL,
  PRIMARY KEY (`ID_C`,`ID_E`),
  KEY `FK_ASS_1` (`ID_E`) USING BTREE,
  CONSTRAINT `FK_ASS_1` FOREIGN KEY (`ID_E`) REFERENCES `escuelas` (`ID_E`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carrera
-- ----------------------------
INSERT INTO `carrera` VALUES ('174', 'INGENIERIA EN SISTEMAS COMPUTACIONALES', '197');
INSERT INTO `carrera` VALUES ('182', 'DISEÑO GRAFICO', '200');
INSERT INTO `carrera` VALUES ('278', 'ARTES PLASTICAS', '200');
INSERT INTO `carrera` VALUES ('291', 'INGENIERIA CIVIL', '237');
INSERT INTO `carrera` VALUES ('311', 'INGENIERÍA MECANICA', '237');
INSERT INTO `carrera` VALUES ('315', 'INGENIERIA INDUSTRIAL', '237');
INSERT INTO `carrera` VALUES ('324', 'MEDICINA', '653');
INSERT INTO `carrera` VALUES ('411', 'LICENCIATURA EN QUIMICA FARMACOBIOLOGICA', '815');
INSERT INTO `carrera` VALUES ('496', 'INGENIERIA AUTOMOTRIS', '197');
INSERT INTO `carrera` VALUES ('545', 'INGENIERIA EN ELECTRONICA Y COMUNICACIONES', '197');
INSERT INTO `carrera` VALUES ('595', 'ARQUITECTURA', '136');
INSERT INTO `carrera` VALUES ('637', 'LICENCIATURA EN JURISPRUDENCIA', '877');
INSERT INTO `carrera` VALUES ('694', 'INGENIERÍA INDUSTRIAL Y DE SISTEMAS', '197');
INSERT INTO `carrera` VALUES ('822', 'ENFENRMERÍA', '674');
INSERT INTO `carrera` VALUES ('927', 'MUSICA GENERAL', '414');
INSERT INTO `carrera` VALUES ('946', 'INGENIERIA EN MECATRONICA', '237');
INSERT INTO `carrera` VALUES ('957', 'INGENIERIA QUIMICA', '815');
INSERT INTO `carrera` VALUES ('980', 'LICENCIATURA EN PSICOLOGIA', '423');
INSERT INTO `carrera` VALUES ('999', 'INGENIERIA EN TECNOLOGIAS DE LA COMUNICACION', '197');

-- ----------------------------
-- Table structure for cursa
-- ----------------------------
DROP TABLE IF EXISTS `cursa`;
CREATE TABLE `cursa` (
  `MATRICULA` int(11) NOT NULL,
  `ID_C` int(11) NOT NULL,
  PRIMARY KEY (`MATRICULA`,`ID_C`),
  KEY `FK_ASSOCIATION_2` (`ID_C`),
  KEY `FK_ASSOCIATION_1` (`MATRICULA`) USING BTREE,
  CONSTRAINT `FK_ASSOCIATION_1` FOREIGN KEY (`MATRICULA`) REFERENCES `alumnos` (`MATRICULA`),
  CONSTRAINT `FK_ASSOCIATION_2` FOREIGN KEY (`ID_C`) REFERENCES `carrera` (`ID_C`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cursa
-- ----------------------------
INSERT INTO `cursa` VALUES ('12820819', '957');
INSERT INTO `cursa` VALUES ('14552478', '999');
INSERT INTO `cursa` VALUES ('15718813', '637');
INSERT INTO `cursa` VALUES ('15718813', '822');
INSERT INTO `cursa` VALUES ('16395153', '174');
INSERT INTO `cursa` VALUES ('16395153', '315');
INSERT INTO `cursa` VALUES ('16771918', '496');
INSERT INTO `cursa` VALUES ('17962620', '311');
INSERT INTO `cursa` VALUES ('17962620', '637');
INSERT INTO `cursa` VALUES ('18125110', '182');
INSERT INTO `cursa` VALUES ('18125110', '411');
INSERT INTO `cursa` VALUES ('18807416', '496');
INSERT INTO `cursa` VALUES ('19663470', '291');
INSERT INTO `cursa` VALUES ('22651171', '595');
INSERT INTO `cursa` VALUES ('23287882', '927');
INSERT INTO `cursa` VALUES ('26124152', '311');
INSERT INTO `cursa` VALUES ('27506261', '411');
INSERT INTO `cursa` VALUES ('27812707', '182');
INSERT INTO `cursa` VALUES ('27812707', '315');
INSERT INTO `cursa` VALUES ('29454575', '291');
INSERT INTO `cursa` VALUES ('29454575', '496');
INSERT INTO `cursa` VALUES ('32265444', '927');
INSERT INTO `cursa` VALUES ('32265444', '957');
INSERT INTO `cursa` VALUES ('33249929', '315');
INSERT INTO `cursa` VALUES ('34938542', '822');
INSERT INTO `cursa` VALUES ('37449057', '545');
INSERT INTO `cursa` VALUES ('38440301', '545');
INSERT INTO `cursa` VALUES ('41939623', '311');
INSERT INTO `cursa` VALUES ('42977653', '291');
INSERT INTO `cursa` VALUES ('44222207', '278');
INSERT INTO `cursa` VALUES ('44222207', '957');
INSERT INTO `cursa` VALUES ('45510007', '637');
INSERT INTO `cursa` VALUES ('45510007', '999');
INSERT INTO `cursa` VALUES ('46534223', '411');
INSERT INTO `cursa` VALUES ('46534223', '595');
INSERT INTO `cursa` VALUES ('48502409', '694');
INSERT INTO `cursa` VALUES ('48507419', '174');
INSERT INTO `cursa` VALUES ('51440059', '822');
INSERT INTO `cursa` VALUES ('52115308', '595');
INSERT INTO `cursa` VALUES ('52802444', '324');
INSERT INTO `cursa` VALUES ('53047164', '174');
INSERT INTO `cursa` VALUES ('53460822', '174');
INSERT INTO `cursa` VALUES ('53460822', '946');
INSERT INTO `cursa` VALUES ('55004998', '980');
INSERT INTO `cursa` VALUES ('55289517', '315');
INSERT INTO `cursa` VALUES ('55289517', '595');
INSERT INTO `cursa` VALUES ('55289517', '694');
INSERT INTO `cursa` VALUES ('57061628', '637');
INSERT INTO `cursa` VALUES ('57061628', '999');
INSERT INTO `cursa` VALUES ('58630715', '545');
INSERT INTO `cursa` VALUES ('61680471', '946');
INSERT INTO `cursa` VALUES ('62391456', '637');
INSERT INTO `cursa` VALUES ('63446454', '311');
INSERT INTO `cursa` VALUES ('64019518', '637');
INSERT INTO `cursa` VALUES ('65081459', '278');
INSERT INTO `cursa` VALUES ('65081459', '957');
INSERT INTO `cursa` VALUES ('65471593', '174');
INSERT INTO `cursa` VALUES ('65872789', '278');
INSERT INTO `cursa` VALUES ('66972791', '927');
INSERT INTO `cursa` VALUES ('68443876', '324');
INSERT INTO `cursa` VALUES ('72068293', '174');
INSERT INTO `cursa` VALUES ('72068293', '278');
INSERT INTO `cursa` VALUES ('72068293', '637');
INSERT INTO `cursa` VALUES ('72068293', '927');
INSERT INTO `cursa` VALUES ('73065636', '545');
INSERT INTO `cursa` VALUES ('73502044', '999');
INSERT INTO `cursa` VALUES ('74279026', '291');
INSERT INTO `cursa` VALUES ('74685974', '278');
INSERT INTO `cursa` VALUES ('76442221', '315');
INSERT INTO `cursa` VALUES ('77161808', '278');
INSERT INTO `cursa` VALUES ('77161808', '946');
INSERT INTO `cursa` VALUES ('77659686', '182');
INSERT INTO `cursa` VALUES ('77659686', '278');
INSERT INTO `cursa` VALUES ('78217910', '946');
INSERT INTO `cursa` VALUES ('80794867', '946');
INSERT INTO `cursa` VALUES ('81332632', '324');
INSERT INTO `cursa` VALUES ('81332632', '694');
INSERT INTO `cursa` VALUES ('84386963', '946');
INSERT INTO `cursa` VALUES ('85419300', '315');
INSERT INTO `cursa` VALUES ('85419300', '980');
INSERT INTO `cursa` VALUES ('85909959', '999');
INSERT INTO `cursa` VALUES ('85952965', '182');
INSERT INTO `cursa` VALUES ('85952965', '278');
INSERT INTO `cursa` VALUES ('85952965', '315');
INSERT INTO `cursa` VALUES ('86555991', '291');
INSERT INTO `cursa` VALUES ('91171715', '291');
INSERT INTO `cursa` VALUES ('95901767', '291');
INSERT INTO `cursa` VALUES ('97053285', '980');
INSERT INTO `cursa` VALUES ('97294644', '182');
INSERT INTO `cursa` VALUES ('97294644', '957');
INSERT INTO `cursa` VALUES ('98654615', '182');

-- ----------------------------
-- Table structure for docente
-- ----------------------------
DROP TABLE IF EXISTS `docente`;
CREATE TABLE `docente` (
  `EXPEDIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(40) NOT NULL,
  `PATERNO` varchar(20) NOT NULL,
  `MATERNO` varchar(20) DEFAULT NULL,
  `SEXO` varchar(1) NOT NULL,
  PRIMARY KEY (`EXPEDIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of docente
-- ----------------------------
INSERT INTO `docente` VALUES ('1153568', '2OJ1JO8TTI5J', '1VEF05YXINB5', 'P0AJKT1CY00', 'M');
INSERT INTO `docente` VALUES ('1161094', 'A3HRYD3N7FB', '2LAA964GB1VO', '5M1WISPT48GK', 'H');
INSERT INTO `docente` VALUES ('1280184', '3YK5DA68TPJA', '1WSQFM9K20ZK', '3B40HRGIPUJS', 'M');
INSERT INTO `docente` VALUES ('1324511', '36MGM9T4INQJ', '3AT4H9P9ILWE', '1BCHTHHI2SH1', 'H');
INSERT INTO `docente` VALUES ('1403543', '5RPYN9C7U2NX', '40R6WOCIAPKW', '3EGOERVVRG71', 'M');
INSERT INTO `docente` VALUES ('1428254', '1YX984QAL3ZJ', '3C40AQPAD83O', '565VPJCK6NW4', 'M');
INSERT INTO `docente` VALUES ('1445548', '3B7C91X3FNY8', '4FJ441ZGQ62F', '5PB2NPU16UUL', 'H');
INSERT INTO `docente` VALUES ('1763512', '24EPH4A3E791', '4CV1WJKGSV51', '20VQGLDLD50H', 'M');
INSERT INTO `docente` VALUES ('1870894', '22EHZMVCVHPJ', '3DC5RPHECDKT', '51TSRD28YYAX', 'H');
INSERT INTO `docente` VALUES ('1933857', '58IE60OHJ4YJ', 'S2B4OO5DSTD', 'AI1KI6T1RV5', 'H');
INSERT INTO `docente` VALUES ('2225627', '1I2061CV12T0', '4ZPD1WCXG44', '25CVJ81NEIC7', 'M');
INSERT INTO `docente` VALUES ('2291827', 'WZR0PZYHZGT', '3EGPOA6289X4', '24HHYG4Q74F5', 'H');
INSERT INTO `docente` VALUES ('2398181', '3RQXDKR5DMAM', '3U2S1E0TTS25', '1YR8JO1983VN', 'M');
INSERT INTO `docente` VALUES ('2556505', '3SP3OAISF86X', '3RW4ZGGCDJ96', '1ACF1CNMG1WQ', 'H');
INSERT INTO `docente` VALUES ('2604850', '5STOY83MFAKX', '1YWZLBCUMNCX', '4L11LMFAT9JV', 'M');
INSERT INTO `docente` VALUES ('2707246', '2KBS1QA8GIDG', '3QMOOK9ZVP3V', '4GFIKPDT3D9T', 'M');
INSERT INTO `docente` VALUES ('2730510', '4D7CUV43JYLE', '5V2KCW2CJL49', '51I0GC2Z4LO0', 'H');
INSERT INTO `docente` VALUES ('2784129', '4TRM5P1ESII', '3XK1Q8Y6ZBJS', 'WVYDKB0TTYC', 'M');
INSERT INTO `docente` VALUES ('2867155', '3A519QMPRG6T', '18ZJ4SV4X7DZ', '1Z1TPMVJ1ZED', 'H');
INSERT INTO `docente` VALUES ('3027301', 'NVCOAEXXDNO', '5P9FOLDIKHRL', '1XQTGLYXNWWO', 'M');
INSERT INTO `docente` VALUES ('3114365', '4E7JRHHXQEW6', '59S6AO8U5SAI', '201HPI3ETEAD', 'H');
INSERT INTO `docente` VALUES ('3116558', '2L235L3CYBNE', '2QNC7LQNPOWP', 'NL6KA0BKYU3', 'H');
INSERT INTO `docente` VALUES ('3125397', '7YE887REAJD', '3ZEZ4NFGOEC0', 'VQAI1J1JSL2', 'M');
INSERT INTO `docente` VALUES ('3146268', '4ZN6ZQN8SCXZ', '207CE2YNAVY2', '1XN75YK5J6L1', 'M');
INSERT INTO `docente` VALUES ('3205097', '4ZFERSPV7YKQ', '1WCMKKNP4RV8', 'R02OWB4WZI8', 'M');
INSERT INTO `docente` VALUES ('3238455', '2H9TANAWCSB', '2HVGC1OAYL3S', '5RA22EMTR6JI', 'M');
INSERT INTO `docente` VALUES ('3468940', '3S2ILGJS9PPH', '1V9WCFRNYSDQ', '3VBCJZ2Z6A3T', 'H');
INSERT INTO `docente` VALUES ('3716730', '2NN5BMI6R2EH', '2IQX57D9VPH5', '3YN2EZNW0PO4', 'H');
INSERT INTO `docente` VALUES ('3965175', '3RSIVWD6ZNCC', 'MVP4FIHQF1N', '4CWVLDFIUHKJ', 'H');
INSERT INTO `docente` VALUES ('4053472', '4CWNSSH37LZS', '35C48BJWWE8L', '2OKXO58PQM5L', 'M');
INSERT INTO `docente` VALUES ('4139253', '2JHK7LLZ113', 'MRKJCU2MPKK', '2NMD6JBIDR65', 'M');
INSERT INTO `docente` VALUES ('4140623', '3ARDIQHM6L3X', '4L6TROEC2YMO', '1A64YJM3GG40', 'M');
INSERT INTO `docente` VALUES ('4258854', '1XL1TJGKHEPO', '39MV0FZMS76X', '4LZ7XGHWNOPU', 'H');
INSERT INTO `docente` VALUES ('4330982', '23KMBB9OFDUO', '4ZRWDL9UPFRK', '5MU1DVOQMQ2E', 'H');
INSERT INTO `docente` VALUES ('4479222', '4LT6MTU2KGD8', '4JSSBRUW4Y88', '2QNK1RSFNZ7D', 'H');
INSERT INTO `docente` VALUES ('4554069', 'REB1B30FHRO', '3D7XH0TQAH59', '2PMXQDN6F7X0', 'M');
INSERT INTO `docente` VALUES ('4721454', '4L2V1VNTHUKP', '3XJWN8KU3FPQ', '87J06QM1NG', 'H');
INSERT INTO `docente` VALUES ('4732295', '21AA3NXCV5ME', '3BXN4CZJ7QIV', '4LT648LQHGCL', 'H');
INSERT INTO `docente` VALUES ('4873915', '2KDS9Q3PSLA9', '57HX3S01T5LL', 'ALJZUXBUEUJ', 'M');
INSERT INTO `docente` VALUES ('5057039', 'VUBPK0W714Q', '3RP0EM5C7RHP', '2S5LQXFL5SBK', 'M');
INSERT INTO `docente` VALUES ('5070460', 'WNR0JXMG4GG', '3T6R1FOQ39CQ', '3B57B36N0C6B', 'M');
INSERT INTO `docente` VALUES ('5146274', '23AQYGI4BKVR', '3565CIUKCF0B', '2KZLY3LYDD4L', 'M');
INSERT INTO `docente` VALUES ('5279632', 'EQJEAWRGCN', '3TV0IW8P9YBK', 'PY7LENMDZMV', 'M');
INSERT INTO `docente` VALUES ('5281759', '36LVSYPJAFDO', '1B6ODZ4LNVT1', '37OVFQG6S3TW', 'H');
INSERT INTO `docente` VALUES ('5285889', '2KS05R94UHB', '4F559ZIR7B4T', '36OPLBHJ8OTX', 'H');
INSERT INTO `docente` VALUES ('5484438', '3ZMX77BCKHFC', '5QHI4G42W6F8', '3YSDK5C6JL4O', 'M');
INSERT INTO `docente` VALUES ('5560060', 'ORTSZTY3Q4L', 'NL2KZ23CEKB', 'VSC159SF2E4', 'M');
INSERT INTO `docente` VALUES ('5662325', '1AAIB4360RYK', '38YVHI26K6HW', 'A54PMKUFJ7D', 'M');
INSERT INTO `docente` VALUES ('5923184', '1I6B0TUSQG9K', '50HT61GQ6YT1', '18TU8OC1LNZB', 'M');
INSERT INTO `docente` VALUES ('5932548', '34B9X0SXOHHN', '59SDB8AE46N7', '5TUARNXTIX7I', 'H');
INSERT INTO `docente` VALUES ('5947652', '39WUJ55IB2KL', 'R0W48ZGAFNS', '4ZWNYXPSO5J', 'M');
INSERT INTO `docente` VALUES ('5959668', '25IXPV3B9U9C', '1YSXC75OUYC3', '2R057WID31R6', 'H');
INSERT INTO `docente` VALUES ('6005331', '3DMNAH9QKDU', '343M97HO4EQJ', '2J1I9ZIE9RDP', 'M');
INSERT INTO `docente` VALUES ('6203327', '76Q1P2HA6HE', '3SWU0U32YWN8', '5N44L3OLHZ8K', 'M');
INSERT INTO `docente` VALUES ('6407166', '2J51W5GODE9S', '1JCRWI3Z9H8C', '1DBANDJ8EKX1', 'H');
INSERT INTO `docente` VALUES ('6416731', '59MB1J8BNVXH', '3ZPCYIFC9VL1', '4HIF9EDP8ZB0', 'M');
INSERT INTO `docente` VALUES ('6514407', '4IMMPJ1ZW2P4', '5QDD1CT51CVF', '2OES85MMWQM2', 'H');
INSERT INTO `docente` VALUES ('6632995', '24GPVL0PCV8P', '6U8Q30SMYFG', 'SB2DVDWY3EX', 'M');
INSERT INTO `docente` VALUES ('6853123', '25BJ9APOTSJP', '1EYCGXVDOCP', '5LYDLT3X5A2S', 'H');
INSERT INTO `docente` VALUES ('6983249', '51MGE6H91YDI', 'PVYRXZN3GZB', 'WNSJR1E8VPY', 'M');
INSERT INTO `docente` VALUES ('7105469', '3YKEL4848TVW', '20ZYY5QJA950', '4HDVGMCKAJRD', 'M');
INSERT INTO `docente` VALUES ('7256057', '5RQA85C3JIUC', '4F3WRQJFH0SU', '4FHWLBK4JOWN', 'H');
INSERT INTO `docente` VALUES ('7274055', '28WCRDE7P19', '2B0AQUM9P9G', '4SCSP6619OX', 'H');
INSERT INTO `docente` VALUES ('7286870', '52YN6VZ21NCL', 'AJV06JVE3NQ', '5UUB4HGJCOOD', 'M');
INSERT INTO `docente` VALUES ('7388876', '52SPGJ8NBBDC', '50FD1DPYRHO', '4HSHY5BWG5HU', 'M');
INSERT INTO `docente` VALUES ('7440455', '4E7BO4H26H82', '2LCEVEWEAIFK', '4HY1TB9AVT6', 'M');
INSERT INTO `docente` VALUES ('7531459', '52M945JPV3FM', '5UV3KYJYLRKL', '2L5Q6UJLEZ3Y', 'H');
INSERT INTO `docente` VALUES ('7535223', '3RT181UXBFQ2', '5M0A2BS2Z8R6', '3ZUT6CBH92PN', 'M');
INSERT INTO `docente` VALUES ('7543483', '1VIOCYZE6GQZ', '218JZHKGI4NE', '577PKVRDEVL9', 'H');
INSERT INTO `docente` VALUES ('7691713', 'VDWYAWIANYG', '3ZIW6KAKYH7T', '573RFUEESTCM', 'H');
INSERT INTO `docente` VALUES ('7702773', '1DIVFBAGVD5K', '5W3FT0QLMQ6N', '1EH0SNVPMERB', 'H');
INSERT INTO `docente` VALUES ('7729674', '5S95HAP0V6T', '3L9E6A3FVCM', '14JQ2ZWKPZN', 'M');
INSERT INTO `docente` VALUES ('7851385', 'SCZHT2HO95E', '34HG7TEHW601', '7WREPPTOWXI', 'M');
INSERT INTO `docente` VALUES ('7853790', '21AHI4UN7XTJ', '35MAG4EK2QJX', '35JQFWH8KDIP', 'H');
INSERT INTO `docente` VALUES ('7888670', '55B2N9DSYTG0', '8LO04UBG0L', '2MIJ0H6LSU27', 'H');
INSERT INTO `docente` VALUES ('7888819', '5M3ZOMGDXF2Q', '1EMZJJLZQ0M0', '38SWL7NJ3HIK', 'M');
INSERT INTO `docente` VALUES ('8039284', '1B8NIVML12QG', '4LT7JSIWNT1C', '1C6H3S7JXSBR', 'M');
INSERT INTO `docente` VALUES ('8047618', '2OV1B3F2TARK', 'CBF0R46PND', '3ST5CSP5WNEO', 'H');
INSERT INTO `docente` VALUES ('8094003', '540UOQ60NWPM', '5742L1FKK5PN', '50RZS3RPTIQF', 'H');
INSERT INTO `docente` VALUES ('8122608', '51ZYCR6K1X9X', '4L7FAU8LJ1SP', '2IRIK5E1YUA1', 'M');
INSERT INTO `docente` VALUES ('8134502', '51W4YU62JMF8', '4JX7NCCAF0V6', '20W8EPECIWLE', 'H');
INSERT INTO `docente` VALUES ('8181788', '391B6830TSUE', '222HGKB5WGVL', 'TBD9Z6QHF8L', 'M');
INSERT INTO `docente` VALUES ('8221793', '2NL5GP1C2J84', '58GHZ30GW4LF', '5SB4NQ0GBDF', 'M');
INSERT INTO `docente` VALUES ('8305745', '4JMJRH5BQBSH', '23IC3GO0I6P9', '3QSEUOPCR658', 'M');
INSERT INTO `docente` VALUES ('8400237', 'UHPYHXOO6TH', '2IXE8W3Q2BC5', '38P6OWMQ8LLD', 'H');
INSERT INTO `docente` VALUES ('8439602', '1ET7G278FCPR', '50HXJPJTCJWL', '1IYUY9I92BJQ', 'H');
INSERT INTO `docente` VALUES ('8628028', '3QY386QSSYI0', '34JN68AL390U', '4EH0T7QOPD5L', 'H');
INSERT INTO `docente` VALUES ('8794790', '59UKMQSUR4FR', '5LVXGUES4USK', '51NO9YVN5FD0', 'H');
INSERT INTO `docente` VALUES ('8977786', '4E12LS0LHC0O', '5LRLPOFJAGIW', '23D6GB59WA4V', 'H');
INSERT INTO `docente` VALUES ('9023121', '1ZP7F1K4YK8S', '3CZZ0HFJD1M', 'P6A396BAY9D', 'M');
INSERT INTO `docente` VALUES ('9098319', 'NPJ0DTC857W', '577BY6XACN3O', '1N8CYWPZGVW', 'H');
INSERT INTO `docente` VALUES ('9138615', '5305HQ1URNXL', '2PT4R8P2GFIU', '573DAT8Z3ZFZ', 'M');
INSERT INTO `docente` VALUES ('9163402', '3ZWWH6042WDW', '4FLGONBCRY3Q', '3CC50407LZ50', 'M');
INSERT INTO `docente` VALUES ('9230689', '3W5MLDAG6VAL', '36BRJBDTUAL6', '3VDD0341C6L8', 'M');
INSERT INTO `docente` VALUES ('9333455', 'WY25P5AN729', '1AAEF8MUXGU0', '2R1YPUZOM2JC', 'M');
INSERT INTO `docente` VALUES ('9505725', '1FVKESUTP5OF', '2S5TRC4LC94Z', '40N9CGCER80S', 'M');
INSERT INTO `docente` VALUES ('9537664', '1DF3YZKY16ET', '22EMC7P1W3OJ', 'NTVMSNTF4R9', 'H');
INSERT INTO `docente` VALUES ('9808548', 'ADHNB4KSWEA', '38L9ZTAXMEH7', '2K17ZOJWQCI9', 'H');
INSERT INTO `docente` VALUES ('9846316', '2RW0Q62F83I3', '35O3S4IZ8M7C', 'NXA4OQ89804', 'H');
INSERT INTO `docente` VALUES ('9986410', '1BG10I93S1V1', 'QAHTSDUY0CM', '1J5JZO19Y2J', 'M');

-- ----------------------------
-- Table structure for escuelas
-- ----------------------------
DROP TABLE IF EXISTS `escuelas`;
CREATE TABLE `escuelas` (
  `ID_E` int(11) NOT NULL,
  `N_ESC` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_E`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of escuelas
-- ----------------------------
INSERT INTO `escuelas` VALUES ('136', 'ARQUITECTURA');
INSERT INTO `escuelas` VALUES ('197', 'FACULTAD DE SISTEMAS');
INSERT INTO `escuelas` VALUES ('200', 'ESCUELA DE ARTES PLASTICAS');
INSERT INTO `escuelas` VALUES ('237', 'FACULTAD DE INGENIERIA');
INSERT INTO `escuelas` VALUES ('414', 'ESCUELA DE MUSICA');
INSERT INTO `escuelas` VALUES ('423', 'FACUTAD DE PSICOLOGIA');
INSERT INTO `escuelas` VALUES ('653', 'FACULTAD DE MEDICINA');
INSERT INTO `escuelas` VALUES ('674', 'FACULTAD DE ENFERMETIA');
INSERT INTO `escuelas` VALUES ('815', 'FACULTAD DE CIENCIAS QUIMICAS');
INSERT INTO `escuelas` VALUES ('877', 'FACULTAD DE JURISPRUDENCIA');

-- ----------------------------
-- Table structure for registro
-- ----------------------------
DROP TABLE IF EXISTS `registro`;
CREATE TABLE `registro` (
  `ID_REGISTRO` int(11) NOT NULL AUTO_INCREMENT,
  `MATRICULA` int(11) NOT NULL,
  `NOMBRE_CARRERA` varchar(40) DEFAULT NULL,
  `NOMBRE_FACULTAD` varchar(40) DEFAULT NULL,
  `LLAVE` decimal(3,0) DEFAULT NULL,
  `NUMERO_TELEFONO` decimal(10,0) DEFAULT NULL,
  `HORA` time DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  PRIMARY KEY (`ID_REGISTRO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of registro
-- ----------------------------

-- ----------------------------
-- Table structure for trabaja
-- ----------------------------
DROP TABLE IF EXISTS `trabaja`;
CREATE TABLE `trabaja` (
  `EXPEDIENTE` int(11) NOT NULL,
  `ID_E` int(11) NOT NULL,
  PRIMARY KEY (`EXPEDIENTE`,`ID_E`),
  KEY `FK_ASSOCIATION_4` (`ID_E`),
  CONSTRAINT `FK_ASSOCIATION_3` FOREIGN KEY (`EXPEDIENTE`) REFERENCES `docente` (`EXPEDIENTE`),
  CONSTRAINT `FK_ASSOCIATION_4` FOREIGN KEY (`ID_E`) REFERENCES `escuelas` (`ID_E`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trabaja
-- ----------------------------
INSERT INTO `trabaja` VALUES ('1153568', '197');
INSERT INTO `trabaja` VALUES ('1161094', '423');
INSERT INTO `trabaja` VALUES ('1280184', '653');
INSERT INTO `trabaja` VALUES ('1403543', '414');
INSERT INTO `trabaja` VALUES ('1428254', '197');
INSERT INTO `trabaja` VALUES ('1428254', '674');
INSERT INTO `trabaja` VALUES ('1445548', '674');
INSERT INTO `trabaja` VALUES ('1763512', '653');
INSERT INTO `trabaja` VALUES ('1870894', '423');
INSERT INTO `trabaja` VALUES ('2225627', '674');
INSERT INTO `trabaja` VALUES ('2291827', '197');
INSERT INTO `trabaja` VALUES ('2556505', '237');
INSERT INTO `trabaja` VALUES ('2556505', '414');
INSERT INTO `trabaja` VALUES ('2604850', '200');
INSERT INTO `trabaja` VALUES ('2604850', '653');
INSERT INTO `trabaja` VALUES ('2707246', '200');
INSERT INTO `trabaja` VALUES ('2707246', '423');
INSERT INTO `trabaja` VALUES ('2730510', '200');
INSERT INTO `trabaja` VALUES ('2784129', '653');
INSERT INTO `trabaja` VALUES ('2784129', '815');
INSERT INTO `trabaja` VALUES ('2867155', '197');
INSERT INTO `trabaja` VALUES ('2867155', '674');
INSERT INTO `trabaja` VALUES ('3027301', '200');
INSERT INTO `trabaja` VALUES ('3116558', '200');
INSERT INTO `trabaja` VALUES ('3116558', '414');
INSERT INTO `trabaja` VALUES ('3116558', '815');
INSERT INTO `trabaja` VALUES ('3468940', '237');
INSERT INTO `trabaja` VALUES ('3716730', '423');
INSERT INTO `trabaja` VALUES ('3965175', '877');
INSERT INTO `trabaja` VALUES ('4139253', '197');
INSERT INTO `trabaja` VALUES ('4140623', '136');
INSERT INTO `trabaja` VALUES ('4258854', '877');
INSERT INTO `trabaja` VALUES ('4479222', '197');
INSERT INTO `trabaja` VALUES ('4479222', '815');
INSERT INTO `trabaja` VALUES ('4732295', '423');
INSERT INTO `trabaja` VALUES ('4732295', '877');
INSERT INTO `trabaja` VALUES ('4873915', '414');
INSERT INTO `trabaja` VALUES ('4873915', '815');
INSERT INTO `trabaja` VALUES ('5057039', '653');
INSERT INTO `trabaja` VALUES ('5057039', '815');
INSERT INTO `trabaja` VALUES ('5070460', '200');
INSERT INTO `trabaja` VALUES ('5146274', '197');
INSERT INTO `trabaja` VALUES ('5279632', '136');
INSERT INTO `trabaja` VALUES ('5285889', '674');
INSERT INTO `trabaja` VALUES ('5560060', '877');
INSERT INTO `trabaja` VALUES ('5932548', '136');
INSERT INTO `trabaja` VALUES ('5932548', '197');
INSERT INTO `trabaja` VALUES ('5959668', '423');
INSERT INTO `trabaja` VALUES ('6407166', '414');
INSERT INTO `trabaja` VALUES ('6514407', '237');
INSERT INTO `trabaja` VALUES ('6632995', '200');
INSERT INTO `trabaja` VALUES ('6853123', '197');
INSERT INTO `trabaja` VALUES ('6853123', '423');
INSERT INTO `trabaja` VALUES ('6853123', '815');
INSERT INTO `trabaja` VALUES ('7105469', '815');
INSERT INTO `trabaja` VALUES ('7286870', '197');
INSERT INTO `trabaja` VALUES ('7388876', '237');
INSERT INTO `trabaja` VALUES ('7388876', '414');
INSERT INTO `trabaja` VALUES ('7440455', '197');
INSERT INTO `trabaja` VALUES ('7440455', '653');
INSERT INTO `trabaja` VALUES ('7440455', '877');
INSERT INTO `trabaja` VALUES ('7531459', '653');
INSERT INTO `trabaja` VALUES ('7543483', '815');
INSERT INTO `trabaja` VALUES ('7691713', '674');
INSERT INTO `trabaja` VALUES ('7702773', '237');
INSERT INTO `trabaja` VALUES ('7702773', '815');
INSERT INTO `trabaja` VALUES ('7888670', '653');
INSERT INTO `trabaja` VALUES ('7888670', '877');
INSERT INTO `trabaja` VALUES ('8039284', '414');
INSERT INTO `trabaja` VALUES ('8039284', '423');
INSERT INTO `trabaja` VALUES ('8047618', '877');
INSERT INTO `trabaja` VALUES ('8094003', '197');
INSERT INTO `trabaja` VALUES ('8094003', '414');
INSERT INTO `trabaja` VALUES ('8122608', '653');
INSERT INTO `trabaja` VALUES ('8134502', '136');
INSERT INTO `trabaja` VALUES ('8134502', '674');
INSERT INTO `trabaja` VALUES ('8181788', '237');
INSERT INTO `trabaja` VALUES ('8181788', '414');
INSERT INTO `trabaja` VALUES ('8305745', '200');
INSERT INTO `trabaja` VALUES ('8305745', '423');
INSERT INTO `trabaja` VALUES ('8400237', '136');
INSERT INTO `trabaja` VALUES ('8400237', '200');
INSERT INTO `trabaja` VALUES ('8439602', '136');
INSERT INTO `trabaja` VALUES ('8439602', '237');
INSERT INTO `trabaja` VALUES ('8628028', '197');
INSERT INTO `trabaja` VALUES ('8794790', '136');
INSERT INTO `trabaja` VALUES ('8794790', '197');
INSERT INTO `trabaja` VALUES ('8977786', '197');
INSERT INTO `trabaja` VALUES ('8977786', '877');
INSERT INTO `trabaja` VALUES ('9023121', '237');
INSERT INTO `trabaja` VALUES ('9098319', '815');
INSERT INTO `trabaja` VALUES ('9098319', '877');
INSERT INTO `trabaja` VALUES ('9138615', '414');
INSERT INTO `trabaja` VALUES ('9163402', '674');
INSERT INTO `trabaja` VALUES ('9333455', '653');
INSERT INTO `trabaja` VALUES ('9333455', '815');
INSERT INTO `trabaja` VALUES ('9505725', '197');
INSERT INTO `trabaja` VALUES ('9537664', '815');
INSERT INTO `trabaja` VALUES ('9846316', '653');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID_USER` int(11) NOT NULL,
  `NAME_USER` varchar(15) CHARACTER SET latin1 NOT NULL,
  `PASS` varchar(18) CHARACTER SET latin1 NOT NULL,
  `STAT` varchar(5) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Procedure structure for registrar
-- ----------------------------
DROP PROCEDURE IF EXISTS `registrar`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar`(in mat int,i_f int,i_c int,nom varchar(20),ap varchar(10),am varchar(10),nc varchar(40),nf varchar(40),ll numeric(3,0),t numeric(10,0))
BEGIN
	INSERT into registro(MATRICULA,ID_FACULTAD,ID_CARRERA,NOMBRE,APELLIDO_PATERNO,APELLIDO_MATERNO,NOMBRE_CARRERA,NOMBRE_FACULTAD,LLAVE,NUMERO_TELEFONO,HORA,FECHA)
	VALUES(mat,i_f,i_c,nom,ap,am,nc,nf,ll,t,TIME(NOW()),DATE(NOW()));
END
;;
DELIMITER ;