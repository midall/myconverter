
-- ----------------------------
-- Table structure for currency
-- ----------------------------
DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `cur_id` int(11) NOT NULL AUTO_INCREMENT,
  `cur_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cur_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of currency
-- ----------------------------
INSERT INTO `currency` VALUES ('1', 'AUD', 'Australia Dollar');
INSERT INTO `currency` VALUES ('2', 'BRL', 'Brazil Real');
INSERT INTO `currency` VALUES ('3', 'CAD', 'Canada Dollar');
INSERT INTO `currency` VALUES ('4', 'CUP', 'Cuba Peso');
INSERT INTO `currency` VALUES ('5', 'CZK', 'Czech Republic Koruna');
INSERT INTO `currency` VALUES ('6', 'EUR', 'Euro Member Countries');
INSERT INTO `currency` VALUES ('7', 'FKP', 'Falkland Islands (Malvinas) Pound');
INSERT INTO `currency` VALUES ('8', 'HKD', 'Hong Kong Dollar');
INSERT INTO `currency` VALUES ('9', 'JPY', 'Japan Yen');
INSERT INTO `currency` VALUES ('10', 'KRW', 'Korea (South) Won');
INSERT INTO `currency` VALUES ('11', 'NZD', 'New Zealand Dollar');
INSERT INTO `currency` VALUES ('12', 'PLN', 'Poland Zloty');
INSERT INTO `currency` VALUES ('13', 'RUB', 'Russia Ruble');
INSERT INTO `currency` VALUES ('14', 'SEK', 'Sweden Krona');
INSERT INTO `currency` VALUES ('15', 'CHF', 'Switzerland Franc');
INSERT INTO `currency` VALUES ('16', 'TWD', 'Taiwan New Dollar');
INSERT INTO `currency` VALUES ('17', 'THB', 'Thailand Baht');
INSERT INTO `currency` VALUES ('18', 'TRL', 'Turkey Lira');
INSERT INTO `currency` VALUES ('19', 'GBP', 'United Kingdom Pound');
INSERT INTO `currency` VALUES ('20', 'USD', 'United States Dollar');

-- ----------------------------
-- Table structure for currency_rates
-- ----------------------------
DROP TABLE IF EXISTS `currency_rates`;
CREATE TABLE `currency_rates` (
  `rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cur_from` int(11) DEFAULT NULL,
  `cur_to` int(11) DEFAULT NULL,
  `cur_rate` decimal(17,5) DEFAULT NULL,
  `cur_date` date DEFAULT NULL,
  PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of currency_rates (1st choice - random)
-- ----------------------------
/*
INSERT INTO currency_rates
( cur_from, cur_to, cur_rate, cur_date )

SELECT cfr.cur_id, cto.cur_id, (RAND() + 0.5) AS rate, DATE( NOW() )
FROM currency cfr
JOIN currency cto
*/

-- ----------------------------
-- Records of currency_rates (2st choice)
-- ----------------------------
INSERT INTO `currency_rates` VALUES ('1', '1', '1', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('2', '2', '1', '0.85662', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('3', '3', '1', '0.65683', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('4', '4', '1', '1.21428', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('5', '5', '1', '0.60090', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('6', '6', '1', '0.86166', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('7', '7', '1', '1.00561', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('8', '8', '1', '0.94306', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('9', '9', '1', '1.19846', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('10', '10', '1', '0.66312', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('11', '11', '1', '1.22023', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('12', '12', '1', '0.61180', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('13', '13', '1', '0.89830', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('14', '14', '1', '1.15611', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('15', '15', '1', '0.58566', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('16', '16', '1', '0.95998', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('17', '17', '1', '0.54290', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('18', '18', '1', '1.33455', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('19', '19', '1', '0.54405', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('20', '20', '1', '1.21663', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('21', '1', '2', '0.95097', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('22', '2', '2', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('23', '3', '2', '0.67193', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('24', '4', '2', '1.04475', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('25', '5', '2', '0.70796', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('26', '6', '2', '0.90554', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('27', '7', '2', '0.90382', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('28', '8', '2', '1.30248', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('29', '9', '2', '1.30095', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('30', '10', '2', '1.09730', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('31', '11', '2', '1.08364', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('32', '12', '2', '0.62631', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('33', '13', '2', '1.38062', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('34', '14', '2', '0.52418', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('35', '15', '2', '0.97904', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('36', '16', '2', '0.82266', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('37', '17', '2', '0.67619', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('38', '18', '2', '1.41296', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('39', '19', '2', '0.53621', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('40', '20', '2', '0.94220', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('41', '1', '3', '0.60236', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('42', '2', '3', '0.68520', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('43', '3', '3', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('44', '4', '3', '1.03892', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('45', '5', '3', '1.33788', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('46', '6', '3', '1.07266', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('47', '7', '3', '0.84964', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('48', '8', '3', '0.53022', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('49', '9', '3', '0.60217', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('50', '10', '3', '0.92021', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('51', '11', '3', '1.29454', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('52', '12', '3', '1.21208', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('53', '13', '3', '0.67677', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('54', '14', '3', '1.24759', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('55', '15', '3', '0.70766', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('56', '16', '3', '1.29554', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('57', '17', '3', '0.85472', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('58', '18', '3', '0.88699', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('59', '19', '3', '1.37078', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('60', '20', '3', '0.69291', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('61', '1', '4', '0.85223', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('62', '2', '4', '0.68242', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('63', '3', '4', '1.35541', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('64', '4', '4', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('65', '5', '4', '0.58279', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('66', '6', '4', '0.72454', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('67', '7', '4', '1.37434', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('68', '8', '4', '1.19807', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('69', '9', '4', '1.36734', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('70', '10', '4', '0.74246', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('71', '11', '4', '1.11031', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('72', '12', '4', '0.82417', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('73', '13', '4', '1.28993', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('74', '14', '4', '1.47713', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('75', '15', '4', '1.01587', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('76', '16', '4', '1.14797', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('77', '17', '4', '1.19223', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('78', '18', '4', '1.01722', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('79', '19', '4', '1.00942', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('80', '20', '4', '1.49544', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('81', '1', '5', '0.94893', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('82', '2', '5', '0.75833', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('83', '3', '5', '1.44485', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('84', '4', '5', '1.44927', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('85', '5', '5', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('86', '6', '5', '1.21114', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('87', '7', '5', '1.32034', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('88', '8', '5', '1.46828', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('89', '9', '5', '0.88036', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('90', '10', '5', '1.49699', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('91', '11', '5', '1.34387', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('92', '12', '5', '0.72838', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('93', '13', '5', '1.11027', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('94', '14', '5', '0.86623', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('95', '15', '5', '0.50033', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('96', '16', '5', '1.40297', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('97', '17', '5', '1.01385', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('98', '18', '5', '1.36034', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('99', '19', '5', '1.26016', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('100', '20', '5', '0.71978', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('101', '1', '6', '1.31843', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('102', '2', '6', '0.93278', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('103', '3', '6', '1.20864', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('104', '4', '6', '0.74487', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('105', '5', '6', '0.59840', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('106', '6', '6', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('107', '7', '6', '0.99187', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('108', '8', '6', '0.68711', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('109', '9', '6', '0.95994', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('110', '10', '6', '1.23836', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('111', '11', '6', '0.81197', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('112', '12', '6', '0.84478', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('113', '13', '6', '1.28799', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('114', '14', '6', '1.40561', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('115', '15', '6', '0.66409', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('116', '16', '6', '0.60361', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('117', '17', '6', '0.52580', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('118', '18', '6', '1.31815', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('119', '19', '6', '0.51334', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('120', '20', '6', '1.11228', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('121', '1', '7', '0.52135', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('122', '2', '7', '0.76991', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('123', '3', '7', '0.78550', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('124', '4', '7', '1.11778', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('125', '5', '7', '0.73242', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('126', '6', '7', '0.80874', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('127', '7', '7', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('128', '8', '7', '0.80592', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('129', '9', '7', '1.49032', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('130', '10', '7', '0.53382', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('131', '11', '7', '0.69817', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('132', '12', '7', '1.38940', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('133', '13', '7', '1.35246', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('134', '14', '7', '1.09410', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('135', '15', '7', '0.91313', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('136', '16', '7', '0.78337', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('137', '17', '7', '0.67744', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('138', '18', '7', '0.53711', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('139', '19', '7', '1.15321', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('140', '20', '7', '0.65472', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('141', '1', '8', '1.31397', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('142', '2', '8', '1.10568', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('143', '3', '8', '1.08648', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('144', '4', '8', '0.61537', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('145', '5', '8', '1.31740', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('146', '6', '8', '1.24089', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('147', '7', '8', '0.75227', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('148', '8', '8', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('149', '9', '8', '0.93648', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('150', '10', '8', '0.56642', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('151', '11', '8', '0.52266', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('152', '12', '8', '1.41405', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('153', '13', '8', '1.00228', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('154', '14', '8', '1.26924', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('155', '15', '8', '0.83938', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('156', '16', '8', '0.88915', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('157', '17', '8', '1.42761', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('158', '18', '8', '0.97063', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('159', '19', '8', '1.07028', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('160', '20', '8', '0.93954', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('161', '1', '9', '0.98686', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('162', '2', '9', '0.61566', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('163', '3', '9', '0.61774', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('164', '4', '9', '0.74171', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('165', '5', '9', '1.35533', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('166', '6', '9', '1.05151', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('167', '7', '9', '0.69158', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('168', '8', '9', '0.80338', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('169', '9', '9', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('170', '10', '9', '1.30053', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('171', '11', '9', '0.67627', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('172', '12', '9', '0.97974', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('173', '13', '9', '1.36991', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('174', '14', '9', '1.41031', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('175', '15', '9', '1.44182', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('176', '16', '9', '1.47817', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('177', '17', '9', '0.56540', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('178', '18', '9', '0.89251', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('179', '19', '9', '1.26631', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('180', '20', '9', '1.15405', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('181', '1', '10', '1.47132', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('182', '2', '10', '1.39443', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('183', '3', '10', '1.05820', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('184', '4', '10', '0.60773', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('185', '5', '10', '1.36403', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('186', '6', '10', '1.49696', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('187', '7', '10', '0.89271', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('188', '8', '10', '1.47267', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('189', '9', '10', '1.18523', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('190', '10', '10', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('191', '11', '10', '0.98502', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('192', '12', '10', '1.40066', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('193', '13', '10', '0.54825', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('194', '14', '10', '1.03927', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('195', '15', '10', '1.05162', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('196', '16', '10', '0.64028', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('197', '17', '10', '0.54652', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('198', '18', '10', '1.31176', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('199', '19', '10', '1.41927', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('200', '20', '10', '0.66105', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('201', '1', '11', '0.54743', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('202', '2', '11', '1.25403', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('203', '3', '11', '1.12785', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('204', '4', '11', '1.37714', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('205', '5', '11', '1.00218', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('206', '6', '11', '1.37946', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('207', '7', '11', '1.39076', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('208', '8', '11', '1.31542', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('209', '9', '11', '0.90482', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('210', '10', '11', '1.07783', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('211', '11', '11', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('212', '12', '11', '1.14005', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('213', '13', '11', '0.67613', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('214', '14', '11', '1.46051', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('215', '15', '11', '0.77413', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('216', '16', '11', '0.98914', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('217', '17', '11', '1.12332', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('218', '18', '11', '1.14918', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('219', '19', '11', '0.87593', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('220', '20', '11', '1.43210', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('221', '1', '12', '1.03272', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('222', '2', '12', '1.36729', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('223', '3', '12', '1.23828', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('224', '4', '12', '0.58953', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('225', '5', '12', '0.73282', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('226', '6', '12', '1.39553', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('227', '7', '12', '1.27916', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('228', '8', '12', '0.70923', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('229', '9', '12', '1.20866', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('230', '10', '12', '1.41559', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('231', '11', '12', '0.95200', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('232', '12', '12', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('233', '13', '12', '0.71014', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('234', '14', '12', '1.01101', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('235', '15', '12', '1.42464', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('236', '16', '12', '0.59017', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('237', '17', '12', '1.17695', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('238', '18', '12', '0.61421', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('239', '19', '12', '1.04019', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('240', '20', '12', '0.85834', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('241', '1', '13', '0.67112', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('242', '2', '13', '1.28059', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('243', '3', '13', '0.88958', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('244', '4', '13', '1.10612', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('245', '5', '13', '1.36187', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('246', '6', '13', '0.99099', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('247', '7', '13', '1.36936', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('248', '8', '13', '1.37381', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('249', '9', '13', '1.26098', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('250', '10', '13', '0.68346', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('251', '11', '13', '1.13435', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('252', '12', '13', '1.12138', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('253', '13', '13', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('254', '14', '13', '0.65515', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('255', '15', '13', '0.66419', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('256', '16', '13', '0.85549', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('257', '17', '13', '0.78486', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('258', '18', '13', '0.85786', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('259', '19', '13', '1.43471', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('260', '20', '13', '1.09996', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('261', '1', '14', '0.69568', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('262', '2', '14', '0.67850', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('263', '3', '14', '0.80546', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('264', '4', '14', '1.49180', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('265', '5', '14', '0.54261', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('266', '6', '14', '0.73764', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('267', '7', '14', '0.56040', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('268', '8', '14', '1.08906', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('269', '9', '14', '1.26411', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('270', '10', '14', '0.55335', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('271', '11', '14', '1.47445', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('272', '12', '14', '1.21220', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('273', '13', '14', '1.13763', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('274', '14', '14', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('275', '15', '14', '0.84483', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('276', '16', '14', '1.06951', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('277', '17', '14', '1.31306', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('278', '18', '14', '0.85678', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('279', '19', '14', '0.84471', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('280', '20', '14', '1.15321', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('281', '1', '15', '0.73194', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('282', '2', '15', '0.70004', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('283', '3', '15', '0.80441', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('284', '4', '15', '1.42193', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('285', '5', '15', '1.19640', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('286', '6', '15', '1.21622', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('287', '7', '15', '0.99190', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('288', '8', '15', '0.81083', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('289', '9', '15', '0.57845', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('290', '10', '15', '0.95976', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('291', '11', '15', '0.56347', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('292', '12', '15', '1.43806', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('293', '13', '15', '0.99988', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('294', '14', '15', '1.18521', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('295', '15', '15', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('296', '16', '15', '1.07649', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('297', '17', '15', '0.60316', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('298', '18', '15', '1.28635', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('299', '19', '15', '1.12225', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('300', '20', '15', '1.25220', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('301', '1', '16', '1.39428', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('302', '2', '16', '0.71477', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('303', '3', '16', '0.89101', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('304', '4', '16', '0.81075', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('305', '5', '16', '0.88070', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('306', '6', '16', '1.47126', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('307', '7', '16', '1.21419', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('308', '8', '16', '1.15717', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('309', '9', '16', '0.64329', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('310', '10', '16', '1.24494', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('311', '11', '16', '0.79481', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('312', '12', '16', '0.73924', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('313', '13', '16', '0.81177', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('314', '14', '16', '1.34115', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('315', '15', '16', '0.77043', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('316', '16', '16', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('317', '17', '16', '0.83227', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('318', '18', '16', '0.67520', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('319', '19', '16', '1.37918', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('320', '20', '16', '1.37030', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('321', '1', '17', '1.21399', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('322', '2', '17', '1.45902', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('323', '3', '17', '1.15315', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('324', '4', '17', '0.88869', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('325', '5', '17', '1.48400', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('326', '6', '17', '1.25392', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('327', '7', '17', '1.31762', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('328', '8', '17', '1.32632', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('329', '9', '17', '1.17876', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('330', '10', '17', '1.41482', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('331', '11', '17', '1.03782', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('332', '12', '17', '1.44463', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('333', '13', '17', '0.60970', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('334', '14', '17', '1.21460', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('335', '15', '17', '0.74392', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('336', '16', '17', '0.57579', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('337', '17', '17', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('338', '18', '17', '0.50853', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('339', '19', '17', '0.60110', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('340', '20', '17', '0.97991', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('341', '1', '18', '0.59624', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('342', '2', '18', '0.54148', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('343', '3', '18', '1.41867', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('344', '4', '18', '0.96893', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('345', '5', '18', '1.08863', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('346', '6', '18', '1.03634', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('347', '7', '18', '1.41583', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('348', '8', '18', '1.47013', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('349', '9', '18', '0.60318', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('350', '10', '18', '1.10549', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('351', '11', '18', '1.21790', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('352', '12', '18', '1.27305', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('353', '13', '18', '1.21154', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('354', '14', '18', '0.73855', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('355', '15', '18', '0.55813', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('356', '16', '18', '1.07500', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('357', '17', '18', '1.20062', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('358', '18', '18', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('359', '19', '18', '1.28868', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('360', '20', '18', '1.10905', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('361', '1', '19', '1.17923', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('362', '2', '19', '1.06901', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('363', '3', '19', '1.30734', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('364', '4', '19', '0.82970', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('365', '5', '19', '0.72644', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('366', '6', '19', '0.64313', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('367', '7', '19', '0.53634', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('368', '8', '19', '1.25230', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('369', '9', '19', '1.15250', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('370', '10', '19', '0.50557', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('371', '11', '19', '0.57038', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('372', '12', '19', '0.83518', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('373', '13', '19', '0.96475', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('374', '14', '19', '0.81822', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('375', '15', '19', '0.69686', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('376', '16', '19', '0.52962', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('377', '17', '19', '1.05753', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('378', '18', '19', '1.19881', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('379', '19', '19', '1.00000', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('380', '20', '19', '0.51072', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('381', '1', '20', '1.08933', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('382', '2', '20', '1.41448', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('383', '3', '20', '1.30440', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('384', '4', '20', '0.77855', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('385', '5', '20', '1.47955', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('386', '6', '20', '0.56213', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('387', '7', '20', '0.87197', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('388', '8', '20', '1.17349', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('389', '9', '20', '0.75152', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('390', '10', '20', '0.73712', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('391', '11', '20', '0.93103', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('392', '12', '20', '0.94381', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('393', '13', '20', '1.42595', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('394', '14', '20', '0.79832', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('395', '15', '20', '1.21377', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('396', '16', '20', '1.17388', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('397', '17', '20', '0.72807', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('398', '18', '20', '0.61874', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('399', '19', '20', '1.40947', '2017-07-27');
INSERT INTO `currency_rates` VALUES ('400', '20', '20', '1.00000', '2017-07-27');

-- ----------------------------
-- Table structure for currency_rates_history
-- ----------------------------
DROP TABLE IF EXISTS `currency_rates_history`;
CREATE TABLE `currency_rates_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `cur_from` int(11) DEFAULT NULL,
  `cur_to` int(11) DEFAULT NULL,
  `cur_value` decimal(17,5) DEFAULT NULL,
  `cur_convert` decimal(17,5) DEFAULT NULL,
  `cur_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=526 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of currency_rates_history
-- ----------------------------
INSERT INTO `currency_rates_history` VALUES ('512', '14', '20', '145.00000', '115.75640', '2017-07-27 07:58:22');
INSERT INTO `currency_rates_history` VALUES ('513', '6', '3', '1489.00000', '155.53570', '2017-07-27 08:16:50');
INSERT INTO `currency_rates_history` VALUES ('514', '19', '1', '85.00000', '46.24425', '2017-07-27 08:16:58');
INSERT INTO `currency_rates_history` VALUES ('515', '10', '2', '855.00000', '938.19150', '2017-07-27 08:17:03');
INSERT INTO `currency_rates_history` VALUES ('516', '12', '12', '87.00000', '87.00000', '2017-07-27 08:17:09');
INSERT INTO `currency_rates_history` VALUES ('517', '12', '2', '877.00000', '549.27387', '2017-07-27 08:17:37');
INSERT INTO `currency_rates_history` VALUES ('518', '4', '1', '123.00000', '149.35644', '2017-07-27 21:23:10');
INSERT INTO `currency_rates_history` VALUES ('519', '6', '15', '1.00000', '1.21622', '2017-07-27 21:26:53');
INSERT INTO `currency_rates_history` VALUES ('520', '6', '15', '1.00000', '1.21622', '2017-07-27 21:29:09');
INSERT INTO `currency_rates_history` VALUES ('521', '6', '15', '1.00000', '1.21622', '2017-07-27 21:29:10');
INSERT INTO `currency_rates_history` VALUES ('522', '6', '15', '1.00000', '1.21622', '2017-07-27 21:29:10');
INSERT INTO `currency_rates_history` VALUES ('523', '6', '15', '1.00000', '1.21622', '2017-07-27 21:29:10');
INSERT INTO `currency_rates_history` VALUES ('524', '6', '15', '1.00000', '1.21622', '2017-07-27 21:29:11');
INSERT INTO `currency_rates_history` VALUES ('525', '6', '15', '199.00000', '242.02778', '2017-07-27 21:29:13');
