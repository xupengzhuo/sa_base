
-- 界面取色模块，每个函数代表一次取色操作，返回值为取色结果

-- 初始界面公告
-- {
-- 	{   85,  105, 0xffcc00},
-- 	{  690,  107, 0xffcc00},
-- 	{   76, 1217, 0xffcc00},
-- 	{  706, 1225, 0xffffff},
-- }
-- if (isColor(  85,  105, 0xffcc00, 85) and 
-- isColor( 690,  107, 0xffcc00, 85) and 
-- isColor(  76, 1217, 0xffcc00, 85) and 
-- isColor( 706, 1225, 0xffffff, 85)) then
-- x,y = findMultiColorInRegionFuzzy( 0xffcc00, "605|2|0xffcc00,-9|1112|0xffcc00,621|1120|0xffffff", 90, 99, 100, 676, 110)

cp = {}
local x, y

--需要更新资源包
function cp.need_update(...)
	if isColor(364,180,0x595144,85) and isColor(622,446,0x3d4770,85) and isColor(759,204,0xd2a859,85) and isColor(547,189,0xfce6bb,85) and isColor(578,441,0xf8e4cf,85) and isColor(551,437,0xf2dfca,85) and isColor(750,202,0x4f4124,85) and isColor(377,201,0x585044,85) then
		return true
	else
		return false
	end
end

--公告画面
function cp.start_screen_announcement(...)
	if isColor(1027,44,0xffffff,85) and isColor(123,43,0xffcc00,85) and isColor(105,549,0xffcc00,85) and isColor(1018,557,0xffcc00,85) and isColor(1024,57,0x000000,85) and isColor(1027,26,0x000000,85) and isColor(999,42,0xffcc00,85) then		
		return true
	else
		return false
	end
end

--选区画面（无角色)
function cp.choose_server(...)		
	if isColor(269,108,0xf5cf3a,85) and isColor(89,100,0xdcbba5,85) and isColor(103,107,0xdca088,85) and isColor(53,117,0xc18462,85) and isColor(596,110,0x27241f,85) and isColor(236,109,0xe6cc67,85) and isColor(151,107,0xf6db6e,85) and isColor(801,595,0xf76363,85) and isColor(884,594,0xf7c363,85) and isColor(971,594,0x91b85a,85) then		
		return true
	else
		return false
	end
end

--选取画面是否已经有角色存在
function cp.server_exist_role(...)
	--x,y = findMultiColorInRegionFuzzy( 0x8984ad, "2|13|0xfff5b5,30|29|0x745029,57|11|0xc3c6cd,49|51|0xf4efea,5|54|0xf9a274,1|42|0xffda97,17|97|0x798386,63|6|0xbdbdcd,-1|24|0xdfd8bf", 90, 581, 47, 661, 320)
	x,y = findMultiColorInRegionFuzzy( 0xebddab, "-588|-8|0x6e71ae,-551|10|0x583f2b,-557|-7|0xe6a47e,-234|8|0xdddcdb,139|491|0xf76363,222|492|0xf7c363,308|492|0x93b95a,396|491|0x83837f", 90, 0, 0, 1135, 639)
	if x ~= -1 and y ~= -1 then
		return true
	else
		return false
	end
end
--登陆画面
function cp.login_zone_1(...)
	if isColor(496,448,0xfefefe,85) and isColor(497,459,0xeeeded,85) and isColor(506,451,0xf8f8f8,85) and isColor(514,454,0xdbdad9,85) and isColor(519,459,0xffffff,85) and isColor(652,451,0xffffff,85) and isColor(652,460,0xffffff,85) and isColor(612,452,0xf4f3f3,85) and isColor(597,460,0xf8f8f8,85) and isColor(554,541,0xd38c36,85) then
		return true
	else
		return false
	end
end

--新角色提示窗
function cp.new_player(...)
	if isColor(429,453,0x60703e,85) and isColor(695,450,0x3e4872,85) and isColor(562,264,0xfee272,85) and isColor(654,449,0xecd9c4,85) and isColor(463,447,0xd1bfac,85) and isColor(445,446,0xf2dec9,85) and isColor(682,274,0x935530,85) and isColor(646,229,0x95badc,85) then		
		return true
	else
		return false
	end
