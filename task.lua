tk = {}

function tk.daily_weituo(...)
	toast('开始委托任务',3)
	tap(760, 455, 50, 'click.png')
	mSleep(2000)
	local x, y 
	local buy_item = false
	while (true) do
		--等待跳出村长的委托对话框
		x,y = findMultiColorInRegionFuzzy( 0x8c6836, "80|30|0x8c6937,33|16|0xf7e3ce,30|23|0xf8e4cf,59|28|0xdac7b4,55|20|0xf8e4cf", 90, 832, 98, 1119, 487)
		if x ~= -1 and y ~= -1 then
			tap(x, y, 50, "click.png")
			mSleep(8000)
		end

		--上交道具的页面，点击购买按钮
		x,y = findMultiColorInRegionFuzzy( 0x5e6f3e, "125|32|0x607340,117|3|0x5e6f3e,5|28|0x60713e,42|14|0xccbba9,41|8|0xf4e0cb,52|8|0xc6b5a3,69|18|0xf8e4cf,75|22|0xd0bfac,62|19|0x262316", 90, 0, 0, 1135, 639)
		if not buy_item  and x ~= -1 and y ~= -1 then
			tap(x, y, 50, "click.png")
			mSleep(500)
		end
		
		--上交道具的页面，点击上交按钮
		x,y = findMultiColorInRegionFuzzy( 0x3e4872, "90|20|0x3e4872,32|13|0xf7e3ce,37|3|0xf6e2cd,44|13|0xf7e3ce,57|10|0xf7e3ce,57|-2|0xf2dec9,57|6|0x2d2b2e,65|7|0xb6a797", 90, 0, 0, 1135, 639)
		if buy_item and x ~= -1 and y ~= -1 then
			tap(x, y, 50, "click.png")
			mSleep(500)
		end
		
		--找到闪光的黄色左边框
		x,y = findMultiColorInRegionFuzzy( 0xedec36, "0|99|0xecec36,0|108|0xecec36,0|113|0xedec36,0|120|0xedec36", 90, 192, 151, 1129, 592)
		if x ~= -1 and y ~= -1 then
			tap(x + 20, y, 50, "click.png")
			mSleep(500)
		end

		--购买页面
		if isColor(450,545,0x3f4873,85) and isColor(453,574,0x3e4772,85) and isColor(758,68,0x51422a,85) and isColor(720,591,0x77bb55,85) and isColor(501,563,0xefdbc7,85) and isColor(472,572,0xd2c0ae,85) and isColor(561,66,0xfdedc5,85) then
			tap(570, 565, 50, "click.png")
			buy_item = true
			mSleep(500)
		end
		
		--拉杆经验获取，任务结束
		if isColor(266,346,0xf6b494,85) and isColor(839,347,0xfdc7a3,85) and isColor(898,353,0x986e32,85) and isColor(946,341,0xc9c3d3,85) and isColor(501,348,0xdac6a5,85) and isColor(601,408,0x494838,85) and isColor(552,217,0x73562f,85) and isColor(419,163,0xf57aa3,85) then
			moveTo(950, 260, 950, 400)
			mSleep(500)
			return
		end
		
--		::guide_weituo::
--		x,y = cp.get_guide_arraw()
--		if x ~= -1 and y ~= -1 then
--			tap(x, y, 50, "click.png")
--			mSleep(500)
--			goto guide_weituo
--		end
		
--		if cp.daily_weituo_reward() then
--			moveTo(450,1110,260,1110)
--			mSleep(500)
--			return
--		end

	end
end

