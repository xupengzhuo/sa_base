
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

--公告画面
function cp.start_screen_announcement(...)
	if (isColor(  85,  105, 0xffcc00, 85) and 
		isColor( 690,  107, 0xffcc00, 85) and 
		isColor(  76, 1217, 0xffcc00, 85) and 
		isColor( 706, 1225, 0xffffff, 85)) then
		return true
	else
		return false
	end
end

--选区画面（无角色)
function cp.choose_server(...)		
	if (isColor(  47,  937, 0xf76263, 85) and 
		isColor(  45, 1036, 0xf7c163, 85) and 
		isColor(  48, 1136, 0x92ba5c, 85) and 
		isColor(  47, 1235, 0x7f7f7f, 85) and 
		isColor( 592,   52, 0xf5d83e, 85) and 
		isColor( 656,  313, 0xcdac36, 85) and 
		isColor( 587,  312, 0xe3c73e, 85) and 
		isColor( 655,   54, 0xf1c83a, 85) and 
		isColor( 622,  283, 0xfee272, 85) and 
		isColor( 613,  184, 0xfde171, 85)) then
		return true
	else
		return false
	end
end

--选取画面是否已经有角色存在
function cp.server_exist_role(...)
	x,y = findMultiColorInRegionFuzzy( 0x8984ad, "2|13|0xfff5b5,30|29|0x745029,57|11|0xc3c6cd,49|51|0xf4efea,5|54|0xf9a274,1|42|0xffda97,17|97|0x798386,63|6|0xbdbdcd,-1|24|0xdfd8bf", 90, 581, 47, 661, 320)
	
	if x ~= -1 and y ~= -1 then
		return true
	else
		return false
	end
end
--登陆画面
function cp.login_zone_1(...)
	if (isColor( 112,  600, 0x584224, 85) and 
		isColor( 112,  603, 0xf4eab9, 85) and 
		isColor( 112,  633, 0xa46d2c, 85) and 
		isColor( 112,  637, 0xfbf1bf, 85) and 
		isColor( 112,  659, 0x40321e, 85) and 
		isColor( 138,  644, 0xfef4c1, 85) and 
		isColor( 214,  675, 0xf6f6f6, 85) and 
		isColor( 210,  683, 0x241e16, 85) and 
		isColor( 212,  695, 0x736f6a, 85) and 
		isColor( 219,  716, 0x47433c, 85)) then		
		return true
	else
		return false
	end
end

--新角色提示窗
function cp.new_role(...)
	if (isColor( 507,  605, 0xd76377, 85) and 
		isColor( 520,  709, 0xc65869, 85) and 
		isColor( 237,  617, 0x5f703e, 85) and 
		isColor( 224,  733, 0x3e4872, 85) and 
		isColor( 483,  763, 0xa1cbeb, 85) and 
		isColor( 563,  645, 0xffffea, 85) and 
		isColor( 432,  530, 0x935430, 85) and 
		isColor( 432,  636, 0xffe372, 85) and 
		isColor( 453,  697, 0xffe372, 85) and 
		isColor( 432,  695, 0xffe372, 85)) then
		return true
	else
		return false
	end
end

--选择人物
function cp.choose_new_role(...)
	if (isColor( 102,   12, 0x96b4b0, 85) and 
		isColor(  31,  640, 0xffffff, 85) and 
		isColor( 110, 1143, 0x8aa4a5, 85) and 
		isColor(  19,  503, 0x1f2418, 85) and 
		isColor( 382,  578, 0x7e3121, 85) and 
		isColor( 280,  842, 0xded2b9, 85) and 
		isColor( 242,  882, 0x598a54, 85) and 
		isColor( 395,   14, 0x253f60, 85) and 
		isColor( 299,  169, 0xc9c0b1, 85) and 
		isColor( 305,  162, 0xe1ded1, 85)) then
		return true
	else
		return false
	end
end