end

--选择人物
function cp.choose_new_role(...)
	if isColor(755,401,0x8c674e,85) and isColor(720,414,0xb39479,85) and isColor(720,421,0xd7cbb1,85) and isColor(631,620,0xffffff,85) and isColor(621,619,0xe3e2e1,85) and isColor(980,287,0x5db2ae,85) and isColor(75,314,0x7c5748,85) and isColor(37,378,0x747458,85) and isColor(101,386,0xbdbe9f,85) and isColor(112,595,0x639559,85) then		
		return true
	else
		return false
	end
end

--确认属性
function cp.confirm_role(...)
	if isColor(1118,617,0x5d6e3d,85) and isColor(1119,577,0x5e703f,85) and isColor(851,583,0x60703d,85) and isColor(707,617,0xffffff,85) and isColor(695,626,0xfbfbfb,85) and isColor(951,590,0xdecbb8,85) and isColor(957,598,0xddcab7,85) and isColor(996,595,0xf6e2cd,85) and isColor(976,596,0xf5e1cc,85) and isColor(989,600,0xeddac5,85) then
		return true
	else
		return false
	end
end

--确认名字
function cp.confirm_name(...)
	if isColor(1094,604,0x60713e,85) and isColor(848,582,0x60703c,85) and isColor(849,614,0x5f703c,85) and isColor(970,595,0xe5d2bf,85) and isColor(941,592,0xf6e2cd,85) and isColor(1013,593,0xf8e4cf,85) and isColor(1005,588,0xf7e3ce,85) and isColor(708,616,0xffffff,85) and isColor(1096,526,0xe4b767,85) and isColor(1116,515,0xba8f4d,85) then
		return true
	else
		return false
	end
end

--名字重复
function cp.conflict_name(...)
	if isColor(1107,614,0x5f703c,85) and isColor(848,587,0x5e703e,85) and isColor(1100,526,0xe0b464,85) and isColor(708,616,0xffffff,85) and isColor(587,261,0xfcfcfc,85) and isColor(602,263,0xfefefe,85) and isColor(555,261,0xfdfdfd,85) and isColor(549,268,0xfefefe,85) and isColor(1115,50,0x787d71,85) then
		return true
	else
		return false
	end
end

--关闭邀请界面
function cp.close_invite(...)
	if isColor(658,514,0x3e4872,85) and isColor(768,252,0x514127,85) and isColor(752,253,0xcea558,85) and isColor(787,251,0xcea355,85) and isColor(765,238,0xcea053,85) and isColor(519,256,0xdec563,85) and isColor(393,266,0x595144,85) and isColor(408,427,0x2d2822,85) then
		return true
	else
		return false
	end
end

--选择出生地界面
function cp.choose_hometown()
	if isColor(923,264,0xf5f5f4,85) and isColor(941,265,0xffffff,85) and isColor(956,265,0xd8d6d5,85) and isColor(973,271,0xf1f1f0,85) and isColor(988,258,0xf8f8f8,85) and isColor(1031,599,0x3e4872,85) and isColor(829,599,0x3e4872,85) and isColor(930,599,0xeedbc6,85) and isColor(664,616,0xffffff,85) and isColor(661,630,0xffffff,85) then		
		return true
	elseif isColor(984,470,0xcdb565,85) and isColor(217,358,0xd42b13,85) and isColor(718,311,0xb3df04,85) and isColor(1042,425,0xb1a866,85) and isColor(1064,453,0x2d6931,85) and isColor(683,77,0x6b9bbe,85) and isColor(751,106,0x99be01,85) and isColor(921,80,0x729fc2,85) then
		return true
	else
		return false
	end
end


--判断是否处于游戏主界面中
function cp.is_main_ui()
	--找右上角的地图图标
	local found_map = false
	x,y = findMultiColorInRegionFuzzy( 0xa95631, "4|1|0xdecaa0,5|6|0x9d4527,-15|18|0xdcc290,10|10|0x978464,-1|15|0x8e7558,4|24|0xc4a974", 80, 1065, 35, 1123, 73)
	if x ~= -1 and y ~= -1 then
		found_map = true
	end
	