function tk.growing_path_reward(...)
	local x, y 
	local ui_err_counter = 0

	while (true) do
		--找到红点
		x,y = findMultiColorInRegionFuzzy( 0xef7841, "4|4|0xfb3f07,8|8|0xe73008,1|8|0xf2360e", 90, 0, 0, 1135, 639)		
		if x ~= -1 and y ~= -1 then
			x = x - 30
			y = y + 30
			tap(x, y, 50, "click.png")
			mSleep(500)
		end
		
		--找星星确定背景
		if isColor(95,31,0x5f7489,85) and isColor(839,551,0x5b687a,85) and isColor(997,34,0x030810,85) and isColor(201,488,0x334163,85) and isColor(36,609,0x060810,85) and isColor(1095,13,0xb9b29f,85) and isColor(1100,30,0x352b29,85) and isColor(479,47,0x080b19,85) then
			tap(210, 100, 50, "click.png")
			mSleep(1000)
			tap(210, 250,  50, "click.png")
			mSleep(1000)
			tap(210, 400, 50, "click.png")
			mSleep(1000)
			tap(950, 170, 50, "click.png")
			mSleep(1000)
			tap(950, 320, 50, "click.png")
			mSleep(1000)
			tap(950, 470, 50, "click.png")
			mSleep(1000)
			tap(585, 565, 50, "click.png")
		end
		
		--连线的界面，取墨水盒
		if isColor(304,589,0x267692,85) and isColor(316,580,0x46ddea,85) and isColor(320,567,0x61fbfd,85) and isColor(330,556,0x28b0cd,85) and isColor(336,549,0x75736c,85) and isColor(351,533,0x4e514b,85) and isColor(360,524,0x9a9a92,85) then
			--随便划一下，消除手指提示的干扰
			moveTo(139, 227, 126, 337)
			--韦帕斯的特征和连接路径
			arr_wps = {
				{374,264,0x2a78ab},
				{357,275,0x296f99},
				{614,380,0x2876aa},
				{470,420,0x2771a2},
				{577,430,0x256b9b},
				{526,265,0x2975a8},
				------下面是连接点的黑块------
				{485,210,0x000101},
				{429,291,0x000001},
				{524,408,0x000001},
				{621,409,0x000001},
				{723,377,0x000101},
				{597,277,0x000101},
				{484,207,0x000101},
			}
			
			x,y = findMultiColorInRegionFuzzyByTable(arr_wps, 90, 0, 0, 1135, 639)
			if x ~= -1 and y ~= -1 then
				ac.weipasi_line()
			end
		end
		
					
		--选择一只狗作为奖励
		if isColor(892,85,0xd2a957,85) and isColor(395,339,0x2fa9f5,85) and isColor(734,545,0x30abfa,85) and isColor(557,512,0x302c2a,85) and isColor(794,514,0x78664d,85) and isColor(402,547,0x30adfc,85) then
			tap(745, 484, 50, "click.png")
			mSleep(1000)
			tap(950, 532, 50, "click.png")
			mSleep(500)
			return
		end
		if ui_err_counter > 100 then
			return -2
		end
		ui_err_counter = ui_err_counter + 1

	end

end
	
function tk.first_totem_summon(...)
	local x, y
	mSleep(2000)
	tap(420, 420, 50, "click.png")
	mSleep(1000)
	tap(185, 560, 50, "click.png")
	mSleep(1000)
	tap(465, 290, 50, "click.png")
	mSleep(1000)
	tap(1000, 60, 50, "click.png")
	mSleep(1000)

	local ui_err_counter = 0
	
	while (true) do
		::guide::
		x,y = cp.get_guide_arraw()
		if x ~= -1 and y ~= -1 then
			tap(x, y, 50, "click.png")
			mSleep(500)
			goto guide
		end
		
		if cp.is_task_reward() then
			tap(1020, 475, 50, "click.png")
			mSleep(500)
		end
		
		--培养图腾
		if isColor(173,461,0x3e4772,85) and isColor(484,495,0x3d4972,85) and isColor(316,473,0xebd9c4,85) and isColor(458,406,0x1a1514,85) and isColor(298,589,0x1e343a,85) and isColor(348,590,0x1e343a,85) then
			tap(330, 480, 50, "click.png")
			mSleep(3000)
			tap(550, 550, 50, "click.png")
			mSleep(3000)
			tap(300, 550, 50, "click.png")
			mSleep(3000)
			tap(935, 85, 50, "click.png")
			mSleep(3000)
			tap(1000, 60, 50, "click.png")
			return
		end
		if ui_err_counter > 100 then
			return -2
		end
		ui_err_counter = ui_err_counter + 1

	end
end