--确认属性
function cp.confirm_role(...)
	if (isColor(  28,  983, 0x63733d, 85) and 
		isColor(  28, 1310, 0x61713e, 85) and 
		isColor(  71, 1309, 0x62723b, 85) and 
		isColor(  72,  987, 0x5f703c, 85) and 
		isColor(  50, 1013, 0x5e713e, 85) and 
		isColor(  48, 1077, 0x60713e, 85) and 
		isColor(  45, 1202, 0x60713e, 85) and 
		isColor(  47, 1273, 0x60713e, 85) and 
		isColor(  25,  830, 0xffffff, 85) and 
		isColor(  10,  825, 0xfefefe, 85)) then
		return true
	else
		return false
	end
end
--关闭邀请界面
function cp.close_invite(...)
	if (isColor( 130,  542, 0x3b4875, 85) and 
		isColor( 172,  541, 0x3e4872, 85) and 
		isColor( 170,  790, 0x3d4872, 85) and 
		isColor( 136,  789, 0x3e4872, 85) and 
		isColor( 442,  559, 0x935530, 85) and 
		isColor( 449,  757, 0x945530, 85) and 
		isColor( 454,  648, 0xffe372, 85) and 
		isColor( 452,  702, 0xffe372, 85) and 
		isColor( 493,  749, 0x9bc3e5, 85) and 
		isColor( 503,  604, 0x9f4454, 85)) then
		return true
	else
		return false
	end
end

--选择出生地界面
function cp.choose_hometown()
	if (isColor(  26,  959, 0x3e4773, 85) and 
		isColor(  68, 1286, 0x3e4672, 85) and 
		isColor(  64,  953, 0x181a23, 85) and 
		isColor(  19, 1288, 0x1d1f2b, 85) and 
		isColor( 439, 1192, 0x4b2610, 85) and 
		isColor( 440, 1031, 0x4a2610, 85) and 
		isColor(  11,  744, 0x413d3a, 85) and 
		isColor(  27,  778, 0xffffff, 85) and 
		isColor(  11,  774, 0xffffff, 85)) then
		return true
	elseif (isColor( 382,  843, 0xa9d201, 85) and 
		isColor( 629,  879, 0xb7e307, 85) and 
		isColor( 685,  497, 0xb9e509, 85) and 
		isColor( 431,  229, 0xa7d001, 85) and 
		isColor( 192, 1141, 0xcab665, 85) and 
		isColor( 329,  255, 0xd52a12, 85) and 
		isColor( 224,  749, 0x9aaf34, 85) and 
		isColor( 247,  435, 0xb35d18, 85) and 
		isColor(  30,  643, 0xfcfcfc, 85) and 
		isColor(  13,  764, 0xfefefe, 85)) then
		return true
	else
		return false
	end
end


--判断是否处于游戏主界面中
function cp.is_main_ui()
	--找右下角的菜单按钮
	local found_menu = false
	x,y = findMultiColorInRegionFuzzy( 0xffffff, "-3|13|0xc4c4c4,0|14|0xffffff,10|16|0xd9d8d8,11|22|0xffffff,23|6|0xffffff,22|14|0xf9f8f8,23|21|0xffffff,21|21|0xdbd9d9,23|12|0xffffff", 90, 11, 1253, 73, 1318)
	if x ~= -1 and y ~= -1 then
		found_menu = true
	end
	--找右上角的地图图标
	local found_map = false
	x,y = findMultiColorInRegionFuzzy( 0xe3ca95, "15|13|0x897256,17|23|0x9c4629,16|31|0x978464,17|44|0xb69264,26|30|0xa6492b,29|23|0xe1cfa3,21|5|0xdac396,24|32|0xeee1c6,13|24|0x7e4721", 90, 659, 1079, 713, 1326)
	if x ~= -1 and y ~= -1 then
		found_map = true
	end
	return found_menu and found_map
end

--判断是否处于任务界面中
function cp.is_task_ui()
	x,y = findMultiColorInRegionFuzzy( 0xfee272, "105|-56|0xf7d09b,127|-4|0xfdecc2,117|-41|0xfadfb1,42|237|0x7d7e7c,50|507|0xad8053,60|252|0xdedcda,-7|-25|0x5a422b,-7|-59|0x5a442c,103|-20|0xe9c490", 90, 570, 64, 734, 664)
	if x ~= -1 and y ~= -1 then
		return true
	else
		return false
	end
	
end