--	local found_icon = false
--	x,y = findMultiColorInRegionFuzzy( 0x83a145, "-52|3|0xf1e411,37|-4|0xcac9c8", 90, 89, 44, 229, 96)
--	if x ~= -1 and y ~= -1 then
--		found_icon = true
--	end
	
	local found_arraw = false
	x,y = findMultiColorInRegionFuzzy( 0xa3a2a0, "1|18|0x8d8b87,13|8|0xc6c4be", 90, 1096, 87, 1135, 126)
	if x ~= -1 and y ~= -1 then
		found_arraw = true
	end

--	return found_map and found_icon and found_arraw
	return found_map and found_arraw
end

--判断是否处于任务界面中
function cp.is_task_ui()
	if isColor(68,21,0xf5e7c0,85) and isColor(67,44,0xf2c993,85) and isColor(79,31,0xfae0b2,85) and isColor(84,22,0xfdeec5,85) and isColor(96,23,0xd1c29f,85) and isColor(95,43,0xf6d099,85) and isColor(113,37,0xf8d8a5,85) and isColor(1008,63,0x52422b,85) and isColor(1008,73,0xd3aa5a,85) and isColor(30,63,0x628c2f,85) then	
		return true
	else
		return false
	end
	
end

--判断是否处于对话界面中
function cp.is_dialog_ui()
	--对话框有不同的模式
	local arr1 = {
		{875,586,0xe0d7ca},
		{874,586,0xc5bbab},
		{873,586,0x63503a},
		{887,605,0x3a2409},
		{887,604,0x7f673d},
		{887,603,0xbba26f},
		{887,602,0xc2a975},
		{898,589,0xc8bba7},
		{899,589,0x84735e},
		{900,589,0x56422e},
	}
	
	local arr2 = {
		{923,602,0xc0a773},
		{918,595,0xd0bc97},
		{913,587,0xe1d7c7},
		{934,586,0xe1d9cb},
		{926,594,0xd3bf9d},
		{923,591,0xdacbb0},
	}
	x,y = findMultiColorInRegionFuzzyByTable(arr1, 90, 861, 548, 951, 639)
  
	if x ~= -1 and y ~= -1 then
		return true	
	end
	x,y = findMultiColorInRegionFuzzyByTable(arr2, 90, 861, 548, 951, 639)

	if x ~= -1 and y ~= -1 then
		return true	
	end
	
	return false
end

--任务过程中出现的各种交互对话框
function cp.is_dialog_ui_interact()
	local found_arrow = false
	x,y = findMultiColorInRegionFuzzy( 0xe1d9cd, "7|9|0xd1be9b,12|16|0xc2a976,24|1|0xd5cbbb,12|6|0xdbcaaf,12|18|0x8f774a", 90, 1042, 514, 1109, 637)
	if x ~= -1 and y ~= -1 then
		found_arrow = true	
	end
	
	local found_button = false
	if isColor(1091,433,0x753131,85) and isColor(1095,384,0x753131,85) and isColor(861,387,0x733131,85) and isColor(860,434,0x762f30,85) then		
		found_button = true
	elseif isColor(862,386,0x3e4672,85) and isColor(865,430,0x3e4772,85) and isColor(1085,428,0x3e4872,85) and isColor(1086,387,0x3e4872,85) then
		found_button = true
	elseif isColor(878,415,0xf8e4cf,85) and isColor(885,437,0x702e31,85) and isColor(886,389,0x733131,85) and isColor(1083,431,0x733133,85) and isColor(1079,395,0x733133,85) then
		found_button = true
	end

	return found_arrow and found_button

end	
	
--判断是否处于过场动画中
function cp.is_mv_ui()
	--判断跳过文字
	if isColor(1071,11,0xd2cbb8,85) and isColor(1101,11,0xd8d1be,85) and isColor(1065,18,0xbab39e,85) and isColor(1099,21,0xb4ac96,85) then
		return true
	elseif isColor(606,51,0xfee271,85) and isColor(506,56,0xffe372,85) and isColor(507,51,0xf9dd6f,85) and isColor(714,74,0x925430,85) and isColor(427,62,0x935431,85) and isColor(1071,11,0xd1cbb7,85) then
		return true
	else
		return false
	end
	
