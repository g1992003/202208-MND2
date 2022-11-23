/*
Navicat SQL Server Data Transfer

Source Server         : mnd_2
Source Server Version : 150000
Source Host           : 127.0.0.1:1433
Source Database       : mnd_cadres
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 150000
File Encoding         : 65001

Date: 2022-11-22 13:11:16
*/


-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE [dbo].[about]
GO
CREATE TABLE [dbo].[about] (
[a_id] int NOT NULL IDENTITY(1,1) ,
[a_title] text NULL ,
[a_text] text NULL ,
[a_status] int NULL ,
[a_order] int NULL ,
[a_page] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[about]', RESEED, 8)
GO

-- ----------------------------
-- Records of about
-- ----------------------------
SET IDENTITY_INSERT [dbo].[about] ON
GO
INSERT INTO [dbo].[about] ([a_id], [a_title], [a_text], [a_status], [a_order], [a_page]) VALUES (N'1', N'網路戰聯隊 -標題', N'&lt;p&gt;網路戰聯隊&lt;br /&gt;
網路戰聯隊&lt;br /&gt;
網路戰聯隊&lt;br /&gt;
網路戰聯隊&lt;br /&gt;
網路戰聯隊&lt;br /&gt;
網路戰聯隊&lt;/p&gt;
', N'0', N'2', N'1')
GO
GO
INSERT INTO [dbo].[about] ([a_id], [a_title], [a_text], [a_status], [a_order], [a_page]) VALUES (N'2', N'資訊通信聯隊', N'', N'0', N'3', N'1')
GO
GO
INSERT INTO [dbo].[about] ([a_id], [a_title], [a_text], [a_status], [a_order], [a_page]) VALUES (N'3', N'電子戰中心', N'', N'0', N'4', N'1')
GO
GO
INSERT INTO [dbo].[about] ([a_id], [a_title], [a_text], [a_status], [a_order], [a_page]) VALUES (N'4', N'訓測中心', N'', N'0', N'5', N'1')
GO
GO
INSERT INTO [dbo].[about] ([a_id], [a_title], [a_text], [a_status], [a_order], [a_page]) VALUES (N'5', N'招募專區', N'', N'0', N'6', N'1')
GO
GO
INSERT INTO [dbo].[about] ([a_id], [a_title], [a_text], [a_status], [a_order], [a_page]) VALUES (N'7', N'本部沿革', N'', N'0', N'1', N'2')
GO
GO
INSERT INTO [dbo].[about] ([a_id], [a_title], [a_text], [a_status], [a_order], [a_page]) VALUES (N'8', N'部隊主官123', N'&lt;p&gt;部隊主官123&lt;/p&gt;

&lt;p&gt;部隊主官123&lt;/p&gt;

&lt;p&gt;部隊主官123&lt;/p&gt;

&lt;p&gt;部隊主官123&lt;/p&gt;

&lt;p&gt;部隊主官123&lt;/p&gt;

&lt;p&gt;部隊主官123&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;
', N'1', N'0', N'2')
GO
GO
SET IDENTITY_INSERT [dbo].[about] OFF
GO

-- ----------------------------
-- Table structure for d_class
-- ----------------------------
DROP TABLE [dbo].[d_class]
GO
CREATE TABLE [dbo].[d_class] (
[dc_id] int NOT NULL IDENTITY(1,1) ,
[dc_title] varchar(255) NULL ,
[dc_account] varchar(255) NULL ,
[dc_password] varchar(255) NULL ,
[dc_name] varchar(255) NULL ,
[dc_order] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[d_class]', RESEED, 5)
GO

-- ----------------------------
-- Records of d_class
-- ----------------------------
SET IDENTITY_INSERT [dbo].[d_class] ON
GO
INSERT INTO [dbo].[d_class] ([dc_id], [dc_title], [dc_account], [dc_password], [dc_name], [dc_order]) VALUES (N'2', N'政戰作戰室', null, null, null, N'4')
GO
GO
INSERT INTO [dbo].[d_class] ([dc_id], [dc_title], [dc_account], [dc_password], [dc_name], [dc_order]) VALUES (N'3', N'指揮室', null, null, null, N'3')
GO
GO
INSERT INTO [dbo].[d_class] ([dc_id], [dc_title], [dc_account], [dc_password], [dc_name], [dc_order]) VALUES (N'4', N'人事行政室', N'sunny', N'16d7a4fca7442dda3ad93c9a726597e4', N'kuo sunny', N'2')
GO
GO
INSERT INTO [dbo].[d_class] ([dc_id], [dc_title], [dc_account], [dc_password], [dc_name], [dc_order]) VALUES (N'5', N'源做設計', N'mak', N'3e33d279a8c7366cd5ddad0c6cfde0ba', N'MAK', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[d_class] OFF
GO

-- ----------------------------
-- Table structure for depart
-- ----------------------------
DROP TABLE [dbo].[depart]
GO
CREATE TABLE [dbo].[depart] (
[d_id] int NOT NULL IDENTITY(1,1) ,
[d_title] varchar(255) NULL ,
[d_text] text NULL ,
[d_status] int NULL ,
[d_order] int NULL ,
[dc_id] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[depart]', RESEED, 5)
GO

-- ----------------------------
-- Records of depart
-- ----------------------------
SET IDENTITY_INSERT [dbo].[depart] ON
GO
INSERT INTO [dbo].[depart] ([d_id], [d_title], [d_text], [d_status], [d_order], [dc_id]) VALUES (N'1', N'指揮室 - 資訊789', N'&lt;p&gt;目前嘉義、台南、高雄等地區都是酪梨主要產地，特別是&lt;a href=&quot;https://bit.ly/3OOx8Im&quot;&gt;台南大內&lt;/a&gt;是栽種面積最大的產區，幾乎佔全台總量1/3。&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;位於台南大內的左岸幸福莊園，採用自然農法栽培酪梨，還放養雞、鵝來吃蟲草做生態防治&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175645/item_19694_958039a3a13ad0eeb70381571e43f468-1240x698.jpeg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175645/item_19694_958039a3a13ad0eeb70381571e43f468-1240x698.jpeg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175645/item_19694_958039a3a13ad0eeb70381571e43f468-768x433.jpeg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175645/item_19694_958039a3a13ad0eeb70381571e43f468.jpeg 1280w&quot; style=&quot;height:698px; width:1240px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;▲位於台南大內的左岸幸福莊園，採用自然農法栽培酪梨，還放養雞、鵝來吃蟲草做生態防治！（圖／&lt;a href=&quot;https://bit.ly/3OOx8Im&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;

&lt;h2&gt;常見酪梨品種有哪些&lt;/h2&gt;

&lt;p&gt;目前台灣栽種的酪梨大概有30多種，如果單純以酪梨外皮顏色，可以分成轉色及不轉色酪梨；或是以酪梨的成熟期來區分，共有早生種、中生種和晚生種三大類，如果要再更細分的話，不同品種的酪梨油脂含量有高有低，因此口感也不同喔！&lt;/p&gt;
', N'1', N'4', N'3')
GO
GO
INSERT INTO [dbo].[depart] ([d_id], [d_title], [d_text], [d_status], [d_order], [dc_id]) VALUES (N'2', N'政戰作戰室 - 文章741', N'&lt;p&gt;政戰作戰室 - 文章741&lt;/p&gt;

&lt;p&gt;政戰作戰室 - 文章741&lt;/p&gt;

&lt;p&gt;政戰作戰室 - 文章741&lt;/p&gt;

&lt;p&gt;政戰作戰室 - 文章741&lt;/p&gt;

&lt;p&gt;政戰作戰室 - 文章741&lt;/p&gt;
', N'1', N'3', N'2')
GO
GO
INSERT INTO [dbo].[depart] ([d_id], [d_title], [d_text], [d_status], [d_order], [dc_id]) VALUES (N'3', N'指揮室666', N'&lt;h3&gt;#1&amp;nbsp;&lt;a href=&quot;https://bit.ly/3bGKG9Z&quot;&gt;早生種&lt;/a&gt;酪梨(6-8月採收)&lt;/h3&gt;

&lt;p&gt;&amp;ndash;&lt;strong&gt;嘉選4號&lt;/strong&gt;(轉色)：嘉義及台南地區栽種最多，產期約6月中旬至7月底，是目前最早生的品種。果實有點像西洋梨的形狀、果皮黃綠有光澤，成熟時果皮轉暗紫紅色就是最佳品嚐時機，再放置後熟會有圓形凹陷斑點。 果肉脂肪含量約 8-14%，口感較清爽水潤，餘味不膩，帶有淡淡奶香，適合做成墨西哥酪梨醬，或切片沾醬油與哇沙米享用。&lt;/p&gt;

&lt;p&gt;&amp;ndash;&lt;strong&gt;清進1號&lt;/strong&gt;(轉色)：又叫黑美人，台南屏東都有栽種，產期約7月中旬~8月。果為長梨型，成熟果皮綠且光滑，後熟後果皮呈紫黑色，果皮厚，果肉黃色，脂肪含量約 4-11%，口感軟而紮實帶乳香味，後味微甜，但比較不耐冷藏。&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;台灣從初夏開始就可以吃到各種酪梨囉&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175952/5O7A6894-1240x827.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175952/5O7A6894-1240x827.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175952/5O7A6894-768x512.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01175952/5O7A6894-1440x960.jpg 1440w&quot; style=&quot;height:827px; width:1240px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;▲台灣從初夏開始就可以吃到各種酪梨囉～（圖／&lt;a href=&quot;https://bit.ly/3NNb67w&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;

&lt;h3&gt;#2&amp;nbsp;&lt;a href=&quot;https://bit.ly/3NNb67w&quot;&gt;中生種&lt;/a&gt;酪梨(8-10月採收)&lt;/h3&gt;

&lt;p&gt;&amp;ndash;&lt;strong&gt;章安&lt;/strong&gt;(不轉色)：俗稱竹崎早生，產期7-8月，果型為長橢圓形、頸微長。成熟時果皮是亮綠色，後熟果皮顏色轉為綠色。果皮偏厚且粗糙，果肉黃、脂肪含量5-8%、口感較水，在盛產期後段採收的果實會有回甘的感覺，較適合打果汁。&lt;/p&gt;

&lt;p&gt;&amp;ndash;&lt;strong&gt;清進2號&lt;/strong&gt;(轉色)：又叫紅心圓，大多栽種在台南屏東地區，產期約為7月底至9月中，果實像是鴕鳥蛋、圓卵形，果皮較厚且綠而光滑，當後熟轉為紫紅色的時候，味道最好！種籽佔的體積較大，果肉脂肪含量約8-15%，質地更加水潤鬆軟似豆腐，適合打成酪梨牛奶、做沙拉或沙拉醬！&lt;/p&gt;

&lt;p&gt;&amp;ndash;&lt;strong&gt;嘉選2號&lt;/strong&gt;(轉色)：普遍栽種在麻豆地區，產期約8月中至9月，果實為橢圓型，果皮較厚且亮綠，後熟時果皮轉紫紅色。果肉脂肪含量僅約4-6%，果肉質地如奶油般、口感較水嫩細滑，吃完會有甘甜餘味，適合直接切開鮮食。&lt;/p&gt;

&lt;p&gt;-嘉選3號(不轉色)：產期8月中~9月中。果形洋梨形，低頸較長，果皮深綠光滑，果皮厚像皮革般的材質，軟熟時，果皮仍為暗綠色，很好剝皮。果肉黃色，脂肪含量13-16﹪，口感Q、果味溫和芳香。&lt;/p&gt;

&lt;p&gt;&amp;ndash;&lt;strong&gt;十月紅&lt;/strong&gt;(轉色)：產期約10月上至11月上旬，外觀呈卵型，後熟果皮顏色為暗紫色。果實大、果肉率高，果肉脂肪含量5-8%、質地呈乳酪般滑嫩、吃完嘴巴會帶有甘味。&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;8-9月是酪梨盛產季，這個時候的品種超多，可以吃到不同口感&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122337/%E5%8D%81%E6%9C%88%E7%B4%85A-1240x864.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122337/%E5%8D%81%E6%9C%88%E7%B4%85A-1240x864.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122337/%E5%8D%81%E6%9C%88%E7%B4%85A-768x535.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122337/%E5%8D%81%E6%9C%88%E7%B4%85A-1440x1003.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122337/%E5%8D%81%E6%9C%88%E7%B4%85A.jpg 1533w&quot; style=&quot;height:864px; width:1240px&quot; /&gt;&lt;/p&gt;
', N'1', N'2', N'3')
GO
GO
INSERT INTO [dbo].[depart] ([d_id], [d_title], [d_text], [d_status], [d_order], [dc_id]) VALUES (N'4', N'人事行政室-sssss', N'&lt;h3&gt;#3&amp;nbsp;&lt;a href=&quot;https://bit.ly/3P1LQv8&quot;&gt;晚生種&lt;/a&gt;酪梨(12-2月採收)&lt;/h3&gt;

&lt;p&gt;&amp;ndash;&lt;strong&gt;厚兒Hall&lt;/strong&gt;(不轉色)：產期約10~12月，外觀呈梨形，果皮約近光滑，暗綠，皮厚；種子中等大小，和果肉緊貼；果肉偏綠黃色，脂肪含量10-16%，口感紮實Q彈、越嚼越甘美且帶有乳香。&lt;/p&gt;

&lt;p&gt;&amp;ndash;&lt;strong&gt;秋可Choquette&lt;/strong&gt;(不轉色)：產期約12月～3月，外觀呈現蛋形，初期亮綠，後熟會轉為暗綠或淡綠。外皮有點粗糙帶顆粒，果肉厚顏色黃，脂肪含量8-13%，質地軟嫩滑溜、味道溫和帶甜味。&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;不同品種酪梨好不好吃通常取決於脂肪含量，晚生種的酪梨含油量高，口感更好&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01185858/S__2736144-1240x930.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01185858/S__2736144-1240x930.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01185858/S__2736144-768x576.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01185858/S__2736144-1440x1080.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01185858/S__2736144-600x450.jpg 600w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/01185858/S__2736144.jpg 1478w&quot; style=&quot;height:930px; width:1240px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;▲不同品種酪梨好不好吃通常取決於脂肪含量，晚生種的酪梨含油量高，口感更好！（圖／&lt;a href=&quot;https://bit.ly/3P1LQv8&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;

&lt;h2&gt;不看顏色，挑酪梨看這裡&lt;/h2&gt;

&lt;p&gt;酪梨採收後還需要後熟才能品嚐到最佳風味，會轉色的酪梨可以先觀察外皮顏色是否變成深紫趨近黑色，再用手輕壓，只要有點柔軟就是成熟可吃囉。但連蒂頭都變深色，就是放到過熟，酪梨肉會出現纖維，直接吃口感比較差，不過還是可以打果汁啦～&lt;/p&gt;

&lt;p&gt;另外如果是不會變色的酪梨，就算放再久也不會變黑，這個時候就看手感摸起來變得柔軟及出現深色斑點、以手指輕捏會陷入不會彈回，熟度就夠了！&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;不是每個酪梨都會變色，要看熟不熟還是用手摸最準啦&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122212/LINE_ALBUM_%E9%85%AA%E6%A2%A8%E7%85%A7%E7%89%87_220622_11-1240x697.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122212/LINE_ALBUM_%E9%85%AA%E6%A2%A8%E7%85%A7%E7%89%87_220622_11-1240x697.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122212/LINE_ALBUM_%E9%85%AA%E6%A2%A8%E7%85%A7%E7%89%87_220622_11-768x431.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06122212/LINE_ALBUM_%E9%85%AA%E6%A2%A8%E7%85%A7%E7%89%87_220622_11.jpg 1280w&quot; style=&quot;height:697px; width:1240px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;▲不是每個酪梨都會變色，要看熟不熟還是用手摸最準啦～（圖／&lt;a href=&quot;https://bit.ly/3OOx8Im&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;

&lt;h2&gt;酪梨這樣吃美味更加分&lt;/h2&gt;

&lt;h3&gt;#1 依吃法挑酪梨&lt;/h3&gt;

&lt;p&gt;-油脂豐厚的品種，適合做成抹醬或拌沙拉、當壽司，例如進口的哈斯酪梨，或嘉選4號、紅心圓、秋可、厚兒，都屬於油脂含量高的酪梨。&lt;/p&gt;

&lt;p&gt;-想品嚐生魚片般清爽水潤的口感，可以選嘉選4號、黑美人、嘉選2號、十月紅等油脂含量較低的品種。&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;酪梨的吃法超級多，你想怎麼吃就要選對酪梨品種哦&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123146/shutterstock_400051756-1240x802.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123146/shutterstock_400051756-1240x802.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123146/shutterstock_400051756-768x497.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123146/shutterstock_400051756-1440x932.jpg 1440w&quot; style=&quot;height:802px; width:1240px&quot; /&gt;&lt;/p&gt;
', N'1', N'1', N'4')
GO
GO
INSERT INTO [dbo].[depart] ([d_id], [d_title], [d_text], [d_status], [d_order], [dc_id]) VALUES (N'5', N'人事行政室999999', N'&lt;h3&gt;#3 搭配當季水果更對味&lt;/h3&gt;

&lt;p&gt;你知道嗎？酪梨加上夏天當季的&lt;a href=&quot;https://bit.ly/3nIuJ64&quot;&gt;百香果&lt;/a&gt;，竟然可以帶出酪梨滑順的口感！酪梨剖開後，先將籽取出，並刮除酪梨籽殘留的膜，避免苦味。接著再用湯匙將果肉挖出，和百香果汁一起放入果汁機混打，加入一點白開水，再打到均勻，就是一杯酸甜滑順的果汁啦～&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;酪梨加牛奶是基本，酪梨加百香果沒想到吧&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123156/shutterstock_629428340-1240x827.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123156/shutterstock_629428340-1240x827.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123156/shutterstock_629428340-768x512.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2022/07/06123156/shutterstock_629428340-1440x960.jpg 1440w&quot; style=&quot;height:827px; width:1240px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;▲酪梨加牛奶是基本，酪梨加百香果沒想到吧XD（圖/ Shutterstock）&lt;/p&gt;
', N'1', N'0', N'4')
GO
GO
SET IDENTITY_INSERT [dbo].[depart] OFF
GO

-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE [dbo].[document]
GO
CREATE TABLE [dbo].[document] (
[d_id] int NOT NULL ,
[d_text] text NULL 
)


GO

-- ----------------------------
-- Records of document
-- ----------------------------
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'1', N'資通電軍')
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'2', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'3', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'4', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'5', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'6', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'7', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'8', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'21', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'22', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'23', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'24', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'25', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'26', null)
GO
GO
INSERT INTO [dbo].[document] ([d_id], [d_text]) VALUES (N'27', N'2022_11_22_0338340.mp4')
GO
GO

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE [dbo].[image]
GO
CREATE TABLE [dbo].[image] (
[i_id] int NOT NULL IDENTITY(1,1) ,
[i_title] text NULL ,
[i_img] varchar(255) NULL ,
[i_order] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[image]', RESEED, 2)
GO

-- ----------------------------
-- Records of image
-- ----------------------------
SET IDENTITY_INSERT [dbo].[image] ON
GO
INSERT INTO [dbo].[image] ([i_id], [i_title], [i_img], [i_order]) VALUES (N'1', N'日本IPPA特定非營利活動法人知識產權振興協會', N'2022_11_17_0828501.jpeg', N'2')
GO
GO
INSERT INTO [dbo].[image] ([i_id], [i_title], [i_img], [i_order]) VALUES (N'2', N'健柏診所', N'2022_11_17_0831391.jpeg', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[image] OFF
GO

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE [dbo].[link]
GO
CREATE TABLE [dbo].[link] (
[l_id] int NOT NULL IDENTITY(1,1) ,
[l_title] text NULL ,
[l_page] int NULL ,
[l_type] int NULL ,
[l_url] text NULL ,
[l_text] text NULL ,
[l_status] int NULL ,
[l_order] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[link]', RESEED, 4)
GO

-- ----------------------------
-- Records of link
-- ----------------------------
SET IDENTITY_INSERT [dbo].[link] ON
GO
INSERT INTO [dbo].[link] ([l_id], [l_title], [l_page], [l_type], [l_url], [l_text], [l_status], [l_order]) VALUES (N'1', N'好戰連結-文章', N'2', N'2', N'', N'&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/upload/images/_HT_0007.jpg&quot; style=&quot;height:1200px; width:800px&quot; /&gt;&lt;/p&gt;
', N'1', N'2')
GO
GO
INSERT INTO [dbo].[link] ([l_id], [l_title], [l_page], [l_type], [l_url], [l_text], [l_status], [l_order]) VALUES (N'2', N'系統連結 - 連結', N'1', N'1', N'https://blog.owlting.com/2019/09/06/ski-equipment-tiro-tips/', N'&lt;p&gt;前面提到，滑雪是一項很專業又花錢的運動，這可不是隨便說說的。&lt;/p&gt;

&lt;p&gt;有逛過運動用品店的人就知道，專業的滑雪裝備可都不便宜，主要是因為雪板、安全帽、雪鏡、護具等都是專業裝備，本來就所費不貲；滑雪時所穿的衣物，除了必須保暖以外，還需要有防水的效果；而考量到運動時的摩擦與安全性，雪鞋也較一般的鞋子來得保暖又硬挺。&lt;/p&gt;

&lt;p&gt;因此若你是滑雪的新手，在準備滑雪裝備上，可以遵循「租借為主，自購為輔」這項準則，這樣才能在有限的預算中，享受到安全又不失水準的滑雪之旅。&lt;/p&gt;
', N'1', N'1')
GO
GO
INSERT INTO [dbo].[link] ([l_id], [l_title], [l_page], [l_type], [l_url], [l_text], [l_status], [l_order]) VALUES (N'3', N'系統連結 - 文章', N'1', N'2', N'', N'&lt;h1&gt;新手免煩惱～滑雪裝備這樣準備又省又齊全 縱橫雪場不是夢！&lt;/h1&gt;

&lt;p&gt;&lt;a href=&quot;https://blog.owlting.com/author/doris-wang/&quot;&gt;??沒有蛋的黃酥&lt;/a&gt;&lt;/p&gt;

&lt;p&gt;&lt;a href=&quot;https://blog.owlting.com/2019/09/06/ski-equipment-tiro-tips/&quot; rel=&quot;bookmark&quot;&gt;2019-09-06&lt;/a&gt;&lt;/p&gt;

&lt;p&gt;隨著時序進入秋季，冬天也不遠了！提到冬天，一定不能錯過的就是被銀白色妝點的雪景，還有滑雪這項超熱門的運動，雖然台灣不會下雪（高山除外），但鄰近的日本、韓國可是亞洲知名的雪國，每到冬季就會迎來許多滑雪好手和想要體驗滑雪這項冬季運動的遊客。&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094839/558246163-1240x826.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094839/558246163-1240x826.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094839/558246163-768x512.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094839/558246163.jpg 1280w&quot; style=&quot;height:826px; width:1240px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;對於滑雪新手來說，滑雪裝備要準備什麼就是個大問題。畢竟滑雪是一項很專業又花錢的運動，不只需要學習滑雪的技巧，必需的裝備也不少，到底哪些裝備是必備或是需要自備、又有哪些裝備可以到滑雪場再租用，這一篇通通告訴你！&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094849/1491127874-1240x826.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094849/1491127874-1240x826.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094849/1491127874-768x512.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06094849/1491127874.jpg 1280w&quot; style=&quot;height:826px; width:1240px&quot; /&gt;&lt;/p&gt;

&lt;blockquote&gt;
&lt;h4&gt;日本滑雪揪一波&lt;/h4&gt;

&lt;p&gt;&lt;a href=&quot;http://bit.ly/30VMfqn&quot;&gt;【新潟冬季門票組】湯澤高原纜車組合票 滑雪+溫泉+纜車玩翻雪國&lt;/a&gt;&lt;/p&gt;
&lt;/blockquote&gt;

&lt;h4&gt;滑雪這項運動&lt;/h4&gt;

&lt;p&gt;在介紹滑雪裝備之前，先帶大家了解一下滑雪這項運動。&lt;/p&gt;

&lt;p&gt;滑雪是這項運動的概括總稱，依照使用的用具的不同，可以分為滑雪雙板（Ski）與雪地滑板（Snowboard）。&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;&quot; sizes=&quot;(max-width: 1240px) 100vw, 1240px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06095411/115041883-1240x826.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06095411/115041883-1240x826.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06095411/115041883-768x512.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2019/09/06095411/115041883.jpg 1280w&quot; style=&quot;height:826px; width:1240px&quot; /&gt;&lt;/p&gt;
', N'1', N'0')
GO
GO
INSERT INTO [dbo].[link] ([l_id], [l_title], [l_page], [l_type], [l_url], [l_text], [l_status], [l_order]) VALUES (N'4', N'好站連結 - 連結', N'2', N'1', N'https://blog.owlting.com/category/articles/market/recipe/', N'', N'1', N'3')
GO
GO
SET IDENTITY_INSERT [dbo].[link] OFF
GO

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE [dbo].[menu]
GO
CREATE TABLE [dbo].[menu] (
[m_id] varchar(6) NOT NULL ,
[m_type] varchar(10) NULL ,
[m_name] varchar(255) NULL ,
[m_url] varchar(255) NULL ,
[m_icon_sidebar] varchar(255) NULL ,
[m_icon_index] varchar(255) NULL ,
[m_main_purview] varchar(10) NULL ,
[m_sub_purview] varchar(10) NULL 
)


GO

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'011', N'root', N'網站基本設定', N'-', N'fa fa-cogs', N'-', N'2', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'011-06', N'leaf', N'網頁基本設定', N'sethead.php', N'-', N'fa fa-cogs', N'2', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'011-11', N'leaf', N'其他資訊設定', N'setdoc.php', N'-', N'fa fa-info', N'2', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'016', N'root', N'首頁資訊專區', N'-', N'fa fa-university', N'fa fa-university', N'2', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'016-11', N'leaf', N'主視覺設定', N'setdoc.php?p=1', N'-', N'fa fa-picture-o', N'2', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'016-16', N'leaf', N'直屬單位管理', N'about.php?p=1', N'-', N'fa fa-pencil-square-o', N'2', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'016-21', N'leaf', N'忠信報管理', N'image.php', N'-', N'fa fa-picture-o', N'2', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'021', N'root', N'關於本部管理', N'about.php?p=2', N'fa fa-plane', N'fa fa-plane', N'2', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'026', N'root', N'處室介紹管理', N'd_class.php', N'fa fa-binoculars', N'fa fa-binoculars', N'3', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'031', N'root', N'最新消息管理', N'news.php?p=1', N'fa fa-newspaper-o', N'fa fa-newspaper-o', N'3', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'036', N'root', N'行政規則管理', N'news.php?p=2', N'fa fa-newspaper-o', N'fa fa-newspaper-o', N'3', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'041', N'root', N'一令到位管理', N'news.php?p=3', N'fa fa-newspaper-o', N'fa fa-newspaper-o', N'3', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'046', N'root', N'系統連結管理', N'link.php?p=1', N'fa fa-cog', N'fa fa-cog', N'2', N'0')
GO
GO
INSERT INTO [dbo].[menu] ([m_id], [m_type], [m_name], [m_url], [m_icon_sidebar], [m_icon_index], [m_main_purview], [m_sub_purview]) VALUES (N'051', N'root', N'好站連結管理', N'link.php?p=2', N'fa fa-link', N'fa fa-link', N'2', N'0')
GO
GO

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE [dbo].[news]
GO
CREATE TABLE [dbo].[news] (
[n_id] int NOT NULL IDENTITY(1,1) ,
[n_date] date NULL ,
[n_title] text NULL ,
[n_unit] varchar(255) NULL ,
[n_name] varchar(255) NULL ,
[n_file] varchar(255) NULL ,
[n_text] text NULL ,
[n_status] int NULL ,
[n_page] int NULL ,
[dc_id] int NULL ,
[n_order] int NULL ,
[n_tag] varchar(255) NULL ,
[n_no] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[news]', RESEED, 17)
GO

-- ----------------------------
-- Records of news
-- ----------------------------
SET IDENTITY_INSERT [dbo].[news] ON
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'1', N'2022-10-07', N'央行只升半碼 打房軟著陸？1千萬房貸恐多繳14萬利息', N'東森財經', N'郭山泥', null, N'&lt;p&gt;test&lt;/p&gt;
', N'1', N'1', N'2', N'13', N'指揮室', null)
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'2', N'2022-11-03', N'她錄取台積電1職缺「想待到退休」 卻憂1原因被取代', N'技術服務中心', N'ABCDEF', null, N'', N'1', N'2', N'2', N'12', N'指揮 - 行政', N'0123456789')
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'3', N'2022-11-17', N'「天堂M」機率不實！遊戲橘子遭罰200萬 丁特：正義必得伸張999', N'MAK', N'Sunny', null, N'', N'1', N'3', N'2', N'11', N'指揮 - 一令到位', null)
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'4', N'2022-10-15', N'美濃瓜長在美濃？美濃瓜要怎麼吃？你所不知道的美濃瓜小知識都在這', N'產銷', N'丁噹', N'2022_11_17_1035270.docx', N'&lt;h1&gt;美濃瓜長在美濃？美濃瓜要怎麼吃？你所不知道的美濃瓜小知識都在這&lt;/h1&gt;

&lt;p&gt;&lt;a href=&quot;https://blog.owlting.com/author/luise_lin/&quot;&gt;?? Luise_Lin&lt;/a&gt;&lt;/p&gt;

&lt;p&gt;&lt;a href=&quot;https://blog.owlting.com/2021/06/11/tips-of-muskmelon/&quot; rel=&quot;bookmark&quot;&gt;2021-06-11&lt;/a&gt;&lt;/p&gt;

&lt;blockquote&gt;
&lt;p&gt;如同太陽餅沒有太陽、王子麵沒有王子，&lt;a href=&quot;https://utm.to/3hykzr&quot;&gt;美濃瓜&lt;/a&gt;其實也不是長在美濃？！那美濃瓜的名字又是怎麼來的？要怎麼選、什麼時候吃、怎麼吃才會吃到最美味的美濃瓜呢？所有關於美濃瓜的疑問，包含吃瓜有什麼好處、怎麼保存，今天都幫你一次解答囉！&lt;/p&gt;
&lt;/blockquote&gt;

&lt;h2&gt;&lt;a href=&quot;https://utm.to/3hykzr&quot;&gt;美濃瓜&lt;/a&gt;小知識#1 品種與它的產地/季&lt;/h2&gt;

&lt;p&gt;美濃瓜就是俗稱的香瓜、甜瓜、梨仔瓜，屬於東方甜瓜(Orient&amp;nbsp;Melon)的一種，原產於中東和非洲一帶，最早在1930 年從日本引進，之後 1950 年代左右又從日本及美國引進優良品種來進行育種。&lt;/p&gt;

&lt;p&gt;最常見的品種有銀輝和嘉玉、新玉，都是外表光滑銀白偏綠稍微帶點黃色；另外有金輝，是黃皮、橢圓形，又叫「黃香瓜」，跟美濃瓜算近親XD&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;美濃瓜長在美濃？美濃瓜要怎麼吃？你所不知道的美濃瓜小知識都在這&quot; sizes=&quot;(max-width: 660px) 100vw, 660px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09155725/DSC08641-1440x960.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09155725/DSC08641-1440x960.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09155725/DSC08641-1240x827.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09155725/DSC08641-768x512.jpg 768w&quot; style=&quot;height:440px; width:660px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;▲成熟的&lt;a href=&quot;https://utm.to/3jdmtc&quot;&gt;美濃瓜&lt;/a&gt;果皮為銀亮的黃白色、果肉則是淡白綠色。（圖／&lt;a href=&quot;https://utm.to/3jdmtc&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;

&lt;p&gt;而美濃瓜喜歡高溫且日照多，還對低溫很敏感，因此多種植在中南部像是雲林、嘉義、台南等地區，7-10月是它的盛產期。&lt;/p&gt;

&lt;p&gt;?? 好吃的美濃瓜在這裡??&lt;/p&gt;

&lt;p&gt;&lt;a href=&quot;https://utm.to/3jdmtc&quot;&gt;【微笑田園】一株只留一瓜 香甜多汁好香瓜&lt;/a&gt;&lt;/p&gt;

&lt;p&gt;&lt;a href=&quot;https://utm.to/3jnaus&quot;&gt;【友田珍鄉農場】離地吊瓜溫室不淋雨栽培&amp;nbsp;皮薄肉多又甜&lt;/a&gt;&lt;/p&gt;

&lt;p&gt;&lt;a href=&quot;https://utm.to/3gmkln&quot;&gt;【小善心農場】白泡泡幼綿綿 限量有機美濃瓜&lt;/a&gt;&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;美濃瓜喜歡溫暖乾燥的地方&quot; sizes=&quot;(max-width: 660px) 100vw, 660px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09171619/12039007177337-1440x1081.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09171619/12039007177337-1440x1081.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09171619/12039007177337-1240x931.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09171619/12039007177337-768x576.jpg 768w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09171619/12039007177337-600x450.jpg 600w&quot; style=&quot;height:495px; width:660px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;▲&lt;a href=&quot;https://utm.to/3eer72&quot;&gt;美濃瓜&lt;/a&gt;的主要產地在雲林、嘉義及台南等地區。（圖／&lt;a href=&quot;https://utm.to/3eer72&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;

&lt;h2&gt;美濃瓜小知識#2 挑選小撇步&lt;/h2&gt;

&lt;p&gt;想要挑選好吃的美濃瓜，主要可以從四個方面去判斷&lt;/p&gt;

&lt;h3&gt;?? 外型&lt;/h3&gt;

&lt;p&gt;好的美濃瓜果形會端正飽滿、呈微扁圓形；表皮則是平滑有光澤，越新鮮的帶有茸毛，用手掌摸會有點沾黏感。如果有深褐色、黑色的塊狀水傷斑痕或蟲孔，都母湯哦！&lt;/p&gt;

&lt;h3&gt;?? 香氣&lt;/h3&gt;

&lt;p&gt;成熟的美濃瓜會散發濃郁香氣，越濃代表越甜；仔細聞的話也會發現，香味最濃的地方通常是底部的果臍，因為美濃瓜由臍部開始成熟，甜度較高、是整粒果實最好吃的部位??&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;優秀的美濃瓜外觀端正飽滿、平滑有光澤&quot; sizes=&quot;(max-width: 660px) 100vw, 660px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175844/IMG_0331-1440x960.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175844/IMG_0331-1440x960.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175844/IMG_0331-1240x827.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175844/IMG_0331-768x512.jpg 768w&quot; style=&quot;height:440px; width:660px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;▲挑選&lt;a href=&quot;https://utm.to/3f2d6d&quot;&gt;美濃瓜&lt;/a&gt;可以看外觀顏色和香氣。（圖／&lt;a href=&quot;https://utm.to/3f2d6d&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;

&lt;h3&gt;?? 果臍&lt;/h3&gt;

&lt;p&gt;縮小、閉合且平整、沒有明顯凹凸差或裂痕的的果臍，也是好瓜瓜的挑選標準之一。在吃之前可以用手輕壓果臍，柔軟有彈性就代表熟度剛好，可以開吃囉??&lt;/p&gt;

&lt;h3&gt;?? 重量&lt;/h3&gt;

&lt;p&gt;如果兩顆大小差不多，放在手掌上感覺比較沈甸，表示果肉結實、水分較多；而且因為美濃瓜的甜度會下沉，太大顆的瓜果甜度會不均勻，選300g左右的大小最剛好～&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;果臍平整、入手沈甸甸的美濃瓜最好吃&quot; sizes=&quot;(max-width: 660px) 100vw, 660px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175451/5O7A6225-1-1440x960.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175451/5O7A6225-1-1440x960.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175451/5O7A6225-1-1240x827.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09175451/5O7A6225-1-768x512.jpg 768w&quot; style=&quot;height:440px; width:660px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;▲好吃的&lt;a href=&quot;https://utm.to/3hvd94&quot;&gt;美濃瓜&lt;/a&gt;可以從果臍和重量判斷。（圖／&lt;a href=&quot;https://utm.to/3hvd94&quot;&gt;奧丁丁市集&lt;/a&gt;）&lt;/p&gt;

&lt;h2&gt;美濃瓜小知識#3 怎麼吃最好吃&lt;/h2&gt;

&lt;h3&gt;?? 新鮮吃&lt;/h3&gt;

&lt;p&gt;最當季的美濃瓜當然要直接吃啊不然要幹嘛？不過在切之前，先不要直接從蒂頭切下去！因為蒂頭有苦味，記得把蒂頭周圍挖掉，再剖開切小塊，就能享受綿密香甜的果肉啦??&amp;zwj;♀?&lt;/p&gt;

&lt;h3&gt;?? 加工吃&lt;/h3&gt;

&lt;p&gt;除了當水果，你一定不知道美濃瓜還可以加工！一般在產期末，因為養分不足會長出的綠色小瓜「瓜仔尾」，沒辦法直接食用，果農便會拿來醃漬成醬瓜，翠綠色的醬．美濃瓜用來清炒、涼拌或配稀飯都好吃。&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;切的時候把蒂頭先挖掉，才不會有苦味&quot; sizes=&quot;(max-width: 660px) 100vw, 660px&quot; src=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09181442/5O7A6199-1440x960.jpg&quot; srcset=&quot;https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09181442/5O7A6199-1440x960.jpg 1440w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09181442/5O7A6199-1240x827.jpg 1240w, https://owlting-blog-media.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/06/09181442/5O7A6199-768x512.jpg 768w&quot; style=&quot;height:440px; width:660px&quot; /&gt;&lt;/p&gt;
', N'1', N'1', N'3', N'10', N'水果', null)
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'5', N'2022-11-17', N'指揮室 - 規則', N'', N'', N'2022_11_17_0800250.pdf', null, N'1', N'2', N'5', N'9', N'', N'963852741')
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'6', N'2022-09-10', N'指揮室 - 一令', N'MAK', N'SUNNY', N'2022_11_18_0508320.pdf', null, N'1', N'3', N'3', N'7', N'YYY', null)
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'7', N'2022-11-18', N'一令到位 22222', N'東森職場0728', N'', null, null, N'1', N'3', N'3', N'8', N'ZZZZZ', null)
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'9', N'2022-11-18', N'一令33333', N'', N'', null, null, N'1', N'3', N'3', N'6', N'', null)
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'10', N'2022-11-18', N'', N'', N'', null, null, N'1', N'3', N'3', N'5', N'', null)
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'11', N'2022-11-18', N'大蒜到底有多強，「三大癌症」和關節炎都可以一次打擊', N'產銷', N'甲假', null, N'&lt;p&gt;目前，大蒜廣泛用於與血液系統和心臟有關的幾種病症，包括動脈粥樣硬化（動脈硬化）、高膽固醇、心臟病、冠心病和高血壓。&lt;/p&gt;

&lt;p&gt;根據權威醫學網站《&lt;a href=&quot;https://www.medicalnewstoday.com/articles/265853.php&quot;&gt;medicalnewstoday&lt;/a&gt;》指出，一些人今天也使用大蒜來預防肺癌、前列腺癌、乳腺癌、胃癌、直腸癌和大腸癌。重要的是要補充一點，這些用途中只有一部分是由研究支持的。&lt;/p&gt;

&lt;p&gt;發表在食品和化學毒理學雜誌上的一項研究警告說，短期加熱會降低新鮮生蒜提取物的抗炎作用。對於一些不喜歡或不能忍受新鮮大蒜的味道和/或氣味的人來說，這可能是一個問題。&lt;/p&gt;

&lt;h4&gt;&lt;strong&gt;優點&lt;/strong&gt;&lt;/h4&gt;

&lt;p&gt;&lt;strong&gt;&lt;img alt=&quot;&quot; src=&quot;/upload/images/b6.png&quot; style=&quot;height:216px; width:296px&quot; /&gt;&lt;/strong&gt;&lt;/p&gt;

&lt;p&gt;以下是在同行評審的學術期刊上發表的關於大蒜治療益處（或非治療益處）的一些科學研究的例子。&lt;/p&gt;

&lt;h4&gt;&lt;strong&gt;肺癌風險&lt;/strong&gt;&lt;/h4&gt;

&lt;p&gt;根據江蘇省疾病預防控制中心的一項研究，在7年研究期間每周至少吃生蒜兩次的人患肺癌的風險降低了44％。&lt;/p&gt;

&lt;p&gt;研究人員在癌症預防研究期刊上發表了他們的研究，對1,424名肺癌患者和4,543名健康人進行了面對面訪談。他們被問及他們的飲食和生活方式，包括有關吸煙的問題以及他們吃大蒜的頻率。&lt;/p&gt;

&lt;p&gt;該研究的作者寫道：「已經觀察到生大蒜和肺癌攝入之間存在保護性關聯，並採用劑量反應模式，這表明大蒜可能成為肺癌的化學預防劑。」&lt;/p&gt;

&lt;h4&gt;&lt;strong&gt;腦癌&lt;/strong&gt;&lt;/h4&gt;

&lt;p&gt;大蒜中發現的有機硫化合物已被證實可有效地破壞膠質母細胞瘤（一種致命的腦腫瘤）中的細胞。&lt;/p&gt;

&lt;p&gt;南卡羅來納醫科大學的科學家在「癌症」雜誌上報導，三種來自大蒜的有機硫化合物&amp;ndash;DAS，DADS和DATS &amp;ndash; &amp;ldquo;已證明在根除腦癌細胞方面有效，但DATS被證明是最有效的。&amp;rdquo;&lt;/p&gt;

&lt;p&gt;共同作者，Ray Swapan博士說：「這項研究突出了植物來源化合物作為控制人腦腫瘤細胞惡性生長的天然藥物的巨大希望。在腦腫瘤動物模型中需要更多的研究這種治療策略在腦腫瘤患者中的應用。」&lt;/p&gt;

&lt;h4&gt;&lt;strong&gt;髖骨關節炎&lt;/strong&gt;&lt;/h4&gt;

&lt;p&gt;BMC Musculoskeletal Disorders雜誌報導，英國倫敦國王學院和英國東英吉利大學的一個團隊的飲食中含有豐富的蔥屬蔬菜，其骨關節炎水平較低。蔥屬蔬菜的例子包括大蒜，韭蔥，青蔥，洋蔥和rakkyo。&lt;/p&gt;

&lt;p&gt;該研究的作者表示，他們的研究結果不僅強調了飲食對骨關節炎結局的可能影響，而且還證明了使用大蒜中存在的化合物開發治療方法的可能性。&lt;/p&gt;

&lt;p&gt;這項涉及1000多名健康女性雙胞胎的長期研究發現，那些飲食習慣包括大量水果和蔬菜的人，尤其是大蒜，髖關節早期骨關節炎的症狀較少。&lt;/p&gt;

&lt;h4&gt;&lt;strong&gt;可能是一種強大的抗生素&lt;/strong&gt;&lt;/h4&gt;
', N'1', N'1', N'3', N'4', N'配料', null)
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'12', N'2022-11-21', N'消息 原作', N'', N'', null, N'', N'0', N'1', N'5', N'3', N'', null)
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'15', N'2022-11-22', N'活動快訊1122', N'', N'', null, null, N'1', N'3', N'4', N'2', N'', null)
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'16', N'2022-11-22', N'活動快訊1122', N'', N'', null, null, N'1', N'3', N'2', N'1', N'', null)
GO
GO
INSERT INTO [dbo].[news] ([n_id], [n_date], [n_title], [n_unit], [n_name], [n_file], [n_text], [n_status], [n_page], [dc_id], [n_order], [n_tag], [n_no]) VALUES (N'17', N'2022-11-22', N'活動快訊1122', N'', N'', null, N'', N'0', N'1', N'4', N'0', N'', null)
GO
GO
SET IDENTITY_INSERT [dbo].[news] OFF
GO

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE [dbo].[record]
GO
CREATE TABLE [dbo].[record] (
[r_id] int NOT NULL IDENTITY(1,1) ,
[r_date] datetime NULL ,
[r_text] varchar(255) NULL ,
[r_account] varchar(255) NULL ,
[r_name] varchar(255) NULL ,
[r_ip] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[record]', RESEED, 2648)
GO

-- ----------------------------
-- Records of record
-- ----------------------------
SET IDENTITY_INSERT [dbo].[record] ON
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2', N'2022-09-14 12:02:59.753', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'3', N'2022-09-14 12:07:43.430', N'登出', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'4', N'2022-09-14 12:08:31.777', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'5', N'2022-09-14 12:09:38.690', N'document 資料修改：21', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'6', N'2022-09-14 12:09:42.823', N'document 資料修改：21', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'7', N'2022-09-14 12:17:20.133', N'history 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'8', N'2022-09-14 12:18:29.433', N'history 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'9', N'2022-09-14 12:18:47.787', N'history 資料修改：2', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'10', N'2022-09-14 14:30:00.367', N'history 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'11', N'2022-09-14 14:32:05.110', N'history 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'12', N'2022-09-14 14:52:14.127', N'history 資料修改：3', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'13', N'2022-09-14 14:52:20.567', N'history 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'14', N'2022-09-14 14:52:23.993', N'history 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'15', N'2022-09-14 14:52:37.070', N'history 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'16', N'2022-09-14 15:00:21.780', N'news 資料修改：7', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'17', N'2022-09-14 15:03:06.103', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'18', N'2022-09-14 15:06:53.333', N'news 資料修改：10', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'19', N'2022-09-14 15:32:03.347', N'video 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'20', N'2022-09-14 15:32:11.067', N'video 資料修改：6', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'21', N'2022-09-14 15:34:14.010', N'a_category 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'22', N'2022-09-14 15:34:57.723', N'a_category 資料修改：32', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'23', N'2022-09-14 15:37:49.897', N'video 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'24', N'2022-09-14 15:38:03.397', N'video 資料修改：7', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'25', N'2022-09-14 16:08:39.450', N'photo 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'26', N'2022-09-14 16:09:11.780', N'photo 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'27', N'2022-09-14 16:09:17.757', N'photo 資料修改：11', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'28', N'2022-09-14 16:09:33.937', N'album 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'29', N'2022-09-14 16:09:44.557', N'album 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'30', N'2022-09-14 16:09:50.050', N'album 資料修改：2', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'31', N'2022-09-14 16:11:14.720', N'album 資料修改：2', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'32', N'2022-09-14 16:11:27.477', N'album 資料修改：2', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'33', N'2022-09-14 16:17:09.990', N'travel 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'34', N'2022-09-14 16:33:06.263', N'travel 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'35', N'2022-09-14 16:36:11.327', N'travel 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'36', N'2022-09-14 16:36:16.070', N'travel 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'37', N'2022-09-14 16:36:23.597', N'travel 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'38', N'2022-09-14 16:43:01.870', N'news 資料修改：7', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'39', N'2022-09-14 16:43:19.287', N'news 資料修改：8', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'40', N'2022-09-14 16:53:31.187', N'document 資料修改：6', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'41', N'2022-09-14 17:49:21.207', N'image 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'42', N'2022-09-14 17:49:24.097', N'image 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'43', N'2022-09-14 17:50:20.447', N'image 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'44', N'2022-09-14 17:50:36.490', N'photo 資料修改：10', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'45', N'2022-09-14 17:52:15.890', N'photo 資料修改：10', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'46', N'2022-09-14 17:54:17.427', N'album 資料刪除：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'47', N'2022-09-14 17:55:07.957', N'image 資料刪除：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'48', N'2022-09-14 17:55:42.923', N'photo 資料刪除：10', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'49', N'2022-09-15 09:11:24.543', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'50', N'2022-09-15 09:18:10.127', N'history 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'51', N'2022-09-15 09:18:33.640', N'history 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'52', N'2022-09-15 09:18:53.567', N'history 資料修改：3', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'53', N'2022-09-15 09:19:11.653', N'history 資料修改：2', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'54', N'2022-09-15 09:25:48.007', N'history 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'55', N'2022-09-15 09:25:53.150', N'history 資料修改：2', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'56', N'2022-09-15 09:27:31.903', N'history 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'57', N'2022-09-15 09:27:36.490', N'history 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'58', N'2022-09-15 09:28:01.213', N'history 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'59', N'2022-09-15 09:28:08.647', N'history 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'60', N'2022-09-15 09:28:12.880', N'history 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'61', N'2022-09-15 09:58:19.340', N'image 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'62', N'2022-09-15 09:58:32.197', N'image 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'63', N'2022-09-15 10:02:24.593', N'image 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'64', N'2022-09-15 10:04:00.363', N'image 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'65', N'2022-09-15 11:10:22.173', N'news 資料修改：10', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'66', N'2022-09-15 11:10:37.927', N'news 資料修改：10', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'67', N'2022-09-15 11:10:55.853', N'news 資料修改：10', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'68', N'2022-09-15 13:00:55.783', N'video 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'69', N'2022-09-15 13:01:05.057', N'video 資料修改：6', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'70', N'2022-09-15 13:01:36.257', N'video 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'71', N'2022-09-15 13:18:30.537', N'video 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'72', N'2022-09-15 13:52:51.247', N'video 資料修改：3', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'73', N'2022-09-15 15:19:52.347', N'video 資料修改：7', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'74', N'2022-09-15 15:22:46.807', N'video 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'75', N'2022-09-15 15:23:26.517', N'video 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'76', N'2022-09-15 17:04:21.730', N'video 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'77', N'2022-09-15 17:04:39.960', N'video 資料修改：13', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'78', N'2022-09-15 17:05:35.087', N'video 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'79', N'2022-09-15 17:05:45.537', N'video 資料修改：3', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'80', N'2022-09-15 17:24:18.570', N'video 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'81', N'2022-09-15 17:24:50.110', N'video 資料修改：15', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'82', N'2022-09-15 17:30:32.360', N'video 資料修改：15', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'83', N'2022-09-15 17:34:49.050', N'video 資料修改：15', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'84', N'2022-09-15 17:37:24.097', N'video 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'85', N'2022-09-16 09:14:27.817', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'86', N'2022-09-16 09:52:28.907', N'news 資料修改：3', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'87', N'2022-09-16 10:01:09.810', N'news 資料修改：2', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'88', N'2022-09-16 10:01:29.443', N'news 資料修改：9', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'89', N'2022-09-16 10:01:50.040', N'news 資料修改：9', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'90', N'2022-09-16 10:32:12.920', N'album 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'91', N'2022-09-16 10:33:18.120', N'photo 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'92', N'2022-09-16 10:33:58.650', N'photo 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'93', N'2022-09-16 10:34:04.977', N'photo 資料修改：12', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'94', N'2022-09-16 12:28:31.747', N'travel 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'95', N'2022-09-16 12:44:56.400', N'video 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'96', N'2022-09-16 12:46:37.350', N'video 資料修改：15', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'97', N'2022-09-16 12:46:46.927', N'video 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'98', N'2022-09-16 12:47:03.327', N'video 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'99', N'2022-09-16 12:51:40.597', N'video 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1072', N'2022-09-19 10:44:59.310', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1073', N'2022-09-19 10:46:10.247', N'photo 資料修改：12', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1074', N'2022-09-19 10:46:29.070', N'photo 資料修改：12', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1075', N'2022-09-19 10:46:45.857', N'photo 資料修改：12', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1076', N'2022-09-19 10:46:59.700', N'photo 資料修改：12', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1077', N'2022-09-19 10:47:09.500', N'photo 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1078', N'2022-09-19 10:48:20.227', N'photo 資料刪除：1012', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1079', N'2022-09-19 10:48:31.993', N'photo 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1080', N'2022-09-19 10:49:01.870', N'photo 資料刪除：1013', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1081', N'2022-09-19 10:49:12.603', N'photo 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1082', N'2022-09-19 10:50:02.870', N'photo 資料刪除：13', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1083', N'2022-09-19 10:53:07.537', N'photo 資料刪除：13', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1084', N'2022-09-19 10:53:36.557', N'photo 資料修改：14', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1085', N'2022-09-19 10:53:45.690', N'photo 資料修改：13', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1086', N'2022-09-19 10:53:54.797', N'photo 資料刪除：13', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1087', N'2022-09-19 10:54:01.000', N'photo 資料修改：14', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1088', N'2022-09-19 10:54:06.807', N'photo 資料修改：14', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1089', N'2022-09-19 11:01:43.107', N'photo 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1090', N'2022-09-19 11:02:03.363', N'photo 資料修改：15', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1091', N'2022-09-19 11:03:02.913', N'photo 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1092', N'2022-09-19 11:03:08.610', N'photo 資料修改：16', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1093', N'2022-09-19 11:03:19.130', N'photo 資料修改：16', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1094', N'2022-09-19 11:03:28.097', N'photo 資料修改：16', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1095', N'2022-09-19 11:03:37.967', N'photo 資料刪除：14', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1096', N'2022-09-19 11:03:58.633', N'photo 資料刪除：12', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1097', N'2022-09-19 11:04:05.070', N'photo 資料修改：16', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1098', N'2022-09-19 11:04:11.487', N'photo 資料修改：16', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1099', N'2022-09-19 11:04:17.373', N'photo 資料修改：16', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1100', N'2022-09-19 11:04:58.150', N'photo 資料修改：16', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1101', N'2022-09-19 11:09:08.593', N'photo 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1102', N'2022-09-19 11:11:17.980', N'photo 資料修改：15', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1103', N'2022-09-19 11:11:22.660', N'photo 資料修改：15', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1104', N'2022-09-19 11:13:06.727', N'photo 資料修改：15', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1105', N'2022-09-19 11:13:39.757', N'image 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1106', N'2022-09-19 11:14:25.670', N'image 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1107', N'2022-09-19 11:14:31.330', N'image 資料修改：2', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1108', N'2022-09-19 11:14:35.080', N'image 資料修改：2', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1109', N'2022-09-19 11:14:57.270', N'image 資料修改：2', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1110', N'2022-09-19 14:29:49.390', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.145')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1111', N'2022-09-20 15:04:50.070', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1112', N'2022-09-20 17:53:18.357', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1113', N'2022-09-20 19:10:19.240', N'document 資料修改：21', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1114', N'2022-09-20 19:10:25.820', N'document 資料修改：22', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1115', N'2022-09-20 19:10:48.000', N'document 資料修改：21', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1116', N'2022-09-20 19:11:38.347', N'document 資料修改：22', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1117', N'2022-09-20 19:13:03.180', N'document 資料修改：23', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1118', N'2022-09-20 19:18:12.343', N'history 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1119', N'2022-09-20 19:18:19.110', N'history 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1120', N'2022-09-20 19:18:23.730', N'history 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1121', N'2022-09-20 19:18:27.810', N'history 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1122', N'2022-09-20 19:21:27.607', N'history 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1123', N'2022-09-20 19:21:58.503', N'history 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1124', N'2022-09-20 19:22:43.900', N'history 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1125', N'2022-09-20 19:22:51.977', N'image 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1126', N'2022-09-20 19:23:08.173', N'image 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1127', N'2022-09-20 19:23:12.723', N'image 資料刪除：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1128', N'2022-09-20 19:23:18.290', N'image 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1129', N'2022-09-20 19:23:23.817', N'image 資料刪除：7', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1130', N'2022-09-20 19:33:26.850', N'news 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1131', N'2022-09-20 19:33:42.453', N'news 資料修改：11', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1132', N'2022-09-21 09:22:18.700', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1133', N'2022-09-21 09:47:11.650', N'document 資料修改：23', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1134', N'2022-09-21 09:50:38.193', N'document 資料修改：23', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1135', N'2022-09-21 10:44:07.973', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1136', N'2022-09-21 10:46:09.733', N'document 資料修改：24', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1137', N'2022-09-21 10:47:31.300', N'document 資料修改：24', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1138', N'2022-09-21 15:35:04.110', N'history 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1139', N'2022-09-21 15:35:38.753', N'history 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1140', N'2022-09-21 15:36:23.723', N'history 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1141', N'2022-09-21 15:36:32.540', N'history 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1142', N'2022-09-21 15:36:47.800', N'history 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1143', N'2022-09-21 15:36:53.173', N'history 資料修改：7', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1144', N'2022-09-21 15:37:01.427', N'history 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1145', N'2022-09-21 15:37:08.907', N'history 資料修改：7', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1146', N'2022-09-21 15:37:26.300', N'history 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1147', N'2022-09-21 15:43:35.847', N'history 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1148', N'2022-09-21 15:44:40.350', N'history 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1149', N'2022-09-21 15:44:48.487', N'history 資料修改：5', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1150', N'2022-09-21 16:08:39.790', N'news 資料修改：11', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1151', N'2022-09-21 16:10:52.067', N'news 資料修改：10', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1152', N'2022-09-21 16:13:05.673', N'history 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1153', N'2022-09-21 16:23:57.427', N'news 資料修改：11', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1154', N'2022-09-21 16:26:51.063', N'news 資料修改：11', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1155', N'2022-09-21 16:34:09.007', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1156', N'2022-09-21 16:37:27.153', N'video 資料修改：1011', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1157', N'2022-09-21 16:40:28.733', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1158', N'2022-09-21 16:40:54.123', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1159', N'2022-09-21 16:41:20.797', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1160', N'2022-09-21 16:41:49.383', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1161', N'2022-09-21 16:42:54.943', N'video 資料修改：1015', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1162', N'2022-09-21 16:43:01.000', N'video 資料修改：1014', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1163', N'2022-09-21 16:43:06.873', N'video 資料修改：1011', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1164', N'2022-09-21 16:43:11.953', N'video 資料修改：1012', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1165', N'2022-09-21 16:43:31.363', N'video 資料修改：1011', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1166', N'2022-09-21 16:47:54.293', N'video 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1167', N'2022-09-21 16:48:22.073', N'video 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1168', N'2022-09-21 16:51:23.223', N'a_category 資料修改：32', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1169', N'2022-09-21 16:51:51.687', N'a_category 資料修改：31', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1170', N'2022-09-21 16:52:23.390', N'a_category 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1171', N'2022-09-21 16:52:55.800', N'a_category 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1172', N'2022-09-21 16:53:27.493', N'a_category 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1173', N'2022-09-21 16:53:35.513', N'a_category 資料修改：31', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1174', N'2022-09-21 16:53:40.860', N'a_category 資料修改：32', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1175', N'2022-09-21 16:53:45.970', N'a_category 資料修改：33', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1176', N'2022-09-21 16:53:51.060', N'a_category 資料修改：34', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1177', N'2022-09-21 16:55:58.863', N'document 資料修改：23', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1178', N'2022-09-21 17:00:41.363', N'video 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1179', N'2022-09-21 17:01:32.067', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1180', N'2022-09-21 17:02:45.387', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1181', N'2022-09-21 17:03:42.973', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1182', N'2022-09-21 17:04:44.657', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1183', N'2022-09-21 17:09:55.897', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1184', N'2022-09-21 17:12:30.950', N'news 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1185', N'2022-09-21 17:13:02.480', N'news 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1186', N'2022-09-21 17:13:22.853', N'news 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1187', N'2022-09-21 17:13:43.970', N'news 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1188', N'2022-09-21 17:13:57.310', N'news 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1189', N'2022-09-21 17:21:00.443', N'news 資料修改：12', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1190', N'2022-09-21 17:21:49.720', N'news 資料修改：12', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1191', N'2022-09-21 17:24:43.380', N'news 資料修改：12', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1192', N'2022-09-21 17:25:28.817', N'news 資料修改：12', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1193', N'2022-09-21 17:26:11.017', N'news 資料修改：12', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1194', N'2022-09-21 17:26:34.107', N'news 資料修改：12', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1195', N'2022-09-21 17:29:01.450', N'news 資料修改：9', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1196', N'2022-09-21 17:34:20.707', N'news 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1197', N'2022-09-21 17:35:07.053', N'news 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1198', N'2022-09-21 17:36:17.257', N'news 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1199', N'2022-09-21 17:36:24.980', N'news 資料修改：14', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1200', N'2022-09-21 17:38:57.867', N'photo 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1201', N'2022-09-21 17:39:11.850', N'photo 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1202', N'2022-09-21 19:02:07.743', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1203', N'2022-09-21 19:02:17.077', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1204', N'2022-09-22 09:46:51.020', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1205', N'2022-09-22 11:40:21.263', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1206', N'2022-09-22 12:48:03.240', N'document 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1207', N'2022-09-22 16:07:49.173', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1208', N'2022-09-22 16:11:18.687', N'history 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1209', N'2022-09-22 16:11:33.420', N'history 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1210', N'2022-09-22 16:39:46.093', N'document 資料修改：23', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1211', N'2022-09-22 16:41:22.367', N'history 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1212', N'2022-09-22 16:41:53.523', N'history 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1213', N'2022-09-22 16:42:12.187', N'history 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1214', N'2022-09-22 16:42:38.433', N'history 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1215', N'2022-09-22 16:43:25.157', N'history 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1216', N'2022-09-22 16:47:12.240', N'history 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1217', N'2022-09-22 16:54:33.910', N'news 資料修改：11', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1218', N'2022-09-22 16:54:55.620', N'news 資料修改：10', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1219', N'2022-09-22 16:56:11.207', N'news 資料修改：10', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1220', N'2022-09-22 16:57:39.137', N'news 資料修改：7', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1221', N'2022-09-22 16:58:48.953', N'news 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1222', N'2022-09-22 16:58:55.210', N'news 資料刪除：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1223', N'2022-09-22 16:59:09.723', N'news 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1224', N'2022-09-22 16:59:43.863', N'history 資料刪除：7', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1225', N'2022-09-22 17:00:09.313', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1226', N'2022-09-22 17:00:43.930', N'history 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1227', N'2022-09-22 17:00:54.410', N'history 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1228', N'2022-09-22 17:01:08.497', N'history 資料修改：9', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1229', N'2022-09-22 17:01:16.263', N'history 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1230', N'2022-09-22 17:01:19.660', N'history 資料修改：9', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1231', N'2022-09-22 17:01:23.740', N'history 資料修改：9', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1232', N'2022-09-22 17:01:32.307', N'history 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1233', N'2022-09-22 17:01:34.363', N'history 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1234', N'2022-09-22 17:01:42.170', N'history 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1235', N'2022-09-22 17:01:42.213', N'history 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1236', N'2022-09-22 17:01:50.713', N'history 資料修改：5', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1237', N'2022-09-22 17:01:59.507', N'history 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1238', N'2022-09-22 17:02:24.980', N'history 資料修改：9', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1239', N'2022-09-22 17:02:36.020', N'history 資料修改：9', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1240', N'2022-09-22 17:04:21.360', N'video 資料修改：1011', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1241', N'2022-09-22 17:04:30.833', N'video 資料修改：1012', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1242', N'2022-09-22 17:04:40.660', N'video 資料修改：1013', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1243', N'2022-09-22 17:04:47.917', N'video 資料修改：1014', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1244', N'2022-09-22 17:04:56.040', N'video 資料修改：1015', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1245', N'2022-09-22 17:07:34.633', N'video 資料修改：9', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1246', N'2022-09-22 17:08:19.990', N'video 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1247', N'2022-09-22 17:08:57.200', N'video 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1248', N'2022-09-22 17:09:33.500', N'video 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1249', N'2022-09-22 17:10:25.447', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1250', N'2022-09-22 17:10:32.423', N'video 資料刪除：2', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1251', N'2022-09-22 17:11:21.983', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1252', N'2022-09-22 17:12:00.373', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1253', N'2022-09-22 17:12:11.190', N'video 資料刪除：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1254', N'2022-09-22 17:12:18.123', N'video 資料刪除：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1255', N'2022-09-22 17:12:27.663', N'video 資料修改：1024', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1256', N'2022-09-22 17:12:33.530', N'video 資料修改：1024', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1257', N'2022-09-22 17:12:44.537', N'video 資料修改：9', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1258', N'2022-09-22 17:12:50.673', N'video 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1259', N'2022-09-22 17:13:30.523', N'video 資料修改：10', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1260', N'2022-09-22 17:15:04.503', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1261', N'2022-09-22 17:41:26.467', N'video 資料修改：1023', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1262', N'2022-09-22 17:42:11.800', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1263', N'2022-09-22 17:42:16.803', N'video 資料修改：1023', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1264', N'2022-09-22 17:42:22.280', N'video 資料修改：1023', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1265', N'2022-09-22 17:43:36.890', N'video 資料修改：1019', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1266', N'2022-09-22 17:43:47.190', N'video 資料修改：1018', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1267', N'2022-09-22 17:43:54.527', N'video 資料修改：1017', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1268', N'2022-09-22 17:44:01.437', N'video 資料修改：1016', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1269', N'2022-09-22 17:44:08.493', N'video 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1270', N'2022-09-22 17:44:15.253', N'video 資料刪除：1019', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1271', N'2022-09-22 17:47:26.253', N'video 資料修改：1017', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1272', N'2022-09-22 17:47:36.417', N'video 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1273', N'2022-09-22 17:47:43.707', N'video 資料修改：1016', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1274', N'2022-09-22 17:48:01.490', N'video 資料修改：1018', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1275', N'2022-09-22 17:48:27.040', N'video 資料修改：1018', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1276', N'2022-09-22 17:48:52.957', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1277', N'2022-09-22 17:49:14.523', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1278', N'2022-09-22 17:49:40.127', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1279', N'2022-09-22 17:49:48.020', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1280', N'2022-09-22 17:50:07.763', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1281', N'2022-09-22 17:50:19.740', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1282', N'2022-09-22 17:50:41.710', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1283', N'2022-09-22 17:50:48.940', N'video 資料修改：1034', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1284', N'2022-09-22 17:58:24.700', N'video 資料修改：16', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1285', N'2022-09-22 17:58:31.000', N'video 資料修改：16', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1286', N'2022-09-22 17:58:52.687', N'video 資料修改：5', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1287', N'2022-09-22 17:58:57.367', N'video 資料修改：5', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1288', N'2022-09-22 17:59:16.083', N'video 資料修改：15', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1289', N'2022-09-22 18:01:55.247', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1290', N'2022-09-22 18:02:31.600', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1291', N'2022-09-22 18:02:40.650', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1292', N'2022-09-22 18:07:08.677', N'video 資料刪除：13', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1293', N'2022-09-22 18:07:55.547', N'video 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1294', N'2022-09-22 18:08:20.293', N'video 資料修改：14', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1295', N'2022-09-22 18:09:07.637', N'video 資料修改：1021', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1296', N'2022-09-22 18:11:27.183', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1297', N'2022-09-22 18:12:04.517', N'video 資料修改：1021', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1298', N'2022-09-22 18:13:41.080', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1299', N'2022-09-22 18:14:04.783', N'video 資料修改：1022', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1300', N'2022-09-22 18:14:39.797', N'video 資料修改：1020', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1301', N'2022-09-22 18:15:40.823', N'video 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1302', N'2022-09-22 18:15:56.150', N'video 資料修改：1020', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1303', N'2022-09-22 18:16:29.940', N'video 資料修改：1023', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1304', N'2022-09-22 18:16:35.363', N'video 資料修改：1027', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1305', N'2022-09-22 18:17:20.780', N'video 資料修改：1026', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1306', N'2022-09-22 18:17:32.360', N'video 資料修改：1027', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1307', N'2022-09-22 18:18:06.467', N'video 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1308', N'2022-09-22 18:18:12.060', N'video 資料修改：14', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1309', N'2022-09-22 18:18:27.280', N'video 資料修改：1021', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1310', N'2022-09-22 18:18:31.983', N'video 資料修改：1037', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1311', N'2022-09-22 18:18:51.067', N'video 資料修改：1022', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1312', N'2022-09-22 18:20:05.333', N'news 資料修改：13', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1313', N'2022-09-22 18:20:31.043', N'news 資料修改：12', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1314', N'2022-09-22 18:20:38.997', N'document 資料修改：25', N'MAK_supervisor', N'源做管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1315', N'2022-09-22 18:20:55.880', N'news 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1316', N'2022-09-22 18:21:15.940', N'news 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1317', N'2022-09-22 18:22:09.120', N'news 資料修改：12', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1318', N'2022-09-22 18:22:32.660', N'news 資料修改：9', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1319', N'2022-09-22 18:22:34.483', N'document 資料修改：25', N'MAK_supervisor', N'源做管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1320', N'2022-09-22 18:22:44.860', N'news 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1321', N'2022-09-22 18:22:52.480', N'news 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1322', N'2022-09-22 18:22:59.640', N'news 資料修改：14', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1323', N'2022-09-22 18:23:45.523', N'news 資料修改：9', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1324', N'2022-09-22 18:23:52.240', N'news 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1325', N'2022-09-22 18:23:57.337', N'news 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1326', N'2022-09-22 18:24:02.793', N'news 資料修改：14', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1327', N'2022-09-22 18:24:43.490', N'news 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1328', N'2022-09-22 18:24:50.067', N'news 資料修改：15', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1329', N'2022-09-22 18:25:07.730', N'news 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1330', N'2022-09-22 18:25:16.837', N'news 資料修改：16', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1331', N'2022-09-22 18:27:38.050', N'album 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1332', N'2022-09-22 18:28:48.913', N'album 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1333', N'2022-09-22 18:29:17.880', N'album 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1334', N'2022-09-22 18:29:47.610', N'album 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1335', N'2022-09-22 18:30:20.597', N'album 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1336', N'2022-09-22 18:31:02.373', N'album 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1337', N'2022-09-22 18:31:22.987', N'album 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1338', N'2022-09-22 18:31:32.083', N'album 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1339', N'2022-09-22 18:31:39.600', N'album 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1340', N'2022-09-22 18:31:47.020', N'album 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1341', N'2022-09-22 18:31:52.240', N'album 資料修改：1006', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1342', N'2022-09-22 18:31:59.433', N'album 資料修改：1007', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1343', N'2022-09-22 18:32:58.430', N'photo 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1344', N'2022-09-22 18:33:05.500', N'photo 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1345', N'2022-09-22 18:33:10.000', N'photo 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1346', N'2022-09-22 18:33:17.153', N'photo 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1347', N'2022-09-22 18:33:21.357', N'photo 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1348', N'2022-09-22 18:33:28.717', N'photo 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1349', N'2022-09-22 18:33:32.777', N'photo 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1350', N'2022-09-22 18:34:08.430', N'photo 資料修改：17', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1351', N'2022-09-22 18:34:15.970', N'photo 資料修改：16', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1352', N'2022-09-22 18:34:23.453', N'photo 資料修改：16', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1353', N'2022-09-22 18:34:33.587', N'photo 資料修改：16', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1354', N'2022-09-22 18:34:40.907', N'photo 資料修改：15', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1355', N'2022-09-22 18:35:10.073', N'photo 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1356', N'2022-09-22 18:37:29.210', N'photo 資料修改：11', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1357', N'2022-09-22 18:37:58.347', N'photo 資料修改：9', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1358', N'2022-09-22 18:38:44.573', N'photo 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1359', N'2022-09-22 18:39:11.960', N'photo 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1360', N'2022-09-22 18:39:28.653', N'photo 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1361', N'2022-09-22 18:43:16.790', N'photo 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1362', N'2022-09-22 18:43:19.013', N'photo 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1363', N'2022-09-22 18:43:28.923', N'photo 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1364', N'2022-09-22 18:44:08.030', N'photo 資料修改：5', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1365', N'2022-09-22 18:44:20.290', N'photo 資料修改：7', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1366', N'2022-09-22 18:44:27.360', N'photo 資料修改：6', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1367', N'2022-09-22 18:44:55.297', N'photo 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1368', N'2022-09-22 18:45:22.807', N'photo 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1369', N'2022-09-22 18:45:34.493', N'photo 資料刪除：29', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1370', N'2022-09-22 18:46:32.990', N'travel 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1371', N'2022-09-22 18:47:02.727', N'travel 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1372', N'2022-09-22 18:47:59.617', N'travel 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1373', N'2022-09-22 18:50:47.610', N'travel 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1374', N'2022-09-22 18:51:25.377', N'travel 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1375', N'2022-09-22 18:52:53.370', N'travel 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1376', N'2022-09-22 18:54:53.783', N'travel 資料修改：5', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1377', N'2022-09-22 18:55:02.773', N'travel 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1378', N'2022-09-22 18:55:28.383', N'travel 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1379', N'2022-09-22 19:30:35.433', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1380', N'2022-09-23 09:15:23.000', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1381', N'2022-09-23 10:15:08.840', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1382', N'2022-09-23 10:20:19.997', N'video 資料修改：1011', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1383', N'2022-09-23 10:22:28.807', N'news 資料修改：13', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1384', N'2022-09-23 10:29:50.610', N'user 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1385', N'2022-09-23 10:29:58.593', N'user 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1386', N'2022-09-23 10:30:08.903', N'user 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1387', N'2022-09-23 10:30:23.130', N'登出', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1388', N'2022-09-23 10:30:31.893', N'登入', N'test', N'測試', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1389', N'2022-09-23 10:30:54.780', N'登出', N'test', N'測試', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1390', N'2022-09-23 10:31:00.883', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1391', N'2022-09-23 10:41:15.717', N'news 資料修改：13', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1392', N'2022-09-23 10:58:11.853', N'登出', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1393', N'2022-09-23 10:58:15.480', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1394', N'2022-09-23 14:09:17.657', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.21')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1395', N'2022-09-23 14:18:05.137', N'image 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1396', N'2022-09-23 14:46:38.327', N'photo 資料修改：6', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1397', N'2022-09-23 17:57:40.817', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1398', N'2022-09-26 10:36:26.110', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1399', N'2022-09-26 10:46:30.760', N'image 資料刪除：5', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1400', N'2022-09-26 10:46:33.453', N'image 資料刪除：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1401', N'2022-09-26 10:46:35.830', N'image 資料刪除：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1402', N'2022-09-26 10:46:38.320', N'image 資料刪除：2', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1403', N'2022-09-26 11:20:03.793', N'登出', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1404', N'2022-09-27 10:25:43.300', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'1405', N'2022-09-27 10:26:13.970', N'登入', N'MAK_supervisor', N'源做總管理者', N'192.168.0.145')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2399', N'2022-11-07 17:14:37.970', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2400', N'2022-11-10 11:54:41.200', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2401', N'2022-11-10 11:54:54.733', N'登出', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2402', N'2022-11-10 12:12:30.313', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2403', N'2022-11-10 12:13:11.377', N'登出', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2404', N'2022-11-10 12:13:14.613', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2405', N'2022-11-10 12:18:52.403', N'video 資料刪除：12', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2406', N'2022-11-10 12:18:55.793', N'video 資料刪除：11', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2407', N'2022-11-10 12:18:59.693', N'video 資料刪除：7', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2408', N'2022-11-10 12:20:47.197', N'video 資料刪除：1036', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2409', N'2022-11-10 14:19:13.323', N'history 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2410', N'2022-11-10 14:19:42.707', N'history 資料修改：8', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2411', N'2022-11-10 15:25:23.947', N'登出', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2412', N'2022-11-10 15:47:17.283', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2413', N'2022-11-10 15:47:19.047', N'登出', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2414', N'2022-11-10 15:47:26.533', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2415', N'2022-11-10 15:52:11.533', N'user 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2416', N'2022-11-10 15:52:44.220', N'user 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2417', N'2022-11-10 15:52:50.007', N'user 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2418', N'2022-11-10 15:52:57.220', N'user 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2419', N'2022-11-10 16:11:31.633', N'image 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2420', N'2022-11-10 16:11:53.730', N'image 資料刪除：9', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2421', N'2022-11-10 16:12:04.033', N'image 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2422', N'2022-11-10 16:24:02.893', N'a_category 資料修改：5', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2423', N'2022-11-10 16:24:17.430', N'a_category 資料修改：5', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2424', N'2022-11-10 18:45:40.837', N'登出', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2425', N'2022-11-14 17:08:48.110', N'登入', N'mnd_admin', N'【政戰園地】管理者', N'192.168.0.87')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2426', N'2022-11-14 17:16:17.493', N'登入', N'Test1', N'測試2', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2427', N'2022-11-14 17:16:21.047', N'登出', N'Test1', N'測試2', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2428', N'2022-11-14 17:16:51.820', N'登入', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2429', N'2022-11-14 17:18:49.803', N'user 資料修改：3', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2430', N'2022-11-14 17:21:16.717', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2431', N'2022-11-14 17:21:21.407', N'news 資料刪除：17', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2432', N'2022-11-14 17:26:29.253', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2433', N'2022-11-14 17:26:34.393', N'news 資料刪除：18', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2434', N'2022-11-14 17:26:53.370', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2435', N'2022-11-14 17:26:57.247', N'news 資料刪除：19', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2436', N'2022-11-14 17:28:24.790', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2437', N'2022-11-14 17:28:28.183', N'news 資料刪除：20', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2438', N'2022-11-14 17:29:53.457', N'user 資料新增', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2439', N'2022-11-14 17:29:57.993', N'user 資料刪除：5', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2440', N'2022-11-14 17:30:15.167', N'photo 資料新增', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2441', N'2022-11-14 17:31:14.673', N'photo 資料新增', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2442', N'2022-11-14 17:31:18.860', N'photo 資料刪除：31', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2443', N'2022-11-14 17:31:33.193', N'video 資料新增', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2444', N'2022-11-14 17:31:38.020', N'video 資料刪除：1040', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2445', N'2022-11-14 17:31:49.247', N'user 資料新增', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2446', N'2022-11-14 17:31:56.483', N'user 資料修改：6', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2447', N'2022-11-14 17:32:00.670', N'user 資料刪除：6', N'MAK_supervisor', N'源做總管理者', N'192.168.0.183')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2448', N'2022-11-16 08:32:56.957', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2449', N'2022-11-16 14:14:29.297', N'登出', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2450', N'2022-11-16 14:14:38.910', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2451', N'2022-11-16 15:00:59.480', N'user 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2452', N'2022-11-16 15:04:07.230', N'document 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2453', N'2022-11-16 15:08:23.263', N'user 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2454', N'2022-11-16 15:08:32.343', N'user 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2455', N'2022-11-16 15:08:36.210', N'登出', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2456', N'2022-11-16 15:10:06.180', N'登入', N'test123', N'TEST123', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2457', N'2022-11-16 15:10:47.747', N'登出', N'test123', N'TEST123', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2458', N'2022-11-16 15:11:01.517', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2459', N'2022-11-16 16:15:41.300', N'about 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2460', N'2022-11-16 16:19:13.720', N'about 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2461', N'2022-11-16 16:19:25.290', N'about 資料刪除：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2462', N'2022-11-16 16:58:31.270', N'about 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2463', N'2022-11-16 17:00:17.390', N'about 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2464', N'2022-11-16 17:10:04.233', N'about 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2465', N'2022-11-16 17:10:14.663', N'about 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2466', N'2022-11-16 17:21:34.783', N'about 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2467', N'2022-11-16 17:24:44.340', N'about 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2468', N'2022-11-16 17:25:38.037', N'about 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2469', N'2022-11-16 17:26:20.850', N'about 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2470', N'2022-11-16 17:26:25.040', N'about 資料修改：7', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2471', N'2022-11-16 17:28:11.160', N'about 資料修改：7', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2472', N'2022-11-16 17:28:24.643', N'about 資料修改：7', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2473', N'2022-11-17 08:15:05.653', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2474', N'2022-11-17 08:15:16.717', N'about 資料修改：8', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2475', N'2022-11-17 08:18:27.300', N'登出', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2476', N'2022-11-17 08:21:59.730', N'登入', N'test123', N'TEST123', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2477', N'2022-11-17 08:28:58.820', N'users 資料修改：5', N'test123', N'TEST123', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2478', N'2022-11-17 08:29:13.033', N'登出', N'test123', N'TEST123', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2479', N'2022-11-17 08:29:48.887', N'登入', N'test123', N'TEST123', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2480', N'2022-11-17 09:29:33.587', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2481', N'2022-11-17 09:35:16.667', N'link 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2482', N'2022-11-17 09:37:02.830', N'link 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2483', N'2022-11-17 09:37:46.847', N'link 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2484', N'2022-11-17 09:51:34.240', N'link 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2485', N'2022-11-17 09:52:50.140', N'link 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2486', N'2022-11-17 09:53:10.837', N'link 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2487', N'2022-11-17 09:53:34.693', N'link 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2488', N'2022-11-17 09:53:45.013', N'about 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2489', N'2022-11-17 09:56:19.207', N'about 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2490', N'2022-11-17 09:56:21.410', N'about 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2491', N'2022-11-17 09:56:27.217', N'link 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2492', N'2022-11-17 09:57:00.093', N'link 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2493', N'2022-11-17 10:25:18.987', N'd_class 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2494', N'2022-11-17 10:25:33.213', N'd_class 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2495', N'2022-11-17 10:25:37.623', N'd_class 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2496', N'2022-11-17 10:26:21.310', N'd_class 資料刪除：1', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2497', N'2022-11-17 10:26:36.880', N'd_class 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2498', N'2022-11-17 10:26:43.427', N'd_class 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2499', N'2022-11-17 10:27:09.690', N'd_class 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2500', N'2022-11-17 10:27:15.947', N'd_class 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2501', N'2022-11-17 10:27:26.423', N'd_class 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2502', N'2022-11-17 10:27:30.110', N'd_class 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2503', N'2022-11-17 10:27:40.217', N'd_class 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2504', N'2022-11-17 10:27:47.727', N'd_class 資料修改：3', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2505', N'2022-11-17 10:54:45.600', N'depart 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2506', N'2022-11-17 10:55:39.890', N'depart 資料狀態修改', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2507', N'2022-11-17 10:56:20.420', N'depart 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2508', N'2022-11-17 10:56:41.387', N'depart 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2509', N'2022-11-17 10:57:06.407', N'depart 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2510', N'2022-11-17 12:27:19.093', N'news 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2511', N'2022-11-17 12:27:23.627', N'news 資料狀態修改', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2512', N'2022-11-17 12:27:46.003', N'news 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2513', N'2022-11-17 12:32:26.750', N'news 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2514', N'2022-11-17 12:32:40.277', N'news 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2515', N'2022-11-17 12:39:36.520', N'news 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2516', N'2022-11-17 12:41:05.177', N'news 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2517', N'2022-11-17 12:44:59.260', N'news 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2518', N'2022-11-17 12:45:09.747', N'news 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2519', N'2022-11-17 12:45:18.297', N'news 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2520', N'2022-11-17 12:45:46.647', N'news 資料修改：5', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2521', N'2022-11-17 12:59:58.557', N'news 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2522', N'2022-11-17 13:06:40.310', N'news 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2523', N'2022-11-17 14:54:12.780', N'news 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2524', N'2022-11-17 14:54:33.417', N'news 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2525', N'2022-11-17 15:00:25.407', N'news 資料修改：5', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2526', N'2022-11-17 15:27:39.797', N'image 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2527', N'2022-11-17 15:28:50.980', N'image 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2528', N'2022-11-17 15:31:39.847', N'image 資料新增', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2529', N'2022-11-17 15:31:48.570', N'image 資料修改：2', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2530', N'2022-11-17 15:43:23.400', N'image 資料修改：1', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2531', N'2022-11-17 16:00:27.800', N'document 資料修改：26', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2532', N'2022-11-17 16:10:26.260', N'document 資料修改：27', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2533', N'2022-11-17 16:11:45.263', N'document 資料修改：26', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2534', N'2022-11-17 16:13:02.610', N'document 資料修改：27', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2535', N'2022-11-17 16:14:24.990', N'document 資料修改：27', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2536', N'2022-11-17 16:14:39.923', N'document 資料修改：27', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2537', N'2022-11-17 16:25:48.807', N'document 資料修改：27', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2538', N'2022-11-17 16:26:24.713', N'document 資料修改：27', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2539', N'2022-11-17 16:27:04.743', N'document 資料修改：27', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2540', N'2022-11-17 16:29:22.963', N'document 資料修改：27', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2541', N'2022-11-17 17:06:27.073', N'document 資料修改：26', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2542', N'2022-11-17 17:06:40.520', N'document 資料修改：26', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2543', N'2022-11-17 17:07:32.167', N'news 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2544', N'2022-11-17 17:08:52.630', N'news 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2545', N'2022-11-17 17:09:48.733', N'document 資料修改：26', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2546', N'2022-11-17 17:12:17.017', N'document 資料修改：27', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2547', N'2022-11-17 17:16:16.860', N'document 資料修改：27', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2548', N'2022-11-17 17:34:10.023', N'news 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2549', N'2022-11-17 17:35:27.840', N'news 資料修改：4', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2550', N'2022-11-17 17:35:46.757', N'document 資料修改：27', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2551', N'2022-11-17 17:38:06.840', N'document 資料修改：27', N'mnd_admin', N'【政戰園地】管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2552', N'2022-11-18 09:03:01.627', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2553', N'2022-11-18 09:37:39.920', N'about 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2554', N'2022-11-18 09:39:21.113', N'about 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2555', N'2022-11-18 10:29:11.543', N'about 資料修改：8', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2556', N'2022-11-18 10:33:25.070', N'about 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2557', N'2022-11-18 10:33:58.427', N'about 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2558', N'2022-11-18 10:36:29.123', N'登出', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2559', N'2022-11-18 10:36:40.730', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2560', N'2022-11-18 10:49:44.227', N'link 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2561', N'2022-11-18 10:53:00.837', N'link 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2562', N'2022-11-18 10:53:09.627', N'link 資料修改：3', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2563', N'2022-11-18 10:53:29.180', N'link 資料修改：3', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2564', N'2022-11-18 10:59:08.363', N'link 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2565', N'2022-11-18 10:59:12.167', N'link 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2566', N'2022-11-18 10:59:30.387', N'link 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2567', N'2022-11-18 10:59:51.857', N'link 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2568', N'2022-11-18 11:19:45.213', N'link 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2569', N'2022-11-18 11:30:34.277', N'd_class 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2570', N'2022-11-18 11:46:23.757', N'news 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2571', N'2022-11-18 11:47:54.773', N'news 資料修改：6', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2572', N'2022-11-18 11:54:21.410', N'news 資料修改：6', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2573', N'2022-11-18 12:03:48.883', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2574', N'2022-11-18 12:04:05.143', N'news 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2575', N'2022-11-18 12:06:03.537', N'news 資料修改：7', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2576', N'2022-11-18 12:08:32.810', N'news 資料修改：6', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2577', N'2022-11-18 12:08:52.980', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2578', N'2022-11-18 12:08:56.280', N'news 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2579', N'2022-11-18 12:09:04.140', N'news 資料刪除：8', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2580', N'2022-11-18 12:09:23.847', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2581', N'2022-11-18 12:20:47.167', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2582', N'2022-11-18 12:21:55.740', N'news 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2583', N'2022-11-18 14:56:48.060', N'depart 資料修改：2', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2584', N'2022-11-18 14:58:46.317', N'depart 資料修改：1', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2585', N'2022-11-18 14:59:31.633', N'depart 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2586', N'2022-11-18 15:08:28.367', N'depart 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2587', N'2022-11-18 15:11:15.990', N'depart 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2588', N'2022-11-18 15:12:08.667', N'depart 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2589', N'2022-11-18 15:12:58.887', N'depart 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2590', N'2022-11-18 15:13:15.050', N'depart 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2591', N'2022-11-18 15:13:39.587', N'depart 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2592', N'2022-11-18 15:13:52.243', N'depart 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2593', N'2022-11-18 15:14:10.180', N'depart 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2594', N'2022-11-18 15:33:03.520', N'depart 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2595', N'2022-11-18 15:33:38.287', N'depart 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2596', N'2022-11-18 16:09:49.757', N'news 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2597', N'2022-11-18 16:10:03.623', N'news 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2598', N'2022-11-18 16:11:49.227', N'news 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2599', N'2022-11-18 16:13:23.563', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2600', N'2022-11-18 16:13:32.967', N'news 資料狀態修改', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2601', N'2022-11-21 13:55:00.337', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2602', N'2022-11-21 14:22:07.237', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2603', N'2022-11-21 14:22:42.660', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2604', N'2022-11-21 14:32:55.403', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2605', N'2022-11-21 14:45:36.920', N'd_class 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2606', N'2022-11-21 14:46:53.600', N'd_class 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2607', N'2022-11-21 14:47:31.870', N'd_class 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2608', N'2022-11-21 14:56:19.140', N'd_class 資料修改：4', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2609', N'2022-11-21 14:56:50.590', N'd_class 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2610', N'2022-11-21 15:05:39.380', N'd_class 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2611', N'2022-11-21 15:31:03.080', N'登入', N'mak', N'MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2612', N'2022-11-21 15:32:05.043', N'登出', N'mak', N'MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2613', N'2022-11-21 15:33:54.820', N'登入', N'mak', N'【處室管理者】MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2614', N'2022-11-21 15:36:15.297', N'users 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2615', N'2022-11-21 15:38:16.690', N'users 資料修改：5', N'mak', N'MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2616', N'2022-11-21 15:41:35.097', N'users 資料修改：5', N'mak', N'MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2617', N'2022-11-21 15:50:56.203', N'd_class 資料修改：5', N'mak', N'MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2618', N'2022-11-21 15:51:13.010', N'd_class 資料修改：5', N'mak', N'MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2619', N'2022-11-21 16:01:31.357', N'd_class 資料修改：5', N'mak', N'MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2620', N'2022-11-21 16:53:08.673', N'登出', N'mak', N'MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2621', N'2022-11-21 16:58:47.237', N'登入', N'mak', N'【處室管理者】MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2622', N'2022-11-21 17:07:00.777', N'登出', N'mak', N'MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2623', N'2022-11-21 17:07:26.667', N'登入', N'sunny', N'【處室管理者】kuo sunny', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2624', N'2022-11-21 17:07:49.297', N'd_class 資料修改：4', N'sunny', N'kuo sunny', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2625', N'2022-11-21 17:15:16.420', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2626', N'2022-11-21 17:16:53.353', N'登出', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2627', N'2022-11-21 17:17:29.567', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2628', N'2022-11-21 17:30:56.997', N'news 資料修改：5', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2629', N'2022-11-21 17:31:11.580', N'登出', N'sunny', N'kuo sunny', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2630', N'2022-11-21 17:32:20.410', N'登入', N'mak', N'【處室管理者】MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2631', N'2022-11-21 17:37:20.137', N'news 資料新增', N'mak', N'MAK', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2632', N'2022-11-21 17:37:53.187', N'news 資料修改：12', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2633', N'2022-11-21 17:38:02.497', N'news 資料修改：12', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2634', N'2022-11-22 09:14:57.090', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2635', N'2022-11-22 09:16:23.287', N'登入', N'sunny', N'【處室管理者】kuo sunny', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2636', N'2022-11-22 09:45:35.663', N'登出', N'sunny', N'kuo sunny', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2637', N'2022-11-22 09:46:08.273', N'登入', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2638', N'2022-11-22 09:46:21.167', N'登入', N'sunny', N'【處室管理者】kuo sunny', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2639', N'2022-11-22 10:38:34.200', N'document 資料修改：27', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2640', N'2022-11-22 10:44:13.280', N'news 資料修改：11', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2641', N'2022-11-22 10:52:14.450', N'depart 資料修改：4', N'sunny', N'kuo sunny', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2642', N'2022-11-22 10:52:20.890', N'depart 資料狀態修改', N'sunny', N'kuo sunny', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2643', N'2022-11-22 11:05:26.550', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2644', N'2022-11-22 11:07:03.280', N'news 資料修改：14', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2645', N'2022-11-22 11:07:40.330', N'news 資料刪除：14', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2646', N'2022-11-22 11:09:44.627', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2647', N'2022-11-22 11:16:05.240', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
INSERT INTO [dbo].[record] ([r_id], [r_date], [r_text], [r_account], [r_name], [r_ip]) VALUES (N'2648', N'2022-11-22 11:16:42.623', N'news 資料新增', N'MAK_supervisor', N'源做總管理者', N'::1')
GO
GO
SET IDENTITY_INSERT [dbo].[record] OFF
GO

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE [dbo].[users]
GO
CREATE TABLE [dbo].[users] (
[u_id] int NOT NULL IDENTITY(1,1) ,
[u_account] varchar(255) NULL ,
[u_password] varchar(255) NULL ,
[u_name] varchar(255) NULL ,
[u_main_purview] varchar(10) NULL ,
[u_sub_purview] varchar(10) NULL ,
[u_check] varchar(10) NULL ,
[u_error] int NULL DEFAULT ((0)) 
)


GO
DBCC CHECKIDENT(N'[dbo].[users]', RESEED, 5)
GO

-- ----------------------------
-- Records of users
-- ----------------------------
SET IDENTITY_INSERT [dbo].[users] ON
GO
INSERT INTO [dbo].[users] ([u_id], [u_account], [u_password], [u_name], [u_main_purview], [u_sub_purview], [u_check], [u_error]) VALUES (N'1', N'MAK_supervisor', N'3e33d279a8c7366cd5ddad0c6cfde0ba', N'源做總管理者', N'0', N'0', N'Y', N'0')
GO
GO
INSERT INTO [dbo].[users] ([u_id], [u_account], [u_password], [u_name], [u_main_purview], [u_sub_purview], [u_check], [u_error]) VALUES (N'2', N'mnd_admin', N'16d7a4fca7442dda3ad93c9a726597e4', N'【資通電軍】管理者', N'1', N'0', N'Y', N'0')
GO
GO
INSERT INTO [dbo].[users] ([u_id], [u_account], [u_password], [u_name], [u_main_purview], [u_sub_purview], [u_check], [u_error]) VALUES (N'5', N'test123', N'b64f1a77b1b317d347f5cb79332c86d2', N'TEST123', N'2', N'0', N'Y', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[users] OFF
GO

-- ----------------------------
-- Indexes structure for table about
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table about
-- ----------------------------
ALTER TABLE [dbo].[about] ADD PRIMARY KEY ([a_id])
GO

-- ----------------------------
-- Indexes structure for table d_class
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table d_class
-- ----------------------------
ALTER TABLE [dbo].[d_class] ADD PRIMARY KEY ([dc_id])
GO

-- ----------------------------
-- Indexes structure for table depart
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table depart
-- ----------------------------
ALTER TABLE [dbo].[depart] ADD PRIMARY KEY ([d_id])
GO

-- ----------------------------
-- Indexes structure for table document
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table document
-- ----------------------------
ALTER TABLE [dbo].[document] ADD PRIMARY KEY ([d_id])
GO

-- ----------------------------
-- Indexes structure for table image
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table image
-- ----------------------------
ALTER TABLE [dbo].[image] ADD PRIMARY KEY ([i_id])
GO

-- ----------------------------
-- Indexes structure for table link
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table link
-- ----------------------------
ALTER TABLE [dbo].[link] ADD PRIMARY KEY ([l_id])
GO

-- ----------------------------
-- Indexes structure for table menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table menu
-- ----------------------------
ALTER TABLE [dbo].[menu] ADD PRIMARY KEY ([m_id])
GO

-- ----------------------------
-- Indexes structure for table news
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table news
-- ----------------------------
ALTER TABLE [dbo].[news] ADD PRIMARY KEY ([n_id])
GO

-- ----------------------------
-- Indexes structure for table record
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table record
-- ----------------------------
ALTER TABLE [dbo].[record] ADD PRIMARY KEY ([r_id])
GO

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD PRIMARY KEY ([u_id])
GO