--判断是否处于对话界面中
function cp.is_dialog_ui()
	--对话框有不同的模式
	local arr1 = {
		{   36, 1041, 0x2c1d0b},
		{   37, 1041, 0x3c2406},
		{   38, 1041, 0xa78e5e},
		{   39, 1041, 0xbfa571},
		{   54, 1041, 0xaa9a82},
		{   55, 1041, 0x634e36},
		{   56, 1041, 0x412b1e},
		{   58, 1026, 0xc0b4a3},
		{   57, 1026, 0x8c7c68},
		{   56, 1056, 0x5c4a35},
		{   57, 1056, 0x8b7b66},
		{   58, 1056, 0xc0b4a3},
	}
	
	local arr2 = {
		{   39, 1083, 0xbda470},
		{   38, 1083, 0x8d7549},
		{   37, 1083, 0x3c2407},
		{   59, 1095, 0xe0d7ca},
		{   60, 1095, 0xb4a898},
		{   61, 1095, 0x6e5c47},
		{   53, 1083, 0xdccdb4},
		{   54, 1083, 0xc4b69d},
		{   55, 1083, 0x645037},
		{   58, 1068, 0xdad0c1},
	}
	x,y = findMultiColorInRegionFuzzyByTable(arr1, 70, 5, 1000, 122, 1105)

	if x ~= -1 and y ~= -1 then
		return true	
	end
	x,y = findMultiColorInRegionFuzzyByTable(arr2, 70, 5, 1000, 122, 1105)

	if x ~= -1 and y ~= -1 then
		return true	
	end
	
	return false
end

function cp.is_dialog_ui_fight()
	local found_arrow = false
--	x,y = findMultiColorInRegionFuzzy( 0x5a411e, "1|0|0xb79e6b,21|15|0xd1c7b8,20|15|0xa49583,19|15|0x6d5b46,16|1|0xdaccb4,17|1|0x928068,18|1|0x614c34", 90, 0, 1242, 162, 1292)	
--	if x ~= -1 and y ~= -1 then
--		found_arrow = true	
--	end
	local found_button = false
	if (isColor( 240, 1007, 0x73302f, 85) and 
		isColor( 238, 1005, 0x6e2f2d, 85) and 
		isColor( 239, 1290, 0x723d3e, 85) and 
		isColor( 238, 1291, 0x492a2c, 85) and 
		isColor( 239, 1292, 0x2a1918, 85) and 
		isColor( 302, 1290, 0x6b322f, 85) and 
		isColor( 303, 1291, 0x462620, 85) and 
		isColor( 304, 1291, 0x2c1f17, 85) and 
		isColor( 300, 1003, 0x713131, 85) and 
		isColor( 300, 1002, 0x312323, 85)) then
		found_button = true
	end
--	dialog(tostring(found_button), 0)

--	return found_arrow and found_button
	return found_button

end	
	
--判断是否处于过场动画中
function cp.is_mv_ui()
	local arr = {
		{  704, 1248, 0x5d523c},
		{  705, 1250, 0x3c342a},
		{  703, 1271, 0x56473c},
		{  704, 1271, 0x382f2c},
		{  718, 1271, 0xb1aa92},
		{  717, 1271, 0x504a3c},
		{  716, 1271, 0x2b231c},
		{  738, 1250, 0x9e9889},
		{  739, 1250, 0x696357},
		{  740, 1250, 0x2e271f},
		{  727, 1319, 0x43362d},
		{  727, 1318, 0x2f2b22},
		{  727, 1317, 0xaba38e},
		{  734, 1313, 0x39342b},
		{  734, 1312, 0x8b8677},
		{  734, 1311, 0xd2cebb},
		{  734, 1310, 0xa09d8f},
		{  721, 1311, 0xaca48c},
		{  721, 1312, 0x77705c},
		{  721, 1313, 0x241e13},
	}
	--判断右下角的返回文字和箭头
	x,y = findMultiColorInRegionFuzzyByTable(arr, 90, 697, 1212, 749, 1332)
	if x ~= -1 and y ~= -1 then
		return true
	end
	
	--取色列表(2)
	arr = {
		{729,1316,0xc5bdaa},
		{725,1313,0xb4aa94},
		{735,1311,0xc0b4ae},
		{731,1315,0xc1bba8},
		{728,1294,0xbab39e},
		{736,1294,0xd9d3bf},
		{738,1279,0xc7c0af},
		{722,1254,0xb1aa94},
		{731,1255,0xcdc6b1},
		{723,1269,0x322c22},
	}
	x,y = findMultiColorInRegionFuzzyByTable(arr, 90, 697, 1212, 749, 1332)
	if x ~= -1 and y ~= -1 then
		return true
	end
	return false