end

function cp.is_task_reward()
	x,y = findMultiColorInRegionFuzzy( 0x60713e, "-111|15|0x60713e,-81|12|0xd8c6b3,-47|17|0xe8d5c1", 90, 910, 434, 1127, 523)
	if x ~= -1 and y ~= -1 then
		return true
	else
		return false
	end
end

function cp.is_guide()
	--兔子小姐姐的形象
	--x,y = findMultiColorInRegionFuzzy( 0x365c48, "0|20|0x142d19,-14|9|0xdf7a74,-13|11|0xac4243,-55|-17|0x7a7979,23|17|0xa36542,-66|28|0x7f696d,-43|18|0xc8627d,-5|10|0xffefbe", 90, 0, 0, 749, 1333)
	--x,y = findMultiColorInRegionFuzzy( 0xd04f75, "30|4|0xbcafb1,95|5|0xce7f4a,129|13|0xfffdff,84|27|0x315543,84|47|0x253021,11|48|0xde9c8b,82|45|0xbfc7bf", 90, 0, 0, 749, 1333)
	--x,y = findMultiColorInRegionFuzzy( 0xff8cb5, "38|26|0xd16185,40|26|0xa55845,64|27|0xcd8269,81|19|0x315543,79|36|0xb7c0b9,98|24|0xb56e40,51|6|0xfeddc4", 70, 0, 0, 749, 1333)
	
	--x,y = findMultiColorInRegionFuzzy( 0xe6b901, "0|1|0xe4b701,0|2|0xe2b501,1|0|0xe883b0,1|1|0xe889b6,1|2|0xe88ebb,91|25|0xd3d4d0,92|25|0x6a887c,93|25|0x3c5147,94|25|0x29302b", 90, 0, 0, 749, 1333)
	--x,y = findMultiColorInRegionFuzzy( 0x354535, "1|0|0x878e7f,0|1|0x959b88,1|1|0xd3c6b2,5|42|0x9a5342,5|41|0xa55845,5|40|0xc2695a,5|39|0xdc7a65,5|43|0xd16185,5|44|0xc75f81", 60, 0, 0, 749, 1333)
	
	x,y = findMultiColorInRegionFuzzy( 0xfcfc3e, "-9|0|0xfbfb3e,-14|0|0xe5e538,-16|-14|0xfcfc3e,-16|-23|0xecec3a,-16|-47|0xfcfc3e,2|-70|0xf9f93d,-1|-91|0xfcfc3e,-7|-153|0xfbfb3e,-1|-173|0xfcfc3e", 90, 0, 0, 749, 1333)
	
	if x ~= -1 and y ~= -1 then
		return true
	else
		return false
	end
end