function tk.daily_task_ygsw(...)
	local x, y
	local in_place
	local location, target_index =  nil, 1
	local task_counter = 0
	local team_ready = false
	local finding_target = false
	local ygsw_data_struct = {
			syns={
				{
					--下方数字依次表示迷你地图上的点击坐标x,y，主界面的怪物点击坐标x，y
					630, 415, 665, 345
				},
				{
					657, 390, 680, 340
				},
				{
					
					315, 412, 480, 265
				},
				{
					345, 500, 485, 305
				}
			}
		}
	toast('开始远古兽王任务',1)
	mSleep(1000)
	tap(760, 455, 50, 'click.png')
	mSleep(3000)
	while true do
		::go_hunting::
		if not in_place then
			--找到推荐的兽王地图并前往
			x,y = findMultiColorInRegionFuzzy( 0xa0302e, "39|9|0xbb4444,29|-3|0xfdf2ca,35|7|0xe9d3b0,16|-5|0xfbefc7,36|2|0xf4e4be,52|13|0x3e4772", 90, 0, 0, 1135, 639)
			if x ~= -1 and y ~= -1 then
				in_place = true
				x = x + 100
				y = y + 40
				tap(x, y, 50, "click.png")
				mSleep(3000)
			else
				goto go_hunting
			end	
			
		end
		
		--主界面的时候，创建队伍/打开地图
		if cp.is_main_ui() and not cp.is_auto_moving() and not location and not team_ready then
			dialog('1 time')
			--没组队就组队
			if not team_ready then
				ut.team_assemble()
				team_ready = true
			end
			
			--确认地图位置
			if not location then
				ac.open_map()
				mSleep(500)
				if isColor(250,159,0x77c604,85) and isColor(197,268,0x77c606,85) and isColor(292,292,0x74c605,85) and isColor(271,531,0x75c606,85) and isColor(614,508,0x74c602,85) and isColor(646,276,0x76c504,85) and isColor(485,142,0x75c606,85) and isColor(926,566,0x3e4871,85) and isColor(857,556,0xddb967,85) then
					location = "syns"
				end
				ac.close_map()
			end			
		end
		
		if task_counter <5 and not finding_target then
			ac.open_map()
			tap(ygsw_data_struct[location][target_index][1], ygsw_data_struct[location][target_index][2], 50, "click.png")
			mSleep(500)
			ac.close_map()
			
			mSleep(1000)
			toast('正在寻路，当前任务：'..task_counter..'...当前寻找次数：'..target_index,1)
			finding_target = true
		end
		
		--没有移动说明已经到达位置，点击怪物
		if not cp.is_auto_moving() and not cp.is_map_opening()  then
			tap(ygsw_data_struct[location][target_index][3],ygsw_data_struct[location][target_index][4], 50, "click.png")
			mSleep(500)
			if isColor(1048,197,0x743131,85) and isColor(1053,280,0x3e4872,85) and isColor(1048,349,0x3e4872,85) and isColor(1048,406,0x8c6936,85) and isColor(886,201,0xf8e4cf,85) and isColor(910,266,0x3e4872,85) and isColor(908,349,0x3e4872,85) and isColor(904,415,0x8c6937,85) then
				toast('找到怪物，开始战斗',3)
				task_counter = task_counter + 1
				ac.click_center()
			else
				target_index = target_index  % #ygsw_data_struct[location] + 1
			end
			finding_target = false
		end
		
		if task_counter == 5 then
			dialog('任务完成')
		end
		--如果地图位置处于萨伊纳斯平原，打开地图，
--		if isColor(250,159,0x77c604,85) and isColor(197,268,0x77c606,85) and isColor(292,292,0x74c605,85) and isColor(271,531,0x75c606,85) and isColor(614,508,0x74c602,85) and isColor(646,276,0x76c504,85) and isColor(485,142,0x75c606,85) and isColor(926,566,0x3e4871,85) and isColor(857,556,0xddb967,85) then
--			--地图上找怪打
--			while (true) do				
--				--正在移动
--				if not cp.is_auto_moving()
--					tap(625, 420, 50, "click.png")
--					mSleep(500)
--					tap(1090, 40, 50, "click.png")
--				end
					
				
--			end
							
			
--		end
	end
end
return tk