end

function cp.is_task_reward()
	x,y = findMultiColorInRegionFuzzy( 0x60713e, "27|-14|0x60713e,46|-207|0x60713e,22|-141|0x60713e,16|-102|0xd7c5b2,16|-109|0xf6e2cd,23|-119|0xf5e1cc,26|-94|0xebd8c4,20|-85|0x302a1f,31|-84|0xd6c4b1", 90, 148, 1075, 234, 1316)
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
	x,y = findMultiColorInRegionFuzzy( 0xa77725, "2|45|0xb7721b,14|43|0xffe997,19|37|0xd49e2e,18|12|0xc78d26,39|-16|0xe2a93e,59|2|0xfde66c,39|26|0xddbe67,26|35|0xdea531,37|44|0xf1c35b", 90, 0, 0, 749, 1333)	
	if x ~= -1 and y ~= -1 then
		x = x - 20
		y = y + 60
		return x, y
	end
	
	--识别四点钟方向的箭头(2)
	x,y = findMultiColorInRegionFuzzy( 0xeab036, "4|20|0xfbe05c,13|25|0xfed04c,17|27|0xe8af2f,23|23|0xe4aa34,40|5|0xffc742,52|-15|0xfdcd48,38|-20|0xffc641,35|-28|0xe9a835,37|30|0xfeca4d", 90, 0, 0, 749, 1333)
	if x ~= -1 and y ~= -1 then
		x = x - 20
		y = y + 60
		return x, y
	end

	
	--识别八点钟方向的箭头
	x,y = findMultiColorInRegionFuzzy( 0xc99741, "4|7|0xfde888,7|17|0xe8af32,5|24|0xfcbb3b,1|40|0xfcd352,35|49|0xfbc83c,42|55|0xffeb6f,56|35|0xf5c24c,28|7|0xffd179,44|-3|0xd1972c", 90, 0, 0, 749, 1333)
	if x ~= -1 and y ~= -1 then
		x = x - 20
		return x, y
	end
	--识别两点钟方向的箭头(1)
	x,y = findMultiColorInRegionFuzzy( 0xe1a032, "-1|-13|0xfbd866,-4|-15|0xdba532,-37|-55|0xffee72,-40|-43|0xf2b441,-47|-33|0xfecb44,-25|-8|0xffd385,-28|1|0xe0a635,4|-39|0xe4bd4e,-13|-33|0xfcdb65", 90, 0, 0, 749, 1333)
	if x ~= -1 and y ~= -1 then
		--dialog(x..':'..y, 0)
		x = x + 20
		y = y + 20
		return x, y
	end
	--识别两点钟方向的箭头(2)
	x,y = findMultiColorInRegionFuzzy( 0xfce46a, "35|41|0xf8d35e,38|21|0xeebb41,38|50|0xffea8c,6|50|0xf7ba40,13|34|0xfabb44,-13|18|0xfbc642,-5|8|0xf2b039,15|33|0xfbbb41,36|28|0xfebc3f", 90, 0, 0, 749, 1333)
	if x ~= -1 and y ~= -1 then
		--dialog(x..':'..y, 0)
		x = x + 40
		y = y + 60
		return x, y
	end
	
	--识别十点钟方向的箭头
	x,y = findMultiColorInRegionFuzzy( 0xffcf4b, "24|2|0xf5c64e,38|3|0xebba3f,34|10|0xfcdb5c,32|26|0xffd27c,15|31|0xfbb93d,1|42|0xfabc3c,-9|40|0xedae3b,-13|39|0xf6da61,41|41|0xe3a72e", 90, 0, 0, 749, 1333)
	if x ~= -1 and y ~= -1 then
		--dialog(x..':'..y, 0)
		x = x + 20
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
	x,y = findMultiColorInRegionFuzzy( 0x3c4a70, "1|43|0x3c4672,2|134|0x3d496f,41|133|0x3d4a74,19|78|0xf8e4cf,15|57|0xf1dec9,26|48|0xf8e4cf,30|86|0xf2dfca", 90, 0, 0, 749, 1333)
	if x ~= -1 and y ~= -1 then
		x = x + 20
		y = y + 60
		return x, y
	else
		return -1, -1
	end