function cp.get_guide_arraw()
--	x, y = findImageInRegionFuzzy("arraw_7oclock.png", 90, 0, 0, 749, 1333, 0, 1);
--	if x ~= -1 and y ~= -1 then
--		dialog(x..':'..y,0)
--		x = x - 20
--		y = y + 60
--		return x, y
--	end
	
	--x, y = findImageInRegionFuzzy("arraw_5oclock.png", 90, 0, 0, 749, 1333, 0, 1);
	--识别四点钟方向的箭头
	x,y = findMultiColorInRegionFuzzy( 0xf7b638, "14|-2|0xfbd254,27|-6|0xfde078,25|-11|0xe0ad38,30|-29|0xfccd5a,13|-26|0xfec443,-4|-43|0xf9dd64,-11|-29|0xfcc141,1|-11|0xa67423,23|-16|0xe4aa31", 90, 0, 0, 1135, 639)
	if x ~= -1 and y ~= -1 then
		x = x + 50
		y = y + 20
		return x, y
	end
	
	--识别四点钟方向的箭头(2)
	x,y = findMultiColorInRegionFuzzy( 0xd7a12f, "5|8|0xfeeb92,-11|12|0xf7cf4c,-21|12|0xf6be43,-34|-18|0xfbbb3e,-28|-24|0xf0b23d,6|-18|0xf3c755,4|9|0xfeec8e,-24|14|0xedb036,-23|1|0xad7921", 90, 0, 0, 1135, 639)
	if x ~= -1 and y ~= -1 then
		x = x + 50
		y = y + 20
		return x, y
	end

	
	--识别八点钟方向的箭头	
	x,y = findMultiColorInRegionFuzzy( 0xf9bf3f, "12|23|0xdaa534,6|28|0xffed99,2|20|0xfce759,44|-5|0xfce267,40|-2|0xfdc53c,29|-21|0xe9b03d,11|-1|0xa87522,22|16|0xf9ba44", 90, 0, 0, 1135, 639)
	if x ~= -1 and y ~= -1 then
		y = y + 40
		return x, y
	end
	--识别两点钟方向的箭头(1)
	x,y = findMultiColorInRegionFuzzy( 0xf3c357, "-14|-13|0xf9dd63,4|-34|0xffd051,12|-41|0xe0a731,18|-43|0xdba533,27|-47|0xffeb8d,32|-19|0xe8ac35,20|-19|0xa47021,12|-41|0xe0a731,18|-43|0xdba533", 90, 0, 0, 1135, 639)	
	if x ~= -1 and y ~= -1 then
		--dialog(x..':'..y, 0)
		x = x + 40
		y = y - 60
		return x, y
	end
	
	--识别两点钟方向的箭头(2)
	x,y = findMultiColorInRegionFuzzy( 0xf8be3f, "29|23|0xfec642,41|2|0xfcdc63,36|-2|0xe7b73e,30|-5|0xeeb134,22|-17|0xf9c747,-8|1|0xf6d960,-5|3|0xecae3a,19|18|0xa37128,39|13|0xedbe41", 90, 0, 0, 1135, 639)
	if x ~= -1 and y ~= -1 then
		--dialog(x..':'..y, 0)
		x = x + 40
		y = y + 60
		return x, y
	end
	
	--识别十点钟方向的箭头
	x,y = findMultiColorInRegionFuzzy( 0xfde58a, "7|20|0xfdc43f,4|12|0xf2ba3b,22|20|0xfabc3c,29|10|0xa67525,27|4|0xefae3d,35|43|0xfde469,47|25|0xd7a033,30|11|0xc08a30,8|14|0xe5aa33", 90, 0, 0, 1135, 639)	
	if x ~= -1 and y ~= -1 then
		--dialog(x..':'..y, 0)
		x = x - 20
		y = y - 20
		return x, y
	end

	return -1, -1
	
end

function cp.is_click_anywhere(...)
	x, y = findImageInRegionFuzzy("click_anywhere.png", 50, 0, 0, 749, 1333, 0, 1);
	if x ~= -1 and y ~= -1 then
		toast('9999999999999999999',5)
		return true
	else
		return false
	end
	
end

--悬浮的道具使用按钮
function cp.use_item(...)
	x,y = findMultiColorInRegionFuzzy( 0x3f4773, "3|27|0x3e4772,108|29|0x3e4972,97|5|0x3d4771,44|14|0xf1dec9,66|15|0xf5e1cc,73|22|0xdac8b5,49|7|0xf5e1cc", 90, 0, 0, 1135, 639)
	if x ~= -1 and y ~= -1 then
		x = x + 30
		return x, y
	else
		return -1, -1
	end

end

--成年礼的石板
function cp.adult_ceremony(...)
	if isColor(441,197,0xcdbebb,85) and isColor(441,384,0x537e59,85) and isColor(690,391,0x688772,85) and isColor(703,182,0x717d6f,85) and isColor(689,202,0x353230,85) and isColor(450,358,0x3d3c3b,85) and isColor(729,302,0x859b83,85) then		
		return true
	elseif isColor(433,201,0xc6c1bf,85) and isColor(461,369,0x363533,85) and isColor(434,391,0x398845,85) and isColor(702,332,0x7e7675,85) and isColor(721,308,0x6d8653,85) and isColor(704,196,0xb5b5b3,85) and isColor(691,205,0x3a3836,85) and isColor(580,285,0x9d9d9c,85) then
		return true
	elseif isColor(109,711,0xffffff,85) and isColor(110,743,0xffffff,85) and isColor(87,762,0xffffff,85) and isColor(91,779,0xfefefe,85) and isColor(87,722,0xfefefe,85) and isColor(86,700,0xffffff,85) and isColor(95,687,0xffffff,85) and isColor(86,565,0xffffff,85) and isColor(102,552,0xffffff,85) and isColor(490,568,0xe0730e,85) then
		return true
	else
		return false
	end
