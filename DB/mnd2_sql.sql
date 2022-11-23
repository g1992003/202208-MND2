/*
Navicat MySQL Data Transfer

Source Server         : mnd2
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mnd2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-11-22 13:50:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `a_id` int(11) NOT NULL,
  `a_title` longtext DEFAULT NULL,
  `a_text` longtext DEFAULT NULL,
  `a_status` int(11) DEFAULT NULL,
  `a_order` int(11) DEFAULT NULL,
  `a_page` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('1', '網路戰聯隊 -標題', '&lt;p&gt;網路戰聯隊&lt;br /&gt;\r\n網路戰聯隊&lt;br /&gt;\r\n網路戰聯隊&lt;br /&gt;\r\n網路戰聯隊&lt;br /&gt;\r\n網路戰聯隊&lt;br /&gt;\r\n網路戰聯隊&lt;/p&gt;\r\n', '0', '2', '1');
INSERT INTO `about` VALUES ('2', '資訊通信聯隊', '', '0', '3', '1');
INSERT INTO `about` VALUES ('3', '電子戰中心', '', '0', '4', '1');
INSERT INTO `about` VALUES ('4', '訓測中心', '', '0', '5', '1');
INSERT INTO `about` VALUES ('5', '招募專區', '', '0', '6', '1');
INSERT INTO `about` VALUES ('7', '本部沿革', '', '0', '1', '2');
INSERT INTO `about` VALUES ('8', '部隊主官123', '&lt;p&gt;部隊主官123&lt;/p&gt;\r\n\r\n&lt;p&gt;部隊主官123&lt;/p&gt;\r\n\r\n&lt;p&gt;部隊主官123&lt;/p&gt;\r\n\r\n&lt;p&gt;部隊主官123&lt;/p&gt;\r\n\r\n&lt;p&gt;部隊主官123&lt;/p&gt;\r\n\r\n&lt;p&gt;部隊主官123&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '1', '0', '2');

-- ----------------------------
-- Table structure for depart
-- ----------------------------
DROP TABLE IF EXISTS `depart`;
CREATE TABLE `depart` (
  `d_id` int(11) NOT NULL,
  `d_title` varchar(255) DEFAULT NULL,
  `d_text` longtext DEFAULT NULL,
  `d_status` int(11) DEFAULT NULL,
  `d_order` int(11) DEFAULT NULL,
  `dc_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of depart
-- ----------------------------
INSERT INTO `depart` VALUES ('1', '指揮室 - 資訊789', '&lt;p&gt;目前嘉義、台南、高雄等地區都是酪梨主要產地，特別是&lt;a href=&quot;https://bit.ly/3OOx8Im&quot;&gt;台南大內&lt;/a&gt;是栽種面積最大的產區，幾乎佔全台總量1/3。&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;位於台南大內的左岸幸福莊園，採用自然農法栽培酪梨，還放養雞、鵝來吃蟲草做生態防治&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175645/item_19694_958039a3a13ad0eeb70381571e43f468-1240x698.jpeg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175645/item_19694_958039a3a13ad0eeb70381571e43f468-1240x698.jpeg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175645/item_19694_958039a3a13ad0eeb70381571e43f468-768x433.jpeg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175645/item_19694_958039a3a13ad0eeb70381571e43f468.jpeg 1280w&quot; style=&quot;height:698px; width:1240px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;▲位於台南大內的左岸幸福莊園，採用自然農法栽培酪梨，還放養雞、鵝來吃蟲草做生態防治！（圖／&lt;a href=&quot;https://bit.ly/3OOx8Im&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;\r\n\r\n&lt;h2&gt;常見酪梨品種有哪些&lt;/h2&gt;\r\n\r\n&lt;p&gt;目前台灣栽種的酪梨大概有30多種，如果單純以酪梨外皮顏色，可以分成轉色及不轉色酪梨；或是以酪梨的成熟期來區分，共有早生種、中生種和晚生種三大類，如果要再更細分的話，不同品種的酪梨油脂含量有高有低，因此口感也不同喔！&lt;/p&gt;\r\n', '1', '4', '3');
INSERT INTO `depart` VALUES ('2', '政戰作戰室 - 文章741', '&lt;p&gt;政戰作戰室 - 文章741&lt;/p&gt;\r\n\r\n&lt;p&gt;政戰作戰室 - 文章741&lt;/p&gt;\r\n\r\n&lt;p&gt;政戰作戰室 - 文章741&lt;/p&gt;\r\n\r\n&lt;p&gt;政戰作戰室 - 文章741&lt;/p&gt;\r\n\r\n&lt;p&gt;政戰作戰室 - 文章741&lt;/p&gt;\r\n', '1', '3', '2');
INSERT INTO `depart` VALUES ('3', '指揮室666', '&lt;h3&gt;#1&amp;nbsp;&lt;a href=&quot;https://bit.ly/3bGKG9Z&quot;&gt;早生種&lt;/a&gt;酪梨(6-8月採收)&lt;/h3&gt;\r\n\r\n&lt;p&gt;&amp;ndash;&lt;strong&gt;嘉選4號&lt;/strong&gt;(轉色)：嘉義及台南地區栽種最多，產期約6月中旬至7月底，是目前最早生的品種。果實有點像西洋梨的形狀、果皮黃綠有光澤，成熟時果皮轉暗紫紅色就是最佳品嚐時機，再放置後熟會有圓形凹陷斑點。 果肉脂肪含量約 8-14%，口感較清爽水潤，餘味不膩，帶有淡淡奶香，適合做成墨西哥酪梨醬，或切片沾醬油與哇沙米享用。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ndash;&lt;strong&gt;清進1號&lt;/strong&gt;(轉色)：又叫黑美人，台南屏東都有栽種，產期約7月中旬~8月。果為長梨型，成熟果皮綠且光滑，後熟後果皮呈紫黑色，果皮厚，果肉黃色，脂肪含量約 4-11%，口感軟而紮實帶乳香味，後味微甜，但比較不耐冷藏。&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;台灣從初夏開始就可以吃到各種酪梨囉&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175952/5O7A6894-1240x827.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175952/5O7A6894-1240x827.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175952/5O7A6894-768x512.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175952/5O7A6894-1440x960.jpg 1440w&quot; style=&quot;height:827px; width:1240px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;▲台灣從初夏開始就可以吃到各種酪梨囉～（圖／&lt;a href=&quot;https://bit.ly/3NNb67w&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;\r\n\r\n&lt;h3&gt;#2&amp;nbsp;&lt;a href=&quot;https://bit.ly/3NNb67w&quot;&gt;中生種&lt;/a&gt;酪梨(8-10月採收)&lt;/h3&gt;\r\n\r\n&lt;p&gt;&amp;ndash;&lt;strong&gt;章安&lt;/strong&gt;(不轉色)：俗稱竹崎早生，產期7-8月，果型為長橢圓形、頸微長。成熟時果皮是亮綠色，後熟果皮顏色轉為綠色。果皮偏厚且粗糙，果肉黃、脂肪含量5-8%、口感較水，在盛產期後段採收的果實會有回甘的感覺，較適合打果汁。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ndash;&lt;strong&gt;清進2號&lt;/strong&gt;(轉色)：又叫紅心圓，大多栽種在台南屏東地區，產期約為7月底至9月中，果實像是鴕鳥蛋、圓卵形，果皮較厚且綠而光滑，當後熟轉為紫紅色的時候，味道最好！種籽佔的體積較大，果肉脂肪含量約8-15%，質地更加水潤鬆軟似豆腐，適合打成酪梨牛奶、做沙拉或沙拉醬！&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ndash;&lt;strong&gt;嘉選2號&lt;/strong&gt;(轉色)：普遍栽種在麻豆地區，產期約8月中至9月，果實為橢圓型，果皮較厚且亮綠，後熟時果皮轉紫紅色。果肉脂肪含量僅約4-6%，果肉質地如奶油般、口感較水嫩細滑，吃完會有甘甜餘味，適合直接切開鮮食。&lt;/p&gt;\r\n\r\n&lt;p&gt;-嘉選3號(不轉色)：產期8月中~9月中。果形洋梨形，低頸較長，果皮深綠光滑，果皮厚像皮革般的材質，軟熟時，果皮仍為暗綠色，很好剝皮。果肉黃色，脂肪含量13-16﹪，口感Q、果味溫和芳香。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ndash;&lt;strong&gt;十月紅&lt;/strong&gt;(轉色)：產期約10月上至11月上旬，外觀呈卵型，後熟果皮顏色為暗紫色。果實大、果肉率高，果肉脂肪含量5-8%、質地呈乳酪般滑嫩、吃完嘴巴會帶有甘味。&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;8-9月是酪梨盛產季，這個時候的品種超多，可以吃到不同口感&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122337/%E5%8D%81%E6%9C%88%E7%B4%85A-1240x864.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122337/%E5%8D%81%E6%9C%88%E7%B4%85A-1240x864.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122337/%E5%8D%81%E6%9C%88%E7%B4%85A-768x535.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122337/%E5%8D%81%E6%9C%88%E7%B4%85A-1440x1003.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122337/%E5%8D%81%E6%9C%88%E7%B4%85A.jpg 1533w&quot; style=&quot;height:864px; width:1240px&quot; /&gt;&lt;/p&gt;\r\n', '1', '2', '3');
INSERT INTO `depart` VALUES ('4', '人事行政室-sssss', '&lt;h3&gt;#3&amp;nbsp;&lt;a href=&quot;https://bit.ly/3P1LQv8&quot;&gt;晚生種&lt;/a&gt;酪梨(12-2月採收)&lt;/h3&gt;\r\n\r\n&lt;p&gt;&amp;ndash;&lt;strong&gt;厚兒Hall&lt;/strong&gt;(不轉色)：產期約10~12月，外觀呈梨形，果皮約近光滑，暗綠，皮厚；種子中等大小，和果肉緊貼；果肉偏綠黃色，脂肪含量10-16%，口感紮實Q彈、越嚼越甘美且帶有乳香。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ndash;&lt;strong&gt;秋可Choquette&lt;/strong&gt;(不轉色)：產期約12月～3月，外觀呈現蛋形，初期亮綠，後熟會轉為暗綠或淡綠。外皮有點粗糙帶顆粒，果肉厚顏色黃，脂肪含量8-13%，質地軟嫩滑溜、味道溫和帶甜味。&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;不同品種酪梨好不好吃通常取決於脂肪含量，晚生種的酪梨含油量高，口感更好&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01185858/S__2736144-1240x930.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01185858/S__2736144-1240x930.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01185858/S__2736144-768x576.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01185858/S__2736144-1440x1080.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01185858/S__2736144-600x450.jpg 600w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01185858/S__2736144.jpg 1478w&quot; style=&quot;height:930px; width:1240px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;▲不同品種酪梨好不好吃通常取決於脂肪含量，晚生種的酪梨含油量高，口感更好！（圖／&lt;a href=&quot;https://bit.ly/3P1LQv8&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;\r\n\r\n&lt;h2&gt;不看顏色，挑酪梨看這裡&lt;/h2&gt;\r\n\r\n&lt;p&gt;酪梨採收後還需要後熟才能品嚐到最佳風味，會轉色的酪梨可以先觀察外皮顏色是否變成深紫趨近黑色，再用手輕壓，只要有點柔軟就是成熟可吃囉。但連蒂頭都變深色，就是放到過熟，酪梨肉會出現纖維，直接吃口感比較差，不過還是可以打果汁啦～&lt;/p&gt;\r\n\r\n&lt;p&gt;另外如果是不會變色的酪梨，就算放再久也不會變黑，這個時候就看手感摸起來變得柔軟及出現深色斑點、以手指輕捏會陷入不會彈回，熟度就夠了！&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;不是每個酪梨都會變色，要看熟不熟還是用手摸最準啦&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122212/LINE_ALBUM_%E9%85%AA%E6%A2%A8%E7%85%A7%E7%89%87_220622_11-1240x697.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122212/LINE_ALBUM_%E9%85%AA%E6%A2%A8%E7%85%A7%E7%89%87_220622_11-1240x697.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122212/LINE_ALBUM_%E9%85%AA%E6%A2%A8%E7%85%A7%E7%89%87_220622_11-768x431.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122212/LINE_ALBUM_%E9%85%AA%E6%A2%A8%E7%85%A7%E7%89%87_220622_11.jpg 1280w&quot; style=&quot;height:697px; width:1240px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;▲不是每個酪梨都會變色，要看熟不熟還是用手摸最準啦～（圖／&lt;a href=&quot;https://bit.ly/3OOx8Im&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;\r\n\r\n&lt;h2&gt;酪梨這樣吃美味更加分&lt;/h2&gt;\r\n\r\n&lt;h3&gt;#1 依吃法挑酪梨&lt;/h3&gt;\r\n\r\n&lt;p&gt;-油脂豐厚的品種，適合做成抹醬或拌沙拉、當壽司，例如進口的哈斯酪梨，或嘉選4號、紅心圓、秋可、厚兒，都屬於油脂含量高的酪梨。&lt;/p&gt;\r\n\r\n&lt;p&gt;-想品嚐生魚片般清爽水潤的口感，可以選嘉選4號、黑美人、嘉選2號、十月紅等油脂含量較低的品種。&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;酪梨的吃法超級多，你想怎麼吃就要選對酪梨品種哦&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123146/shutterstock_400051756-1240x802.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123146/shutterstock_400051756-1240x802.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123146/shutterstock_400051756-768x497.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123146/shutterstock_400051756-1440x932.jpg 1440w&quot; style=&quot;height:802px; width:1240px&quot; /&gt;&lt;/p&gt;\r\n', '1', '1', '4');
INSERT INTO `depart` VALUES ('5', '人事行政室999999', '&lt;h3&gt;#3 搭配當季水果更對味&lt;/h3&gt;\r\n\r\n&lt;p&gt;你知道嗎？酪梨加上夏天當季的&lt;a href=&quot;https://bit.ly/3nIuJ64&quot;&gt;百香果&lt;/a&gt;，竟然可以帶出酪梨滑順的口感！酪梨剖開後，先將籽取出，並刮除酪梨籽殘留的膜，避免苦味。接著再用湯匙將果肉挖出，和百香果汁一起放入果汁機混打，加入一點白開水，再打到均勻，就是一杯酸甜滑順的果汁啦～&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;酪梨加牛奶是基本，酪梨加百香果沒想到吧&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123156/shutterstock_629428340-1240x827.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123156/shutterstock_629428340-1240x827.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123156/shutterstock_629428340-768x512.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123156/shutterstock_629428340-1440x960.jpg 1440w&quot; style=&quot;height:827px; width:1240px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;▲酪梨加牛奶是基本，酪梨加百香果沒想到吧XD（圖/ Shutterstock）&lt;/p&gt;\r\n', '1', '0', '4');

-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE IF EXISTS `document`;
CREATE TABLE `document` (
  `d_id` int(11) NOT NULL,
  `d_text` longtext DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of document
-- ----------------------------
INSERT INTO `document` VALUES ('1', '資通電軍');
INSERT INTO `document` VALUES ('2', null);
INSERT INTO `document` VALUES ('3', null);
INSERT INTO `document` VALUES ('4', null);
INSERT INTO `document` VALUES ('5', null);
INSERT INTO `document` VALUES ('6', null);
INSERT INTO `document` VALUES ('7', null);
INSERT INTO `document` VALUES ('8', null);
INSERT INTO `document` VALUES ('21', null);
INSERT INTO `document` VALUES ('22', null);
INSERT INTO `document` VALUES ('23', null);
INSERT INTO `document` VALUES ('24', null);
INSERT INTO `document` VALUES ('25', null);
INSERT INTO `document` VALUES ('26', null);
INSERT INTO `document` VALUES ('27', '2022_11_22_0338340.mp4');

-- ----------------------------
-- Table structure for d_class
-- ----------------------------
DROP TABLE IF EXISTS `d_class`;
CREATE TABLE `d_class` (
  `dc_id` int(11) NOT NULL,
  `dc_title` varchar(255) DEFAULT NULL,
  `dc_account` varchar(255) DEFAULT NULL,
  `dc_password` varchar(255) DEFAULT NULL,
  `dc_name` varchar(255) DEFAULT NULL,
  `dc_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`dc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_class
-- ----------------------------
INSERT INTO `d_class` VALUES ('2', '政戰作戰室', null, null, null, '4');
INSERT INTO `d_class` VALUES ('3', '指揮室', null, null, null, '3');
INSERT INTO `d_class` VALUES ('4', '人事行政室', 'sunny', '16d7a4fca7442dda3ad93c9a726597e4', 'kuo sunny', '2');
INSERT INTO `d_class` VALUES ('5', '源做設計', 'mak', '3e33d279a8c7366cd5ddad0c6cfde0ba', 'MAK', '1');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `i_id` int(11) NOT NULL,
  `i_title` longtext DEFAULT NULL,
  `i_img` varchar(255) DEFAULT NULL,
  `i_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', '日本IPPA特定非營利活動法人知識產權振興協會', '2022_11_17_0828501.jpeg', '2');
INSERT INTO `image` VALUES ('2', '健柏診所', '2022_11_17_0831391.jpeg', '1');

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `l_id` int(11) NOT NULL,
  `l_title` longtext DEFAULT NULL,
  `l_page` int(11) DEFAULT NULL,
  `l_type` int(11) DEFAULT NULL,
  `l_url` longtext DEFAULT NULL,
  `l_text` longtext DEFAULT NULL,
  `l_status` int(11) DEFAULT NULL,
  `l_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('1', '好戰連結-文章', '2', '2', '', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/upload/images/_HT_0007.jpg&quot; style=&quot;height:1200px; width:800px&quot; /&gt;&lt;/p&gt;\r\n', '1', '2');
INSERT INTO `link` VALUES ('2', '系統連結 - 連結', '1', '1', 'https://blog.owlting.com/2019/09/06/ski-equipment-tiro-tips/', '&lt;p&gt;前面提到，滑雪是一項很專業又花錢的運動，這可不是隨便說說的。&lt;/p&gt;\r\n\r\n&lt;p&gt;有逛過運動用品店的人就知道，專業的滑雪裝備可都不便宜，主要是因為雪板、安全帽、雪鏡、護具等都是專業裝備，本來就所費不貲；滑雪時所穿的衣物，除了必須保暖以外，還需要有防水的效果；而考量到運動時的摩擦與安全性，雪鞋也較一般的鞋子來得保暖又硬挺。&lt;/p&gt;\r\n\r\n&lt;p&gt;因此若你是滑雪的新手，在準備滑雪裝備上，可以遵循「租借為主，自購為輔」這項準則，這樣才能在有限的預算中，享受到安全又不失水準的滑雪之旅。&lt;/p&gt;\r\n', '1', '1');
INSERT INTO `link` VALUES ('3', '系統連結 - 文章', '1', '2', '', '&lt;h1&gt;新手免煩惱～滑雪裝備這樣準備又省又齊全 縱橫雪場不是夢！&lt;/h1&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://blog.owlting.com/author/doris-wang/&quot;&gt;??沒有蛋的黃酥&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://blog.owlting.com/2019/09/06/ski-equipment-tiro-tips/&quot; rel=&quot;bookmark&quot;&gt;2019-09-06&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;隨著時序進入秋季，冬天也不遠了！提到冬天，一定不能錯過的就是被銀白色妝點的雪景，還有滑雪這項超熱門的運動，雖然台灣不會下雪（高山除外），但鄰近的日本、韓國可是亞洲知名的雪國，每到冬季就會迎來許多滑雪好手和想要體驗滑雪這項冬季運動的遊客。&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094839/558246163-1240x826.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094839/558246163-1240x826.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094839/558246163-768x512.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094839/558246163.jpg 1280w&quot; style=&quot;height:826px; width:1240px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;對於滑雪新手來說，滑雪裝備要準備什麼就是個大問題。畢竟滑雪是一項很專業又花錢的運動，不只需要學習滑雪的技巧，必需的裝備也不少，到底哪些裝備是必備或是需要自備、又有哪些裝備可以到滑雪場再租用，這一篇通通告訴你！&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094849/1491127874-1240x826.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094849/1491127874-1240x826.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094849/1491127874-768x512.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094849/1491127874.jpg 1280w&quot; style=&quot;height:826px; width:1240px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;\r\n&lt;h4&gt;日本滑雪揪一波&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://bit.ly/30VMfqn&quot;&gt;【新潟冬季門票組】湯澤高原纜車組合票 滑雪+溫泉+纜車玩翻雪國&lt;/a&gt;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n\r\n&lt;h4&gt;滑雪這項運動&lt;/h4&gt;\r\n\r\n&lt;p&gt;在介紹滑雪裝備之前，先帶大家了解一下滑雪這項運動。&lt;/p&gt;\r\n\r\n&lt;p&gt;滑雪是這項運動的概括總稱，依照使用的用具的不同，可以分為滑雪雙板（Ski）與雪地滑板（Snowboard）。&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06095411/115041883-1240x826.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06095411/115041883-1240x826.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06095411/115041883-768x512.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06095411/115041883.jpg 1280w&quot; style=&quot;height:826px; width:1240px&quot; /&gt;&lt;/p&gt;\r\n', '1', '0');
INSERT INTO `link` VALUES ('4', '好站連結 - 連結', '2', '1', 'https://blog.owlting.com/category/articles/market/recipe/', '', '1', '3');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `m_id` varchar(6) NOT NULL,
  `m_type` varchar(10) DEFAULT NULL,
  `m_name` varchar(255) DEFAULT NULL,
  `m_url` varchar(255) DEFAULT NULL,
  `m_icon_sidebar` varchar(255) DEFAULT NULL,
  `m_icon_index` varchar(255) DEFAULT NULL,
  `m_main_purview` varchar(10) DEFAULT NULL,
  `m_sub_purview` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('011', 'root', '網站基本設定', '-', 'fa fa-cogs', '-', '2', '0');
INSERT INTO `menu` VALUES ('011-06', 'leaf', '網頁基本設定', 'sethead.php', '-', 'fa fa-cogs', '2', '0');
INSERT INTO `menu` VALUES ('011-11', 'leaf', '其他資訊設定', 'setdoc.php', '-', 'fa fa-info', '2', '0');
INSERT INTO `menu` VALUES ('016', 'root', '首頁資訊專區', '-', 'fa fa-university', 'fa fa-university', '2', '0');
INSERT INTO `menu` VALUES ('016-11', 'leaf', '主視覺設定', 'setdoc.php?p=1', '-', 'fa fa-picture-o', '2', '0');
INSERT INTO `menu` VALUES ('016-16', 'leaf', '直屬單位管理', 'about.php?p=1', '-', 'fa fa-pencil-square-o', '2', '0');
INSERT INTO `menu` VALUES ('016-21', 'leaf', '忠信報管理', 'image.php', '-', 'fa fa-picture-o', '2', '0');
INSERT INTO `menu` VALUES ('021', 'root', '關於本部管理', 'about.php?p=2', 'fa fa-plane', 'fa fa-plane', '2', '0');
INSERT INTO `menu` VALUES ('026', 'root', '處室介紹管理', 'd_class.php', 'fa fa-binoculars', 'fa fa-binoculars', '3', '0');
INSERT INTO `menu` VALUES ('031', 'root', '最新消息管理', 'news.php?p=1', 'fa fa-newspaper-o', 'fa fa-newspaper-o', '3', '0');
INSERT INTO `menu` VALUES ('036', 'root', '行政規則管理', 'news.php?p=2', 'fa fa-newspaper-o', 'fa fa-newspaper-o', '3', '0');
INSERT INTO `menu` VALUES ('041', 'root', '一令到位管理', 'news.php?p=3', 'fa fa-newspaper-o', 'fa fa-newspaper-o', '3', '0');
INSERT INTO `menu` VALUES ('046', 'root', '系統連結管理', 'link.php?p=1', 'fa fa-cog', 'fa fa-cog', '2', '0');
INSERT INTO `menu` VALUES ('051', 'root', '好站連結管理', 'link.php?p=2', 'fa fa-link', 'fa fa-link', '2', '0');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `n_id` int(11) NOT NULL,
  `n_date` date DEFAULT NULL,
  `n_title` longtext DEFAULT NULL,
  `n_unit` varchar(255) DEFAULT NULL,
  `n_name` varchar(255) DEFAULT NULL,
  `n_file` varchar(255) DEFAULT NULL,
  `n_text` longtext DEFAULT NULL,
  `n_status` int(11) DEFAULT NULL,
  `n_page` int(11) DEFAULT NULL,
  `dc_id` int(11) DEFAULT NULL,
  `n_order` int(11) DEFAULT NULL,
  `n_tag` varchar(255) DEFAULT NULL,
  `n_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '2022-10-07', '央行只升半碼 打房軟著陸？1千萬房貸恐多繳14萬利息', '東森財經', '郭山泥', null, '&lt;p&gt;test&lt;/p&gt;\r\n', '1', '1', '2', '13', '指揮室', null);
INSERT INTO `news` VALUES ('2', '2022-11-03', '她錄取台積電1職缺「想待到退休」 卻憂1原因被取代', '技術服務中心', 'ABCDEF', null, '', '1', '2', '2', '12', '指揮 - 行政', '0123456789');
INSERT INTO `news` VALUES ('3', '2022-11-17', '「天堂M」機率不實！遊戲橘子遭罰200萬 丁特：正義必得伸張999', 'MAK', 'Sunny', null, '', '1', '3', '2', '11', '指揮 - 一令到位', null);
INSERT INTO `news` VALUES ('4', '2022-10-15', '美濃瓜長在美濃？美濃瓜要怎麼吃？你所不知道的美濃瓜小知識都在這', '產銷', '丁噹', '2022_11_17_1035270.docx', '&lt;h1&gt;美濃瓜長在美濃？美濃瓜要怎麼吃？你所不知道的美濃瓜小知識都在這&lt;/h1&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://blog.owlting.com/author/luise_lin/&quot;&gt;?? Luise_Lin&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://blog.owlting.com/2021/06/11/tips-of-muskmelon/&quot; rel=&quot;bookmark&quot;&gt;2021-06-11&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;\r\n&lt;p&gt;如同太陽餅沒有太陽、王子麵沒有王子，&lt;a href=&quot;https://utm.to/3hykzr&quot;&gt;美濃瓜&lt;/a&gt;其實也不是長在美濃？！那美濃瓜的名字又是怎麼來的？要怎麼選、什麼時候吃、怎麼吃才會吃到最美味的美濃瓜呢？所有關於美濃瓜的疑問，包含吃瓜有什麼好處、怎麼保存，今天都幫你一次解答囉！&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n\r\n&lt;h2&gt;&lt;a href=&quot;https://utm.to/3hykzr&quot;&gt;美濃瓜&lt;/a&gt;小知識#1 品種與它的產地/季&lt;/h2&gt;\r\n\r\n&lt;p&gt;美濃瓜就是俗稱的香瓜、甜瓜、梨仔瓜，屬於東方甜瓜(Orient&amp;nbsp;Melon)的一種，原產於中東和非洲一帶，最早在1930 年從日本引進，之後 1950 年代左右又從日本及美國引進優良品種來進行育種。&lt;/p&gt;\r\n\r\n&lt;p&gt;最常見的品種有銀輝和嘉玉、新玉，都是外表光滑銀白偏綠稍微帶點黃色；另外有金輝，是黃皮、橢圓形，又叫「黃香瓜」，跟美濃瓜算近親XD&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;美濃瓜長在美濃？美濃瓜要怎麼吃？你所不知道的美濃瓜小知識都在這&quot; sizes=&quot;(max-width: 660px) 100vw, 660px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09155725/DSC08641-1440x960.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09155725/DSC08641-1440x960.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09155725/DSC08641-1240x827.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09155725/DSC08641-768x512.jpg 768w&quot; style=&quot;height:440px; width:660px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;▲成熟的&lt;a href=&quot;https://utm.to/3jdmtc&quot;&gt;美濃瓜&lt;/a&gt;果皮為銀亮的黃白色、果肉則是淡白綠色。（圖／&lt;a href=&quot;https://utm.to/3jdmtc&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;\r\n\r\n&lt;p&gt;而美濃瓜喜歡高溫且日照多，還對低溫很敏感，因此多種植在中南部像是雲林、嘉義、台南等地區，7-10月是它的盛產期。&lt;/p&gt;\r\n\r\n&lt;p&gt;?? 好吃的美濃瓜在這裡??&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://utm.to/3jdmtc&quot;&gt;【微笑田園】一株只留一瓜 香甜多汁好香瓜&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://utm.to/3jnaus&quot;&gt;【友田珍鄉農場】離地吊瓜溫室不淋雨栽培&amp;nbsp;皮薄肉多又甜&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://utm.to/3gmkln&quot;&gt;【小善心農場】白泡泡幼綿綿 限量有機美濃瓜&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;美濃瓜喜歡溫暖乾燥的地方&quot; sizes=&quot;(max-width: 660px) 100vw, 660px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09171619/12039007177337-1440x1081.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09171619/12039007177337-1440x1081.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09171619/12039007177337-1240x931.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09171619/12039007177337-768x576.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09171619/12039007177337-600x450.jpg 600w&quot; style=&quot;height:495px; width:660px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;▲&lt;a href=&quot;https://utm.to/3eer72&quot;&gt;美濃瓜&lt;/a&gt;的主要產地在雲林、嘉義及台南等地區。（圖／&lt;a href=&quot;https://utm.to/3eer72&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;\r\n\r\n&lt;h2&gt;美濃瓜小知識#2 挑選小撇步&lt;/h2&gt;\r\n\r\n&lt;p&gt;想要挑選好吃的美濃瓜，主要可以從四個方面去判斷&lt;/p&gt;\r\n\r\n&lt;h3&gt;?? 外型&lt;/h3&gt;\r\n\r\n&lt;p&gt;好的美濃瓜果形會端正飽滿、呈微扁圓形；表皮則是平滑有光澤，越新鮮的帶有茸毛，用手掌摸會有點沾黏感。如果有深褐色、黑色的塊狀水傷斑痕或蟲孔，都母湯哦！&lt;/p&gt;\r\n\r\n&lt;h3&gt;?? 香氣&lt;/h3&gt;\r\n\r\n&lt;p&gt;成熟的美濃瓜會散發濃郁香氣，越濃代表越甜；仔細聞的話也會發現，香味最濃的地方通常是底部的果臍，因為美濃瓜由臍部開始成熟，甜度較高、是整粒果實最好吃的部位??&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;優秀的美濃瓜外觀端正飽滿、平滑有光澤&quot; sizes=&quot;(max-width: 660px) 100vw, 660px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175844/IMG_0331-1440x960.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175844/IMG_0331-1440x960.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175844/IMG_0331-1240x827.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175844/IMG_0331-768x512.jpg 768w&quot; style=&quot;height:440px; width:660px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;▲挑選&lt;a href=&quot;https://utm.to/3f2d6d&quot;&gt;美濃瓜&lt;/a&gt;可以看外觀顏色和香氣。（圖／&lt;a href=&quot;https://utm.to/3f2d6d&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;\r\n\r\n&lt;h3&gt;?? 果臍&lt;/h3&gt;\r\n\r\n&lt;p&gt;縮小、閉合且平整、沒有明顯凹凸差或裂痕的的果臍，也是好瓜瓜的挑選標準之一。在吃之前可以用手輕壓果臍，柔軟有彈性就代表熟度剛好，可以開吃囉??&lt;/p&gt;\r\n\r\n&lt;h3&gt;?? 重量&lt;/h3&gt;\r\n\r\n&lt;p&gt;如果兩顆大小差不多，放在手掌上感覺比較沈甸，表示果肉結實、水分較多；而且因為美濃瓜的甜度會下沉，太大顆的瓜果甜度會不均勻，選300g左右的大小最剛好～&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;果臍平整、入手沈甸甸的美濃瓜最好吃&quot; sizes=&quot;(max-width: 660px) 100vw, 660px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175451/5O7A6225-1-1440x960.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175451/5O7A6225-1-1440x960.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175451/5O7A6225-1-1240x827.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175451/5O7A6225-1-768x512.jpg 768w&quot; style=&quot;height:440px; width:660px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;▲好吃的&lt;a href=&quot;https://utm.to/3hvd94&quot;&gt;美濃瓜&lt;/a&gt;可以從果臍和重量判斷。（圖／&lt;a href=&quot;https://utm.to/3hvd94&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;\r\n\r\n&lt;h2&gt;美濃瓜小知識#3 怎麼吃最好吃&lt;/h2&gt;\r\n\r\n&lt;h3&gt;?? 新鮮吃&lt;/h3&gt;\r\n\r\n&lt;p&gt;最當季的美濃瓜當然要直接吃啊不然要幹嘛？不過在切之前，先不要直接從蒂頭切下去！因為蒂頭有苦味，記得把蒂頭周圍挖掉，再剖開切小塊，就能享受綿密香甜的果肉啦??&amp;zwj;♀?&lt;/p&gt;\r\n\r\n&lt;h3&gt;?? 加工吃&lt;/h3&gt;\r\n\r\n&lt;p&gt;除了當水果，你一定不知道美濃瓜還可以加工！一般在產期末，因為養分不足會長出的綠色小瓜「瓜仔尾」，沒辦法直接食用，果農便會拿來醃漬成醬瓜，翠綠色的醬．美濃瓜用來清炒、涼拌或配稀飯都好吃。&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;切的時候把蒂頭先挖掉，才不會有苦味&quot; sizes=&quot;(max-width: 660px) 100vw, 660px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09181442/5O7A6199-1440x960.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09181442/5O7A6199-1440x960.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09181442/5O7A6199-1240x827.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09181442/5O7A6199-768x512.jpg 768w&quot; style=&quot;height:440px; width:660px&quot; /&gt;&lt;/p&gt;\r\n', '1', '1', '3', '10', '水果', null);
INSERT INTO `news` VALUES ('5', '2022-11-17', '指揮室 - 規則', '', '', '2022_11_17_0800250.pdf', null, '1', '2', '5', '9', '', '963852741');
INSERT INTO `news` VALUES ('6', '2022-09-10', '指揮室 - 一令', 'MAK', 'SUNNY', '2022_11_18_0508320.pdf', null, '1', '3', '3', '7', 'YYY', null);
INSERT INTO `news` VALUES ('7', '2022-11-18', '一令到位 22222', '東森職場0728', '', null, null, '1', '3', '3', '8', 'ZZZZZ', null);
INSERT INTO `news` VALUES ('9', '2022-11-18', '一令33333', '', '', null, null, '1', '3', '3', '6', '', null);
INSERT INTO `news` VALUES ('10', '2022-11-18', '', '', '', null, null, '1', '3', '3', '5', '', null);
INSERT INTO `news` VALUES ('11', '2022-11-18', '大蒜到底有多強，「三大癌症」和關節炎都可以一次打擊', '產銷', '甲假', null, '&lt;p&gt;目前，大蒜廣泛用於與血液系統和心臟有關的幾種病症，包括動脈粥樣硬化（動脈硬化）、高膽固醇、心臟病、冠心病和高血壓。&lt;/p&gt;\r\n\r\n&lt;p&gt;根據權威醫學網站《&lt;a href=&quot;https://www.medicalnewstoday.com/articles/265853.php&quot;&gt;medicalnewstoday&lt;/a&gt;》指出，一些人今天也使用大蒜來預防肺癌、前列腺癌、乳腺癌、胃癌、直腸癌和大腸癌。重要的是要補充一點，這些用途中只有一部分是由研究支持的。&lt;/p&gt;\r\n\r\n&lt;p&gt;發表在食品和化學毒理學雜誌上的一項研究警告說，短期加熱會降低新鮮生蒜提取物的抗炎作用。對於一些不喜歡或不能忍受新鮮大蒜的味道和/或氣味的人來說，這可能是一個問題。&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;strong&gt;優點&lt;/strong&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;img alt=&quot;&quot; src=&quot;/upload/images/b6.png&quot; style=&quot;height:216px; width:296px&quot; /&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;以下是在同行評審的學術期刊上發表的關於大蒜治療益處（或非治療益處）的一些科學研究的例子。&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;strong&gt;肺癌風險&lt;/strong&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;根據江蘇省疾病預防控制中心的一項研究，在7年研究期間每周至少吃生蒜兩次的人患肺癌的風險降低了44％。&lt;/p&gt;\r\n\r\n&lt;p&gt;研究人員在癌症預防研究期刊上發表了他們的研究，對1,424名肺癌患者和4,543名健康人進行了面對面訪談。他們被問及他們的飲食和生活方式，包括有關吸煙的問題以及他們吃大蒜的頻率。&lt;/p&gt;\r\n\r\n&lt;p&gt;該研究的作者寫道：「已經觀察到生大蒜和肺癌攝入之間存在保護性關聯，並採用劑量反應模式，這表明大蒜可能成為肺癌的化學預防劑。」&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;strong&gt;腦癌&lt;/strong&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;大蒜中發現的有機硫化合物已被證實可有效地破壞膠質母細胞瘤（一種致命的腦腫瘤）中的細胞。&lt;/p&gt;\r\n\r\n&lt;p&gt;南卡羅來納醫科大學的科學家在「癌症」雜誌上報導，三種來自大蒜的有機硫化合物&amp;ndash;DAS，DADS和DATS &amp;ndash; &amp;ldquo;已證明在根除腦癌細胞方面有效，但DATS被證明是最有效的。&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;共同作者，Ray Swapan博士說：「這項研究突出了植物來源化合物作為控制人腦腫瘤細胞惡性生長的天然藥物的巨大希望。在腦腫瘤動物模型中需要更多的研究這種治療策略在腦腫瘤患者中的應用。」&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;strong&gt;髖骨關節炎&lt;/strong&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;BMC Musculoskeletal Disorders雜誌報導，英國倫敦國王學院和英國東英吉利大學的一個團隊的飲食中含有豐富的蔥屬蔬菜，其骨關節炎水平較低。蔥屬蔬菜的例子包括大蒜，韭蔥，青蔥，洋蔥和rakkyo。&lt;/p&gt;\r\n\r\n&lt;p&gt;該研究的作者表示，他們的研究結果不僅強調了飲食對骨關節炎結局的可能影響，而且還證明了使用大蒜中存在的化合物開發治療方法的可能性。&lt;/p&gt;\r\n\r\n&lt;p&gt;這項涉及1000多名健康女性雙胞胎的長期研究發現，那些飲食習慣包括大量水果和蔬菜的人，尤其是大蒜，髖關節早期骨關節炎的症狀較少。&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;strong&gt;可能是一種強大的抗生素&lt;/strong&gt;&lt;/h4&gt;\r\n', '1', '1', '3', '4', '配料', null);
INSERT INTO `news` VALUES ('12', '2022-11-21', '消息 原作', '', '', null, '', '0', '1', '5', '3', '', null);
INSERT INTO `news` VALUES ('15', '2022-11-22', '活動快訊1122', '', '', null, null, '1', '3', '4', '2', '', null);
INSERT INTO `news` VALUES ('16', '2022-11-22', '活動快訊1122', '', '', null, null, '1', '3', '2', '1', '', null);
INSERT INTO `news` VALUES ('17', '2022-11-22', '活動快訊1122', '', '', null, '', '0', '1', '4', '0', '', null);

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `r_id` int(11) NOT NULL,
  `r_date` datetime DEFAULT NULL,
  `r_text` varchar(255) DEFAULT NULL,
  `r_account` varchar(255) DEFAULT NULL,
  `r_name` varchar(255) DEFAULT NULL,
  `r_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('2', '2022-09-14 12:02:59', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('3', '2022-09-14 12:07:43', '登出', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('4', '2022-09-14 12:08:31', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('5', '2022-09-14 12:09:38', 'document 資料修改：21', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('6', '2022-09-14 12:09:42', 'document 資料修改：21', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('7', '2022-09-14 12:17:20', 'history 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('8', '2022-09-14 12:18:29', 'history 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('9', '2022-09-14 12:18:47', 'history 資料修改：2', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('10', '2022-09-14 14:30:00', 'history 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('11', '2022-09-14 14:32:05', 'history 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('12', '2022-09-14 14:52:14', 'history 資料修改：3', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('13', '2022-09-14 14:52:20', 'history 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('14', '2022-09-14 14:52:23', 'history 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('15', '2022-09-14 14:52:37', 'history 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('16', '2022-09-14 15:00:21', 'news 資料修改：7', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('17', '2022-09-14 15:03:06', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('18', '2022-09-14 15:06:53', 'news 資料修改：10', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('19', '2022-09-14 15:32:03', 'video 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('20', '2022-09-14 15:32:11', 'video 資料修改：6', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('21', '2022-09-14 15:34:14', 'a_category 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('22', '2022-09-14 15:34:57', 'a_category 資料修改：32', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('23', '2022-09-14 15:37:49', 'video 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('24', '2022-09-14 15:38:03', 'video 資料修改：7', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('25', '2022-09-14 16:08:39', 'photo 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('26', '2022-09-14 16:09:11', 'photo 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('27', '2022-09-14 16:09:17', 'photo 資料修改：11', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('28', '2022-09-14 16:09:33', 'album 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('29', '2022-09-14 16:09:44', 'album 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('30', '2022-09-14 16:09:50', 'album 資料修改：2', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('31', '2022-09-14 16:11:14', 'album 資料修改：2', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('32', '2022-09-14 16:11:27', 'album 資料修改：2', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('33', '2022-09-14 16:17:09', 'travel 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('34', '2022-09-14 16:33:06', 'travel 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('35', '2022-09-14 16:36:11', 'travel 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('36', '2022-09-14 16:36:16', 'travel 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('37', '2022-09-14 16:36:23', 'travel 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('38', '2022-09-14 16:43:01', 'news 資料修改：7', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('39', '2022-09-14 16:43:19', 'news 資料修改：8', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('40', '2022-09-14 16:53:31', 'document 資料修改：6', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('41', '2022-09-14 17:49:21', 'image 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('42', '2022-09-14 17:49:24', 'image 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('43', '2022-09-14 17:50:20', 'image 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('44', '2022-09-14 17:50:36', 'photo 資料修改：10', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('45', '2022-09-14 17:52:15', 'photo 資料修改：10', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('46', '2022-09-14 17:54:17', 'album 資料刪除：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('47', '2022-09-14 17:55:07', 'image 資料刪除：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('48', '2022-09-14 17:55:42', 'photo 資料刪除：10', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('49', '2022-09-15 09:11:24', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('50', '2022-09-15 09:18:10', 'history 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('51', '2022-09-15 09:18:33', 'history 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('52', '2022-09-15 09:18:53', 'history 資料修改：3', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('53', '2022-09-15 09:19:11', 'history 資料修改：2', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('54', '2022-09-15 09:25:48', 'history 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('55', '2022-09-15 09:25:53', 'history 資料修改：2', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('56', '2022-09-15 09:27:31', 'history 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('57', '2022-09-15 09:27:36', 'history 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('58', '2022-09-15 09:28:01', 'history 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('59', '2022-09-15 09:28:08', 'history 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('60', '2022-09-15 09:28:12', 'history 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('61', '2022-09-15 09:58:19', 'image 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('62', '2022-09-15 09:58:32', 'image 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('63', '2022-09-15 10:02:24', 'image 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('64', '2022-09-15 10:04:00', 'image 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('65', '2022-09-15 11:10:22', 'news 資料修改：10', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('66', '2022-09-15 11:10:37', 'news 資料修改：10', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('67', '2022-09-15 11:10:55', 'news 資料修改：10', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('68', '2022-09-15 13:00:55', 'video 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('69', '2022-09-15 13:01:05', 'video 資料修改：6', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('70', '2022-09-15 13:01:36', 'video 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('71', '2022-09-15 13:18:30', 'video 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('72', '2022-09-15 13:52:51', 'video 資料修改：3', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('73', '2022-09-15 15:19:52', 'video 資料修改：7', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('74', '2022-09-15 15:22:46', 'video 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('75', '2022-09-15 15:23:26', 'video 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('76', '2022-09-15 17:04:21', 'video 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('77', '2022-09-15 17:04:39', 'video 資料修改：13', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('78', '2022-09-15 17:05:35', 'video 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('79', '2022-09-15 17:05:45', 'video 資料修改：3', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('80', '2022-09-15 17:24:18', 'video 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('81', '2022-09-15 17:24:50', 'video 資料修改：15', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('82', '2022-09-15 17:30:32', 'video 資料修改：15', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('83', '2022-09-15 17:34:49', 'video 資料修改：15', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('84', '2022-09-15 17:37:24', 'video 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('85', '2022-09-16 09:14:27', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('86', '2022-09-16 09:52:28', 'news 資料修改：3', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('87', '2022-09-16 10:01:09', 'news 資料修改：2', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('88', '2022-09-16 10:01:29', 'news 資料修改：9', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('89', '2022-09-16 10:01:50', 'news 資料修改：9', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('90', '2022-09-16 10:32:12', 'album 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('91', '2022-09-16 10:33:18', 'photo 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('92', '2022-09-16 10:33:58', 'photo 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('93', '2022-09-16 10:34:04', 'photo 資料修改：12', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('94', '2022-09-16 12:28:31', 'travel 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('95', '2022-09-16 12:44:56', 'video 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('96', '2022-09-16 12:46:37', 'video 資料修改：15', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('97', '2022-09-16 12:46:46', 'video 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('98', '2022-09-16 12:47:03', 'video 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('99', '2022-09-16 12:51:40', 'video 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1072', '2022-09-19 10:44:59', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1073', '2022-09-19 10:46:10', 'photo 資料修改：12', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1074', '2022-09-19 10:46:29', 'photo 資料修改：12', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1075', '2022-09-19 10:46:45', 'photo 資料修改：12', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1076', '2022-09-19 10:46:59', 'photo 資料修改：12', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1077', '2022-09-19 10:47:09', 'photo 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1078', '2022-09-19 10:48:20', 'photo 資料刪除：1012', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1079', '2022-09-19 10:48:31', 'photo 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1080', '2022-09-19 10:49:01', 'photo 資料刪除：1013', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1081', '2022-09-19 10:49:12', 'photo 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1082', '2022-09-19 10:50:02', 'photo 資料刪除：13', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1083', '2022-09-19 10:53:07', 'photo 資料刪除：13', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1084', '2022-09-19 10:53:36', 'photo 資料修改：14', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1085', '2022-09-19 10:53:45', 'photo 資料修改：13', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1086', '2022-09-19 10:53:54', 'photo 資料刪除：13', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1087', '2022-09-19 10:54:01', 'photo 資料修改：14', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1088', '2022-09-19 10:54:06', 'photo 資料修改：14', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1089', '2022-09-19 11:01:43', 'photo 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1090', '2022-09-19 11:02:03', 'photo 資料修改：15', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1091', '2022-09-19 11:03:02', 'photo 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1092', '2022-09-19 11:03:08', 'photo 資料修改：16', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1093', '2022-09-19 11:03:19', 'photo 資料修改：16', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1094', '2022-09-19 11:03:28', 'photo 資料修改：16', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1095', '2022-09-19 11:03:37', 'photo 資料刪除：14', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1096', '2022-09-19 11:03:58', 'photo 資料刪除：12', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1097', '2022-09-19 11:04:05', 'photo 資料修改：16', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1098', '2022-09-19 11:04:11', 'photo 資料修改：16', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1099', '2022-09-19 11:04:17', 'photo 資料修改：16', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1100', '2022-09-19 11:04:58', 'photo 資料修改：16', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1101', '2022-09-19 11:09:08', 'photo 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1102', '2022-09-19 11:11:17', 'photo 資料修改：15', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1103', '2022-09-19 11:11:22', 'photo 資料修改：15', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1104', '2022-09-19 11:13:06', 'photo 資料修改：15', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1105', '2022-09-19 11:13:39', 'image 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1106', '2022-09-19 11:14:25', 'image 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1107', '2022-09-19 11:14:31', 'image 資料修改：2', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1108', '2022-09-19 11:14:35', 'image 資料修改：2', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1109', '2022-09-19 11:14:57', 'image 資料修改：2', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1110', '2022-09-19 14:29:49', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.145');
INSERT INTO `record` VALUES ('1111', '2022-09-20 15:04:50', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1112', '2022-09-20 17:53:18', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1113', '2022-09-20 19:10:19', 'document 資料修改：21', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1114', '2022-09-20 19:10:25', 'document 資料修改：22', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1115', '2022-09-20 19:10:48', 'document 資料修改：21', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1116', '2022-09-20 19:11:38', 'document 資料修改：22', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1117', '2022-09-20 19:13:03', 'document 資料修改：23', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1118', '2022-09-20 19:18:12', 'history 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1119', '2022-09-20 19:18:19', 'history 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1120', '2022-09-20 19:18:23', 'history 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1121', '2022-09-20 19:18:27', 'history 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1122', '2022-09-20 19:21:27', 'history 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1123', '2022-09-20 19:21:58', 'history 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1124', '2022-09-20 19:22:43', 'history 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1125', '2022-09-20 19:22:51', 'image 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1126', '2022-09-20 19:23:08', 'image 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1127', '2022-09-20 19:23:12', 'image 資料刪除：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1128', '2022-09-20 19:23:18', 'image 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1129', '2022-09-20 19:23:23', 'image 資料刪除：7', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1130', '2022-09-20 19:33:26', 'news 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1131', '2022-09-20 19:33:42', 'news 資料修改：11', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1132', '2022-09-21 09:22:18', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1133', '2022-09-21 09:47:11', 'document 資料修改：23', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1134', '2022-09-21 09:50:38', 'document 資料修改：23', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1135', '2022-09-21 10:44:07', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1136', '2022-09-21 10:46:09', 'document 資料修改：24', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1137', '2022-09-21 10:47:31', 'document 資料修改：24', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1138', '2022-09-21 15:35:04', 'history 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1139', '2022-09-21 15:35:38', 'history 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1140', '2022-09-21 15:36:23', 'history 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1141', '2022-09-21 15:36:32', 'history 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1142', '2022-09-21 15:36:47', 'history 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1143', '2022-09-21 15:36:53', 'history 資料修改：7', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1144', '2022-09-21 15:37:01', 'history 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1145', '2022-09-21 15:37:08', 'history 資料修改：7', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1146', '2022-09-21 15:37:26', 'history 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1147', '2022-09-21 15:43:35', 'history 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1148', '2022-09-21 15:44:40', 'history 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1149', '2022-09-21 15:44:48', 'history 資料修改：5', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1150', '2022-09-21 16:08:39', 'news 資料修改：11', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1151', '2022-09-21 16:10:52', 'news 資料修改：10', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1152', '2022-09-21 16:13:05', 'history 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1153', '2022-09-21 16:23:57', 'news 資料修改：11', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1154', '2022-09-21 16:26:51', 'news 資料修改：11', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1155', '2022-09-21 16:34:09', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1156', '2022-09-21 16:37:27', 'video 資料修改：1011', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1157', '2022-09-21 16:40:28', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1158', '2022-09-21 16:40:54', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1159', '2022-09-21 16:41:20', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1160', '2022-09-21 16:41:49', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1161', '2022-09-21 16:42:54', 'video 資料修改：1015', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1162', '2022-09-21 16:43:01', 'video 資料修改：1014', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1163', '2022-09-21 16:43:06', 'video 資料修改：1011', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1164', '2022-09-21 16:43:11', 'video 資料修改：1012', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1165', '2022-09-21 16:43:31', 'video 資料修改：1011', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1166', '2022-09-21 16:47:54', 'video 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1167', '2022-09-21 16:48:22', 'video 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1168', '2022-09-21 16:51:23', 'a_category 資料修改：32', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1169', '2022-09-21 16:51:51', 'a_category 資料修改：31', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1170', '2022-09-21 16:52:23', 'a_category 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1171', '2022-09-21 16:52:55', 'a_category 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1172', '2022-09-21 16:53:27', 'a_category 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1173', '2022-09-21 16:53:35', 'a_category 資料修改：31', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1174', '2022-09-21 16:53:40', 'a_category 資料修改：32', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1175', '2022-09-21 16:53:45', 'a_category 資料修改：33', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1176', '2022-09-21 16:53:51', 'a_category 資料修改：34', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1177', '2022-09-21 16:55:58', 'document 資料修改：23', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1178', '2022-09-21 17:00:41', 'video 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1179', '2022-09-21 17:01:32', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1180', '2022-09-21 17:02:45', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1181', '2022-09-21 17:03:42', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1182', '2022-09-21 17:04:44', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1183', '2022-09-21 17:09:55', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1184', '2022-09-21 17:12:30', 'news 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1185', '2022-09-21 17:13:02', 'news 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1186', '2022-09-21 17:13:22', 'news 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1187', '2022-09-21 17:13:43', 'news 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1188', '2022-09-21 17:13:57', 'news 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1189', '2022-09-21 17:21:00', 'news 資料修改：12', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1190', '2022-09-21 17:21:49', 'news 資料修改：12', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1191', '2022-09-21 17:24:43', 'news 資料修改：12', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1192', '2022-09-21 17:25:28', 'news 資料修改：12', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1193', '2022-09-21 17:26:11', 'news 資料修改：12', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1194', '2022-09-21 17:26:34', 'news 資料修改：12', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1195', '2022-09-21 17:29:01', 'news 資料修改：9', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1196', '2022-09-21 17:34:20', 'news 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1197', '2022-09-21 17:35:07', 'news 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1198', '2022-09-21 17:36:17', 'news 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1199', '2022-09-21 17:36:24', 'news 資料修改：14', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1200', '2022-09-21 17:38:57', 'photo 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1201', '2022-09-21 17:39:11', 'photo 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1202', '2022-09-21 19:02:07', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1203', '2022-09-21 19:02:17', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1204', '2022-09-22 09:46:51', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1205', '2022-09-22 11:40:21', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1206', '2022-09-22 12:48:03', 'document 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1207', '2022-09-22 16:07:49', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1208', '2022-09-22 16:11:18', 'history 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1209', '2022-09-22 16:11:33', 'history 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1210', '2022-09-22 16:39:46', 'document 資料修改：23', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1211', '2022-09-22 16:41:22', 'history 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1212', '2022-09-22 16:41:53', 'history 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1213', '2022-09-22 16:42:12', 'history 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1214', '2022-09-22 16:42:38', 'history 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1215', '2022-09-22 16:43:25', 'history 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1216', '2022-09-22 16:47:12', 'history 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1217', '2022-09-22 16:54:33', 'news 資料修改：11', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1218', '2022-09-22 16:54:55', 'news 資料修改：10', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1219', '2022-09-22 16:56:11', 'news 資料修改：10', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1220', '2022-09-22 16:57:39', 'news 資料修改：7', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1221', '2022-09-22 16:58:48', 'news 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1222', '2022-09-22 16:58:55', 'news 資料刪除：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1223', '2022-09-22 16:59:09', 'news 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1224', '2022-09-22 16:59:43', 'history 資料刪除：7', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1225', '2022-09-22 17:00:09', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1226', '2022-09-22 17:00:43', 'history 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1227', '2022-09-22 17:00:54', 'history 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1228', '2022-09-22 17:01:08', 'history 資料修改：9', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1229', '2022-09-22 17:01:16', 'history 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1230', '2022-09-22 17:01:19', 'history 資料修改：9', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1231', '2022-09-22 17:01:23', 'history 資料修改：9', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1232', '2022-09-22 17:01:32', 'history 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1233', '2022-09-22 17:01:34', 'history 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1234', '2022-09-22 17:01:42', 'history 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1235', '2022-09-22 17:01:42', 'history 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1236', '2022-09-22 17:01:50', 'history 資料修改：5', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1237', '2022-09-22 17:01:59', 'history 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1238', '2022-09-22 17:02:24', 'history 資料修改：9', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1239', '2022-09-22 17:02:36', 'history 資料修改：9', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1240', '2022-09-22 17:04:21', 'video 資料修改：1011', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1241', '2022-09-22 17:04:30', 'video 資料修改：1012', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1242', '2022-09-22 17:04:40', 'video 資料修改：1013', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1243', '2022-09-22 17:04:47', 'video 資料修改：1014', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1244', '2022-09-22 17:04:56', 'video 資料修改：1015', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1245', '2022-09-22 17:07:34', 'video 資料修改：9', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1246', '2022-09-22 17:08:19', 'video 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1247', '2022-09-22 17:08:57', 'video 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1248', '2022-09-22 17:09:33', 'video 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1249', '2022-09-22 17:10:25', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1250', '2022-09-22 17:10:32', 'video 資料刪除：2', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1251', '2022-09-22 17:11:21', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1252', '2022-09-22 17:12:00', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1253', '2022-09-22 17:12:11', 'video 資料刪除：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1254', '2022-09-22 17:12:18', 'video 資料刪除：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1255', '2022-09-22 17:12:27', 'video 資料修改：1024', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1256', '2022-09-22 17:12:33', 'video 資料修改：1024', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1257', '2022-09-22 17:12:44', 'video 資料修改：9', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1258', '2022-09-22 17:12:50', 'video 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1259', '2022-09-22 17:13:30', 'video 資料修改：10', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1260', '2022-09-22 17:15:04', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1261', '2022-09-22 17:41:26', 'video 資料修改：1023', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1262', '2022-09-22 17:42:11', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1263', '2022-09-22 17:42:16', 'video 資料修改：1023', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1264', '2022-09-22 17:42:22', 'video 資料修改：1023', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1265', '2022-09-22 17:43:36', 'video 資料修改：1019', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1266', '2022-09-22 17:43:47', 'video 資料修改：1018', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1267', '2022-09-22 17:43:54', 'video 資料修改：1017', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1268', '2022-09-22 17:44:01', 'video 資料修改：1016', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1269', '2022-09-22 17:44:08', 'video 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1270', '2022-09-22 17:44:15', 'video 資料刪除：1019', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1271', '2022-09-22 17:47:26', 'video 資料修改：1017', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1272', '2022-09-22 17:47:36', 'video 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1273', '2022-09-22 17:47:43', 'video 資料修改：1016', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1274', '2022-09-22 17:48:01', 'video 資料修改：1018', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1275', '2022-09-22 17:48:27', 'video 資料修改：1018', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1276', '2022-09-22 17:48:52', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1277', '2022-09-22 17:49:14', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1278', '2022-09-22 17:49:40', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1279', '2022-09-22 17:49:48', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1280', '2022-09-22 17:50:07', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1281', '2022-09-22 17:50:19', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1282', '2022-09-22 17:50:41', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1283', '2022-09-22 17:50:48', 'video 資料修改：1034', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1284', '2022-09-22 17:58:24', 'video 資料修改：16', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1285', '2022-09-22 17:58:31', 'video 資料修改：16', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1286', '2022-09-22 17:58:52', 'video 資料修改：5', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1287', '2022-09-22 17:58:57', 'video 資料修改：5', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1288', '2022-09-22 17:59:16', 'video 資料修改：15', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1289', '2022-09-22 18:01:55', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1290', '2022-09-22 18:02:31', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1291', '2022-09-22 18:02:40', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1292', '2022-09-22 18:07:08', 'video 資料刪除：13', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1293', '2022-09-22 18:07:55', 'video 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1294', '2022-09-22 18:08:20', 'video 資料修改：14', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1295', '2022-09-22 18:09:07', 'video 資料修改：1021', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1296', '2022-09-22 18:11:27', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1297', '2022-09-22 18:12:04', 'video 資料修改：1021', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1298', '2022-09-22 18:13:41', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1299', '2022-09-22 18:14:04', 'video 資料修改：1022', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1300', '2022-09-22 18:14:39', 'video 資料修改：1020', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1301', '2022-09-22 18:15:40', 'video 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1302', '2022-09-22 18:15:56', 'video 資料修改：1020', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1303', '2022-09-22 18:16:29', 'video 資料修改：1023', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1304', '2022-09-22 18:16:35', 'video 資料修改：1027', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1305', '2022-09-22 18:17:20', 'video 資料修改：1026', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1306', '2022-09-22 18:17:32', 'video 資料修改：1027', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1307', '2022-09-22 18:18:06', 'video 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1308', '2022-09-22 18:18:12', 'video 資料修改：14', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1309', '2022-09-22 18:18:27', 'video 資料修改：1021', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1310', '2022-09-22 18:18:31', 'video 資料修改：1037', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1311', '2022-09-22 18:18:51', 'video 資料修改：1022', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1312', '2022-09-22 18:20:05', 'news 資料修改：13', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1313', '2022-09-22 18:20:31', 'news 資料修改：12', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1314', '2022-09-22 18:20:38', 'document 資料修改：25', 'MAK_supervisor', '源做管理者', '::1');
INSERT INTO `record` VALUES ('1315', '2022-09-22 18:20:55', 'news 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1316', '2022-09-22 18:21:15', 'news 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1317', '2022-09-22 18:22:09', 'news 資料修改：12', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1318', '2022-09-22 18:22:32', 'news 資料修改：9', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1319', '2022-09-22 18:22:34', 'document 資料修改：25', 'MAK_supervisor', '源做管理者', '::1');
INSERT INTO `record` VALUES ('1320', '2022-09-22 18:22:44', 'news 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1321', '2022-09-22 18:22:52', 'news 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1322', '2022-09-22 18:22:59', 'news 資料修改：14', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1323', '2022-09-22 18:23:45', 'news 資料修改：9', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1324', '2022-09-22 18:23:52', 'news 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1325', '2022-09-22 18:23:57', 'news 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1326', '2022-09-22 18:24:02', 'news 資料修改：14', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1327', '2022-09-22 18:24:43', 'news 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1328', '2022-09-22 18:24:50', 'news 資料修改：15', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1329', '2022-09-22 18:25:07', 'news 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1330', '2022-09-22 18:25:16', 'news 資料修改：16', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1331', '2022-09-22 18:27:38', 'album 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1332', '2022-09-22 18:28:48', 'album 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1333', '2022-09-22 18:29:17', 'album 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1334', '2022-09-22 18:29:47', 'album 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1335', '2022-09-22 18:30:20', 'album 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1336', '2022-09-22 18:31:02', 'album 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1337', '2022-09-22 18:31:22', 'album 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1338', '2022-09-22 18:31:32', 'album 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1339', '2022-09-22 18:31:39', 'album 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1340', '2022-09-22 18:31:47', 'album 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1341', '2022-09-22 18:31:52', 'album 資料修改：1006', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1342', '2022-09-22 18:31:59', 'album 資料修改：1007', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1343', '2022-09-22 18:32:58', 'photo 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1344', '2022-09-22 18:33:05', 'photo 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1345', '2022-09-22 18:33:10', 'photo 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1346', '2022-09-22 18:33:17', 'photo 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1347', '2022-09-22 18:33:21', 'photo 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1348', '2022-09-22 18:33:28', 'photo 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1349', '2022-09-22 18:33:32', 'photo 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1350', '2022-09-22 18:34:08', 'photo 資料修改：17', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1351', '2022-09-22 18:34:15', 'photo 資料修改：16', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1352', '2022-09-22 18:34:23', 'photo 資料修改：16', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1353', '2022-09-22 18:34:33', 'photo 資料修改：16', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1354', '2022-09-22 18:34:40', 'photo 資料修改：15', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1355', '2022-09-22 18:35:10', 'photo 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1356', '2022-09-22 18:37:29', 'photo 資料修改：11', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1357', '2022-09-22 18:37:58', 'photo 資料修改：9', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1358', '2022-09-22 18:38:44', 'photo 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1359', '2022-09-22 18:39:11', 'photo 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1360', '2022-09-22 18:39:28', 'photo 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1361', '2022-09-22 18:43:16', 'photo 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1362', '2022-09-22 18:43:19', 'photo 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1363', '2022-09-22 18:43:28', 'photo 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1364', '2022-09-22 18:44:08', 'photo 資料修改：5', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1365', '2022-09-22 18:44:20', 'photo 資料修改：7', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1366', '2022-09-22 18:44:27', 'photo 資料修改：6', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1367', '2022-09-22 18:44:55', 'photo 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1368', '2022-09-22 18:45:22', 'photo 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1369', '2022-09-22 18:45:34', 'photo 資料刪除：29', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1370', '2022-09-22 18:46:32', 'travel 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1371', '2022-09-22 18:47:02', 'travel 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1372', '2022-09-22 18:47:59', 'travel 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1373', '2022-09-22 18:50:47', 'travel 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1374', '2022-09-22 18:51:25', 'travel 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1375', '2022-09-22 18:52:53', 'travel 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1376', '2022-09-22 18:54:53', 'travel 資料修改：5', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1377', '2022-09-22 18:55:02', 'travel 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1378', '2022-09-22 18:55:28', 'travel 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1379', '2022-09-22 19:30:35', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1380', '2022-09-23 09:15:23', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1381', '2022-09-23 10:15:08', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1382', '2022-09-23 10:20:19', 'video 資料修改：1011', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1383', '2022-09-23 10:22:28', 'news 資料修改：13', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1384', '2022-09-23 10:29:50', 'user 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1385', '2022-09-23 10:29:58', 'user 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1386', '2022-09-23 10:30:08', 'user 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1387', '2022-09-23 10:30:23', '登出', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1388', '2022-09-23 10:30:31', '登入', 'test', '測試', '192.168.0.87');
INSERT INTO `record` VALUES ('1389', '2022-09-23 10:30:54', '登出', 'test', '測試', '192.168.0.87');
INSERT INTO `record` VALUES ('1390', '2022-09-23 10:31:00', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1391', '2022-09-23 10:41:15', 'news 資料修改：13', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1392', '2022-09-23 10:58:11', '登出', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1393', '2022-09-23 10:58:15', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1394', '2022-09-23 14:09:17', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.21');
INSERT INTO `record` VALUES ('1395', '2022-09-23 14:18:05', 'image 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1396', '2022-09-23 14:46:38', 'photo 資料修改：6', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1397', '2022-09-23 17:57:40', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1398', '2022-09-26 10:36:26', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1399', '2022-09-26 10:46:30', 'image 資料刪除：5', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1400', '2022-09-26 10:46:33', 'image 資料刪除：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1401', '2022-09-26 10:46:35', 'image 資料刪除：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1402', '2022-09-26 10:46:38', 'image 資料刪除：2', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1403', '2022-09-26 11:20:03', '登出', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('1404', '2022-09-27 10:25:43', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('1405', '2022-09-27 10:26:13', '登入', 'MAK_supervisor', '源做總管理者', '192.168.0.145');
INSERT INTO `record` VALUES ('2399', '2022-11-07 17:14:37', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2400', '2022-11-10 11:54:41', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2401', '2022-11-10 11:54:54', '登出', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2402', '2022-11-10 12:12:30', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2403', '2022-11-10 12:13:11', '登出', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2404', '2022-11-10 12:13:14', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2405', '2022-11-10 12:18:52', 'video 資料刪除：12', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2406', '2022-11-10 12:18:55', 'video 資料刪除：11', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2407', '2022-11-10 12:18:59', 'video 資料刪除：7', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2408', '2022-11-10 12:20:47', 'video 資料刪除：1036', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2409', '2022-11-10 14:19:13', 'history 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2410', '2022-11-10 14:19:42', 'history 資料修改：8', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2411', '2022-11-10 15:25:23', '登出', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2412', '2022-11-10 15:47:17', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2413', '2022-11-10 15:47:19', '登出', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2414', '2022-11-10 15:47:26', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2415', '2022-11-10 15:52:11', 'user 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2416', '2022-11-10 15:52:44', 'user 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2417', '2022-11-10 15:52:50', 'user 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2418', '2022-11-10 15:52:57', 'user 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2419', '2022-11-10 16:11:31', 'image 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2420', '2022-11-10 16:11:53', 'image 資料刪除：9', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2421', '2022-11-10 16:12:04', 'image 資料新增', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2422', '2022-11-10 16:24:02', 'a_category 資料修改：5', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2423', '2022-11-10 16:24:17', 'a_category 資料修改：5', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2424', '2022-11-10 18:45:40', '登出', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2425', '2022-11-14 17:08:48', '登入', 'mnd_admin', '【政戰園地】管理者', '192.168.0.87');
INSERT INTO `record` VALUES ('2426', '2022-11-14 17:16:17', '登入', 'Test1', '測試2', '192.168.0.183');
INSERT INTO `record` VALUES ('2427', '2022-11-14 17:16:21', '登出', 'Test1', '測試2', '192.168.0.183');
INSERT INTO `record` VALUES ('2428', '2022-11-14 17:16:51', '登入', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2429', '2022-11-14 17:18:49', 'user 資料修改：3', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2430', '2022-11-14 17:21:16', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2431', '2022-11-14 17:21:21', 'news 資料刪除：17', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2432', '2022-11-14 17:26:29', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2433', '2022-11-14 17:26:34', 'news 資料刪除：18', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2434', '2022-11-14 17:26:53', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2435', '2022-11-14 17:26:57', 'news 資料刪除：19', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2436', '2022-11-14 17:28:24', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2437', '2022-11-14 17:28:28', 'news 資料刪除：20', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2438', '2022-11-14 17:29:53', 'user 資料新增', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2439', '2022-11-14 17:29:57', 'user 資料刪除：5', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2440', '2022-11-14 17:30:15', 'photo 資料新增', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2441', '2022-11-14 17:31:14', 'photo 資料新增', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2442', '2022-11-14 17:31:18', 'photo 資料刪除：31', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2443', '2022-11-14 17:31:33', 'video 資料新增', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2444', '2022-11-14 17:31:38', 'video 資料刪除：1040', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2445', '2022-11-14 17:31:49', 'user 資料新增', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2446', '2022-11-14 17:31:56', 'user 資料修改：6', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2447', '2022-11-14 17:32:00', 'user 資料刪除：6', 'MAK_supervisor', '源做總管理者', '192.168.0.183');
INSERT INTO `record` VALUES ('2448', '2022-11-16 08:32:56', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2449', '2022-11-16 14:14:29', '登出', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2450', '2022-11-16 14:14:38', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2451', '2022-11-16 15:00:59', 'user 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2452', '2022-11-16 15:04:07', 'document 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2453', '2022-11-16 15:08:23', 'user 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2454', '2022-11-16 15:08:32', 'user 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2455', '2022-11-16 15:08:36', '登出', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2456', '2022-11-16 15:10:06', '登入', 'test123', 'TEST123', '::1');
INSERT INTO `record` VALUES ('2457', '2022-11-16 15:10:47', '登出', 'test123', 'TEST123', '::1');
INSERT INTO `record` VALUES ('2458', '2022-11-16 15:11:01', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2459', '2022-11-16 16:15:41', 'about 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2460', '2022-11-16 16:19:13', 'about 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2461', '2022-11-16 16:19:25', 'about 資料刪除：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2462', '2022-11-16 16:58:31', 'about 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2463', '2022-11-16 17:00:17', 'about 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2464', '2022-11-16 17:10:04', 'about 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2465', '2022-11-16 17:10:14', 'about 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2466', '2022-11-16 17:21:34', 'about 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2467', '2022-11-16 17:24:44', 'about 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2468', '2022-11-16 17:25:38', 'about 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2469', '2022-11-16 17:26:20', 'about 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2470', '2022-11-16 17:26:25', 'about 資料修改：7', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2471', '2022-11-16 17:28:11', 'about 資料修改：7', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2472', '2022-11-16 17:28:24', 'about 資料修改：7', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2473', '2022-11-17 08:15:05', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2474', '2022-11-17 08:15:16', 'about 資料修改：8', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2475', '2022-11-17 08:18:27', '登出', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2476', '2022-11-17 08:21:59', '登入', 'test123', 'TEST123', '::1');
INSERT INTO `record` VALUES ('2477', '2022-11-17 08:28:58', 'users 資料修改：5', 'test123', 'TEST123', '::1');
INSERT INTO `record` VALUES ('2478', '2022-11-17 08:29:13', '登出', 'test123', 'TEST123', '::1');
INSERT INTO `record` VALUES ('2479', '2022-11-17 08:29:48', '登入', 'test123', 'TEST123', '::1');
INSERT INTO `record` VALUES ('2480', '2022-11-17 09:29:33', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2481', '2022-11-17 09:35:16', 'link 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2482', '2022-11-17 09:37:02', 'link 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2483', '2022-11-17 09:37:46', 'link 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2484', '2022-11-17 09:51:34', 'link 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2485', '2022-11-17 09:52:50', 'link 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2486', '2022-11-17 09:53:10', 'link 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2487', '2022-11-17 09:53:34', 'link 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2488', '2022-11-17 09:53:45', 'about 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2489', '2022-11-17 09:56:19', 'about 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2490', '2022-11-17 09:56:21', 'about 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2491', '2022-11-17 09:56:27', 'link 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2492', '2022-11-17 09:57:00', 'link 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2493', '2022-11-17 10:25:18', 'd_class 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2494', '2022-11-17 10:25:33', 'd_class 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2495', '2022-11-17 10:25:37', 'd_class 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2496', '2022-11-17 10:26:21', 'd_class 資料刪除：1', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2497', '2022-11-17 10:26:36', 'd_class 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2498', '2022-11-17 10:26:43', 'd_class 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2499', '2022-11-17 10:27:09', 'd_class 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2500', '2022-11-17 10:27:15', 'd_class 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2501', '2022-11-17 10:27:26', 'd_class 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2502', '2022-11-17 10:27:30', 'd_class 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2503', '2022-11-17 10:27:40', 'd_class 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2504', '2022-11-17 10:27:47', 'd_class 資料修改：3', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2505', '2022-11-17 10:54:45', 'depart 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2506', '2022-11-17 10:55:39', 'depart 資料狀態修改', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2507', '2022-11-17 10:56:20', 'depart 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2508', '2022-11-17 10:56:41', 'depart 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2509', '2022-11-17 10:57:06', 'depart 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2510', '2022-11-17 12:27:19', 'news 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2511', '2022-11-17 12:27:23', 'news 資料狀態修改', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2512', '2022-11-17 12:27:46', 'news 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2513', '2022-11-17 12:32:26', 'news 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2514', '2022-11-17 12:32:40', 'news 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2515', '2022-11-17 12:39:36', 'news 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2516', '2022-11-17 12:41:05', 'news 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2517', '2022-11-17 12:44:59', 'news 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2518', '2022-11-17 12:45:09', 'news 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2519', '2022-11-17 12:45:18', 'news 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2520', '2022-11-17 12:45:46', 'news 資料修改：5', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2521', '2022-11-17 12:59:58', 'news 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2522', '2022-11-17 13:06:40', 'news 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2523', '2022-11-17 14:54:12', 'news 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2524', '2022-11-17 14:54:33', 'news 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2525', '2022-11-17 15:00:25', 'news 資料修改：5', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2526', '2022-11-17 15:27:39', 'image 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2527', '2022-11-17 15:28:50', 'image 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2528', '2022-11-17 15:31:39', 'image 資料新增', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2529', '2022-11-17 15:31:48', 'image 資料修改：2', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2530', '2022-11-17 15:43:23', 'image 資料修改：1', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2531', '2022-11-17 16:00:27', 'document 資料修改：26', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2532', '2022-11-17 16:10:26', 'document 資料修改：27', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2533', '2022-11-17 16:11:45', 'document 資料修改：26', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2534', '2022-11-17 16:13:02', 'document 資料修改：27', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2535', '2022-11-17 16:14:24', 'document 資料修改：27', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2536', '2022-11-17 16:14:39', 'document 資料修改：27', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2537', '2022-11-17 16:25:48', 'document 資料修改：27', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2538', '2022-11-17 16:26:24', 'document 資料修改：27', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2539', '2022-11-17 16:27:04', 'document 資料修改：27', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2540', '2022-11-17 16:29:22', 'document 資料修改：27', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2541', '2022-11-17 17:06:27', 'document 資料修改：26', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2542', '2022-11-17 17:06:40', 'document 資料修改：26', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2543', '2022-11-17 17:07:32', 'news 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2544', '2022-11-17 17:08:52', 'news 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2545', '2022-11-17 17:09:48', 'document 資料修改：26', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2546', '2022-11-17 17:12:17', 'document 資料修改：27', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2547', '2022-11-17 17:16:16', 'document 資料修改：27', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2548', '2022-11-17 17:34:10', 'news 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2549', '2022-11-17 17:35:27', 'news 資料修改：4', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2550', '2022-11-17 17:35:46', 'document 資料修改：27', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2551', '2022-11-17 17:38:06', 'document 資料修改：27', 'mnd_admin', '【政戰園地】管理者', '::1');
INSERT INTO `record` VALUES ('2552', '2022-11-18 09:03:01', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2553', '2022-11-18 09:37:39', 'about 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2554', '2022-11-18 09:39:21', 'about 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2555', '2022-11-18 10:29:11', 'about 資料修改：8', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2556', '2022-11-18 10:33:25', 'about 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2557', '2022-11-18 10:33:58', 'about 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2558', '2022-11-18 10:36:29', '登出', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2559', '2022-11-18 10:36:40', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2560', '2022-11-18 10:49:44', 'link 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2561', '2022-11-18 10:53:00', 'link 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2562', '2022-11-18 10:53:09', 'link 資料修改：3', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2563', '2022-11-18 10:53:29', 'link 資料修改：3', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2564', '2022-11-18 10:59:08', 'link 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2565', '2022-11-18 10:59:12', 'link 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2566', '2022-11-18 10:59:30', 'link 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2567', '2022-11-18 10:59:51', 'link 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2568', '2022-11-18 11:19:45', 'link 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2569', '2022-11-18 11:30:34', 'd_class 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2570', '2022-11-18 11:46:23', 'news 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2571', '2022-11-18 11:47:54', 'news 資料修改：6', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2572', '2022-11-18 11:54:21', 'news 資料修改：6', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2573', '2022-11-18 12:03:48', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2574', '2022-11-18 12:04:05', 'news 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2575', '2022-11-18 12:06:03', 'news 資料修改：7', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2576', '2022-11-18 12:08:32', 'news 資料修改：6', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2577', '2022-11-18 12:08:52', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2578', '2022-11-18 12:08:56', 'news 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2579', '2022-11-18 12:09:04', 'news 資料刪除：8', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2580', '2022-11-18 12:09:23', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2581', '2022-11-18 12:20:47', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2582', '2022-11-18 12:21:55', 'news 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2583', '2022-11-18 14:56:48', 'depart 資料修改：2', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2584', '2022-11-18 14:58:46', 'depart 資料修改：1', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2585', '2022-11-18 14:59:31', 'depart 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2586', '2022-11-18 15:08:28', 'depart 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2587', '2022-11-18 15:11:15', 'depart 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2588', '2022-11-18 15:12:08', 'depart 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2589', '2022-11-18 15:12:58', 'depart 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2590', '2022-11-18 15:13:15', 'depart 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2591', '2022-11-18 15:13:39', 'depart 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2592', '2022-11-18 15:13:52', 'depart 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2593', '2022-11-18 15:14:10', 'depart 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2594', '2022-11-18 15:33:03', 'depart 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2595', '2022-11-18 15:33:38', 'depart 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2596', '2022-11-18 16:09:49', 'news 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2597', '2022-11-18 16:10:03', 'news 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2598', '2022-11-18 16:11:49', 'news 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2599', '2022-11-18 16:13:23', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2600', '2022-11-18 16:13:32', 'news 資料狀態修改', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2601', '2022-11-21 13:55:00', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2602', '2022-11-21 14:22:07', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2603', '2022-11-21 14:22:42', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2604', '2022-11-21 14:32:55', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2605', '2022-11-21 14:45:36', 'd_class 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2606', '2022-11-21 14:46:53', 'd_class 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2607', '2022-11-21 14:47:31', 'd_class 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2608', '2022-11-21 14:56:19', 'd_class 資料修改：4', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2609', '2022-11-21 14:56:50', 'd_class 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2610', '2022-11-21 15:05:39', 'd_class 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2611', '2022-11-21 15:31:03', '登入', 'mak', 'MAK', '::1');
INSERT INTO `record` VALUES ('2612', '2022-11-21 15:32:05', '登出', 'mak', 'MAK', '::1');
INSERT INTO `record` VALUES ('2613', '2022-11-21 15:33:54', '登入', 'mak', '【處室管理者】MAK', '::1');
INSERT INTO `record` VALUES ('2614', '2022-11-21 15:36:15', 'users 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2615', '2022-11-21 15:38:16', 'users 資料修改：5', 'mak', 'MAK', '::1');
INSERT INTO `record` VALUES ('2616', '2022-11-21 15:41:35', 'users 資料修改：5', 'mak', 'MAK', '::1');
INSERT INTO `record` VALUES ('2617', '2022-11-21 15:50:56', 'd_class 資料修改：5', 'mak', 'MAK', '::1');
INSERT INTO `record` VALUES ('2618', '2022-11-21 15:51:13', 'd_class 資料修改：5', 'mak', 'MAK', '::1');
INSERT INTO `record` VALUES ('2619', '2022-11-21 16:01:31', 'd_class 資料修改：5', 'mak', 'MAK', '::1');
INSERT INTO `record` VALUES ('2620', '2022-11-21 16:53:08', '登出', 'mak', 'MAK', '::1');
INSERT INTO `record` VALUES ('2621', '2022-11-21 16:58:47', '登入', 'mak', '【處室管理者】MAK', '::1');
INSERT INTO `record` VALUES ('2622', '2022-11-21 17:07:00', '登出', 'mak', 'MAK', '::1');
INSERT INTO `record` VALUES ('2623', '2022-11-21 17:07:26', '登入', 'sunny', '【處室管理者】kuo sunny', '::1');
INSERT INTO `record` VALUES ('2624', '2022-11-21 17:07:49', 'd_class 資料修改：4', 'sunny', 'kuo sunny', '::1');
INSERT INTO `record` VALUES ('2625', '2022-11-21 17:15:16', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2626', '2022-11-21 17:16:53', '登出', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2627', '2022-11-21 17:17:29', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2628', '2022-11-21 17:30:56', 'news 資料修改：5', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2629', '2022-11-21 17:31:11', '登出', 'sunny', 'kuo sunny', '::1');
INSERT INTO `record` VALUES ('2630', '2022-11-21 17:32:20', '登入', 'mak', '【處室管理者】MAK', '::1');
INSERT INTO `record` VALUES ('2631', '2022-11-21 17:37:20', 'news 資料新增', 'mak', 'MAK', '::1');
INSERT INTO `record` VALUES ('2632', '2022-11-21 17:37:53', 'news 資料修改：12', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2633', '2022-11-21 17:38:02', 'news 資料修改：12', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2634', '2022-11-22 09:14:57', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2635', '2022-11-22 09:16:23', '登入', 'sunny', '【處室管理者】kuo sunny', '::1');
INSERT INTO `record` VALUES ('2636', '2022-11-22 09:45:35', '登出', 'sunny', 'kuo sunny', '::1');
INSERT INTO `record` VALUES ('2637', '2022-11-22 09:46:08', '登入', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2638', '2022-11-22 09:46:21', '登入', 'sunny', '【處室管理者】kuo sunny', '::1');
INSERT INTO `record` VALUES ('2639', '2022-11-22 10:38:34', 'document 資料修改：27', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2640', '2022-11-22 10:44:13', 'news 資料修改：11', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2641', '2022-11-22 10:52:14', 'depart 資料修改：4', 'sunny', 'kuo sunny', '::1');
INSERT INTO `record` VALUES ('2642', '2022-11-22 10:52:20', 'depart 資料狀態修改', 'sunny', 'kuo sunny', '::1');
INSERT INTO `record` VALUES ('2643', '2022-11-22 11:05:26', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2644', '2022-11-22 11:07:03', 'news 資料修改：14', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2645', '2022-11-22 11:07:40', 'news 資料刪除：14', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2646', '2022-11-22 11:09:44', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2647', '2022-11-22 11:16:05', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '::1');
INSERT INTO `record` VALUES ('2648', '2022-11-22 11:16:42', 'news 資料新增', 'MAK_supervisor', '源做總管理者', '::1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_account` varchar(255) DEFAULT NULL,
  `u_password` varchar(255) DEFAULT NULL,
  `u_name` varchar(255) DEFAULT NULL,
  `u_main_purview` varchar(10) DEFAULT NULL,
  `u_sub_purview` varchar(10) DEFAULT NULL,
  `u_check` varchar(10) DEFAULT NULL,
  `u_error` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'MAK_supervisor', '3e33d279a8c7366cd5ddad0c6cfde0ba', '源做總管理者', '0', '0', 'Y', '0');
INSERT INTO `users` VALUES ('2', 'mnd_admin', '16d7a4fca7442dda3ad93c9a726597e4', '【資通電軍】管理者', '1', '0', 'Y', '0');
INSERT INTO `users` VALUES ('5', 'test123', 'b64f1a77b1b317d347f5cb79332c86d2', 'TEST123', '2', '0', 'Y', '0');