end

--成年礼的石板
function cp.adult_ceremony(...)
	if isColor(319,538,0x373534,85) and isColor(354,534,0x939393,85) and isColor(407,663,0x858584,85) and isColor(325,809,0x484543,85) and isColor(425,817,0x989897,85) and isColor(516,743,0x8f8f8e,85) and isColor(459,606,0x6f6c6c,85) and isColor(518,521,0xd2c2c0,85) and isColor(447,530,0x907273,85) and isColor(303,777,0x6ea46f,85) then
		return true
	elseif isColor(317,543,0x343432,85) and isColor(508,808,0x383634,85) and isColor(666,686,0xfeefc7,85) and isColor(662,610,0xfdebc1,85) and isColor(498,813,0xc4c3c0,85) and isColor(325,812,0x4b4847,85) and isColor(294,811,0x637f6e,85) and isColor(532,842,0xa4bda2,85) and isColor(344,497,0x79983e,85) then
		return true
	elseif isColor(109,711,0xffffff,85) and isColor(110,743,0xffffff,85) and isColor(87,762,0xffffff,85) and isColor(91,779,0xfefefe,85) and isColor(87,722,0xfefefe,85) and isColor(86,700,0xffffff,85) and isColor(95,687,0xffffff,85) and isColor(86,565,0xffffff,85) and isColor(102,552,0xffffff,85) and isColor(490,568,0xe0730e,85) then
		return true
	else
		return false
	end
end

--出生的迅猛龙领养
function cp.adopt_pet(...)
	if isColor(647,142,0xfff0dd,85) and isColor(661,161,0xfff0dd,85) and isColor(653,195,0xdccfbd,85) and isColor(667,192,0xfff0dd,85) and isColor(669,205,0xfff0dd,85) and isColor(649,215,0xfff0dd,85) and isColor(655,247,0xfff0dd,85) and isColor(671,248,0xfeefdc,85) and isColor(670,238,0xfff0dd,85) then
		return true
	else
		return false
	end
end

--孵宠物蛋
function cp.pet_egg(...)
	if isColor(322,549,0x6d5b3d,85) and isColor(311,585,0x715c3b,85) and isColor(364,455,0x76643f,85) and isColor(602,1120,0xfab44f,85) and isColor(507,1144,0x564827,85) and isColor(394,1184,0x493d22,85) and isColor(595,306,0x907a48,85) and isColor(595,345,0x997f49,85) and isColor(629,541,0x7e6b40,85) and isColor(621,586,0x7d6a40,85) then
		return true
	elseif isColor(152,925,0x846b4a,85) and isColor(243,1011,0x8c7350,85) and isColor(239,701,0x8a6e3e,85) and isColor(561,178,0x211810,85) and isColor(493,157,0x534339,85) and isColor(497,218,0x392d28,85) and isColor(499,155,0x726250,85) and isColor(611,1225,0x211810,85) and isColor(464,815,0x4a403c,85) and isColor(192,1256,0x524128,85) then
		return true
	else 
		return false
	end
end

--活动页面 
function cp.is_activity_ui(...)
	if isColor(121,36,0x812927,85) and isColor(123,61,0x9a3b39,85) and isColor(96,66,0x2c2214,85) and isColor(595,31,0xfe9fbc,85) and isColor(662,155,0xf9daa8,85) and isColor(389,54,0xb1b7b9,85) and isColor(204,52,0xe3ddd5,85) and isColor(226,24,0x7799d6,85) and isColor(508,61,0xb6b6ad,85) and isColor(90,259,0x5d462d,85) then
		return true
	else
		return false
	end
end
return cp