end

--出生的迅猛龙领养
function cp.adopt_xml_pet(...)
	if isColor(647,142,0xfff0dd,85) and isColor(661,161,0xfff0dd,85) and isColor(653,195,0xdccfbd,85) and isColor(667,192,0xfff0dd,85) and isColor(669,205,0xfff0dd,85) and isColor(649,215,0xfff0dd,85) and isColor(655,247,0xfff0dd,85) and isColor(671,248,0xfeefdc,85) and isColor(670,238,0xfff0dd,85) then
		return true
	else
		return false
	end
end

--获取宠物页面
function cp.adopt_pet(...)
	if isColor(413,60,0x935430,85) and isColor(522,49,0xffe372,85) and isColor(532,51,0xfde171,85) and isColor(546,54,0xf3d86d,85) and isColor(586,48,0xffe372,85) and isColor(600,45,0xffe372,85) and isColor(729,64,0x94552e,85) and isColor(306,107,0x1e1711,85) and isColor(1111,99,0x251e17,85) and isColor(704,128,0x282522,85) then
		return true
	else
		return false
	end
end


--孵宠物蛋
function cp.pet_egg(...)
	if isColor(925,375,0x5c604a,85) and isColor(418,97,0x7f6c41,85) and isColor(949,164,0xffca5f,85) and isColor(670,236,0xbda258,85) and isColor(306,133,0x8c7442,85) and isColor(952,168,0xffc75c,85) and isColor(500,174,0x715930,85) and isColor(599,119,0x795c30,85) and isColor(601,109,0x756038,85) and isColor(644,93,0x8e7441,85) then	
		return true
	elseif isColor(511,427,0x9a7d4c,85) and isColor(683,270,0x3e332b,85) and isColor(685,226,0x4a413a,85) and isColor(176,232,0x4f3e35,85) and isColor(172,173,0x2b2017,85) and isColor(1014,561,0x503d28,85) and isColor(929,461,0x7f6847,85) and isColor(754,401,0x917653,85) and isColor(1082,115,0x241b13,85) and isColor(212,97,0x382f25,85) then
		return true
	else 
		return false
	end
end

--福利页面
function cp.wealfare_exp(...)
	if isColor(935,86,0xd2a659,85) and isColor(599,87,0xf9e0b4,85) and isColor(519,90,0xf9dcad,85) and isColor(682,138,0xcbf05f,85) and isColor(746,167,0x79a035,85) and isColor(765,161,0x89af3c,85) and isColor(519,99,0xf5cd97,85) and isColor(546,81,0xd0c2a2,85) then
		return true
	else
		return false
	end
end

--活动页面 
function cp.is_activity_ui(...)
	if isColor(25,46,0xf0be3b,85) and isColor(66,44,0x87eaf0,85) and isColor(39,536,0x7e2624,85) and isColor(142,556,0xf8e4cf,85) and isColor(362,82,0xb6322c,85) and isColor(99,62,0xf5f3db,85) and isColor(1102,67,0x94806e,85) and isColor(1104,53,0x392c24,85) then
		return true
	else
		return false
	end
end

--日常任务页面
function cp.daily_task(...)
	--寻找绿色标记和经验值符号
	--x,y = findMultiColorInRegionFuzzy( 0x5a9a34, "2|12|0x5a9c36,58|-2|0x5acc74,58|13|0x5acc74", 90, 0, 0, 1135, 639)
	x,y = findMultiColorInRegionFuzzy( 0x5a9a34, "1|7|0x5a9b34,59|9|0x5acc75,57|-4|0x5acb74,5|3|0x5a9d38,-2|3|0x5a9932,326|-32|0x92e5e9,337|-32|0xa8edee", 90,  0, 0, 1135, 639)
	--x,y = findMultiColorInRegionFuzzy( 0x5a9c36, "49|2|0x5ac86f,334|-28|0xa3ecf1,322|-24|0x8cd4db", 90,  0, 0, 1135, 639)
	return x, y
end

--日常任务委托（活动页面）
function cp.daily_task_weituo(...)
	if isColor(677,435,0x3e4773,85) and isColor(841,471,0x3e4a70,85) and isColor(772,454,0xead6c3,85) and isColor(745,444,0xd0bfad,85) and isColor(324,176,0xf9de6f,85) and isColor(289,170,0xe3c966,85) and isColor(312,163,0xfbe070,85) and isColor(297,175,0xf9de70,85) and isColor(839,168,0x9e9285,85) and isColor(839,177,0x49453e,85) then		
		return true
	else
		return false
	end
end
--日常任务鲜花（活动页面）
function cp.daily_task_flower(...)
	if isColor(815,452,0x3e4872,85) and isColor(310,161,0xdbc262,85) and isColor(288,163,0xfce070,85) and isColor(311,170,0xedd36b,85) and isColor(293,171,0xe1c865,85) and isColor(305,163,0xf3d86d,85) and isColor(322,158,0xd5bd60,85) and isColor(323,176,0xffe372,85) and isColor(293,175,0xfce071,85) and isColor(679,464,0x3e4772,85) then		
		return true
	else
		return false
	end
end
--日常远古兽王（活动页面）
function cp.daily_task_ygsw(...)
	if isColor(290,172,0xfadf70,85) and isColor(290,166,0xf3d86c,85) and isColor(318,162,0xffe372,85) and isColor(315,176,0xf3d86d,85) and isColor(339,169,0xffe372,85) and isColor(361,170,0xfee271,85) and isColor(368,175,0xfade70,85) and isColor(325,176,0xdcc463,85) and isColor(820,444,0x3d4770,85) and isColor(564,167,0x49453e,85) then		
		return true
	else
		return false
	end
end

--加美航空
function cp.jiamei_air_ui(...)
	if isColor(58,562,0x916d3e,85) and isColor(186,550,0x9d886c,85) and isColor(118,596,0xc7b393,85) and isColor(1011,595,0x69593e,85) and isColor(1094,527,0x94ae2a,85) and isColor(1030,446,0xba7840,85) and isColor(1052,453,0xa6422c,85) and isColor(881,510,0xd65223,85) then
		return true
	else
		return false
	end	
end

--成长之路
function cp.is_growing_path_ui(...)
	if isColor(567,619,0xf6da6f,85) and isColor(558,611,0xf5d56f,85) and isColor(576,611,0xfbea78,85) and isColor(567,39,0x935430,85) and isColor(548,45,0xfae0b1,85) and isColor(618,56,0xf2ca94,85) and isColor(1093,13,0xc5bfab,85) and isColor(1089,24,0xbab29a,85) then
		return true
	else
		return false
	end
end

--第一次进入图腾召唤页面
function cp.is_first_totem_summon_ui(...)
	if isColor(992,467,0xcd2106,85) and isColor(993,457,0xf34d10,85) and isColor(985,465,0xeb3410,85) and isColor(84,213,0xd8d8d7,85) and isColor(126,215,0xf6f8fa,85) and isColor(134,215,0xf6f7f7,85) and isColor(989,497,0x3d4972,85) and isColor(248,593,0x3b3328,85) then
		return true
	else
		return false
	end
end

--是否存在主角按钮
function cp.get_protagonist_button(...)
	--x, y = findMultiColorInRegionFuzzy( 0xececc7, "17|-17|0x15050c,3|-14|0x2a0d05,19|8|0xffffd7,17|-10|0xf3c1a4,3|-7|0xc89a82", 90, 578, 571, 1126, 639)
	x,y = findMultiColorInRegionFuzzy( 0x12080d, "10|17|0xf4f4ce,13|4|0xfbcaad,18|4|0xfcd1ae", 90, 578, 571, 1126, 639)
	if x ~= -1 and y ~= -1 then
		return x, y
	else
		return -1, -1
	end
end

--充值界面
function cp.charge_ui(...)
	if isColor(50,59,0x3da1d5,85) and isColor(1107,65,0x94806e,85) and isColor(1120,54,0x94806e,85) and isColor(1104,74,0x94806e,85) and isColor(1121,74,0x94806e,85) and isColor(89,61,0xf0d6a8,85) and isColor(125,72,0xf6cf98,85) and isColor(124,51,0xf9e9c1,85) and isColor(107,50,0xfdeec7,85) and isColor(36,69,0x2f81bf,85) then
		return true
	else
		return false
	end
end

--抓出生凯比
function cp.catch_pet(...)
	if isColor(269,257,0xe2be9d,85) and isColor(265,310,0xa26629,85) and isColor(506,405,0xf15314,85) and isColor(536,407,0xd64c14,85) and isColor(556,413,0xdd4e14,85) and isColor(572,401,0xf45414,85) and isColor(645,406,0xfbfbfb,85) and isColor(624,404,0xffffff,85) and isColor(839,267,0xc9766e,85) then
		return true
	else
		return false
	end
end

--长毛象公交车UI
function cp.elephant_bus_ui(...)
	if isColor(1047,560,0xdfce2f,85) and isColor(1065,562,0xf7e25c,85) and isColor(1040,596,0xc1982a,85) and isColor(1020,589,0xead54a,85) and isColor(1013,573,0xe1c732,85) and isColor(191,582,0xf6f1c2,85) and isColor(935,585,0x485e0e,85) then
		return true
	else
		return false
	end
end

--幼年红暴龙拼图界面
function cp.get_moka(...)
	if isColor(440,191,0xee9b23,85) and isColor(454,167,0x5fd1f7,85) and isColor(520,243,0xe2dbd6,85) and isColor(486,80,0xfbe4b7,85) and isColor(504,76,0xfce9be,85) and isColor(525,73,0xfdecc3,85) and isColor(638,94,0xf1cd99,85) and isColor(643,75,0xfce9bf,85) and isColor(574,88,0xf5d5a5,85) then
		return true
	else
		return false
	end
end

--藏宝图的转盘页面
function cp.treasure_map(...)
	if isColor(275,234,0x22cdee,85) and isColor(279,388,0x63e3fa,85) and isColor(523,345,0x616159,85) and isColor(599,244,0x1d8ccf,85) and isColor(941,156,0xd19126,85) and isColor(934,409,0x746348,85) and isColor(55,131,0x5b5b55,85) and isColor(833,535,0x313130,85) then
		return true
	else
		return false
	end
end

--任务的界面的流程
--1.判断是否为“前往”
function cp.tasl_ui_is_going(...)
	if isColor(973,577,0x3d4971,85) and isColor(840,549,0x3e4772,85) and isColor(838,574,0x3e4772,85) and isColor(914,566,0xe8d6c2,85) and isColor(898,563,0xefdbc7,85) and isColor(884,567,0xcdbdab,85) and isColor(889,553,0xf4e0cb,85) and isColor(905,552,0xf0ddc8,85) and isColor(913,552,0xe5d2be,85) and isColor(913,560,0xf6e2cd,85) then
		return true
	else
		return false
	end
end

--试炼页面
function cp.is_trial_ui(...)
	if isColor(567,361,0x31acf9,85) and isColor(492,339,0xffe673,85) and isColor(301,163,0xfee373,85) and isColor(262,159,0xffe673,85) and isColor(623,549,0x3e4872,85) and isColor(504,555,0x3e4872,85) and isColor(397,144,0x31a4f1,85) and isColor(911,99,0xd3aa5a,85) and isColor(909,87,0x51422a,85) then
		return true
	else
		return false
	end
end

--判断是否自动寻路中
function cp.is_auto_moving(...)
	if isColor(598,125,0xa7cf4e,85) and isColor(566,119,0xcbee60,85) and isColor(539,120,0xd5f662,85) then
		return true
	else
		return false
	end
end

--判断地图是否打开
function cp.is_map_opening(...)
	if isColor(1046,566,0x3e4871,85) and isColor(857,564,0xce9f4c,85) and isColor(1087,55,0xd2a65a,85) and isColor(1053,51,0xceb488,85) and isColor(58,589,0xbf9f73,85) and isColor(57,60,0xd1b78d,85) and isColor(845,579,0x3e4871,85) and isColor(875,565,0x8f3632,85) then
		return true
	else
		return false
	end
end

return cp
