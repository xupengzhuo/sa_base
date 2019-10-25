init(1)
require "TSLib"

cp = require("color_pick")
tp = require("text_pick")
ac = require("action")


tk = require("task")

local new_role_proc = false

--clear_game_data()



function clear_game_data(...)
	os.execute("rm -rf "..appDataPath("com.netmarble.stonemmocn"))
end

function start_game(...)
	runApp("com.netmarble.stonemmocn")
	local choosed_server = false
	while true do
		if not choosed_server then
			--狂点左下角跳过启动画面
			tap(15, 620, 50, "click.png")
			mSleep(500)
		end
		
		if cp.need_update() then
			tap(566, 435, 50, "click.png")
			mSleep(1000)
		end
		
		if cp.start_screen_announcement() then 
			--关掉游戏公告
			tap(1025, 40, 50, "click.png")
			mSleep(500)
			break
		end
	end
	mSleep(5000)

	while true do
		mSleep(500)
		if not choosed_server then
			--进入服务器选择界面
			tap(729, 455, 50, "click.png")
			mSleep(500)
		end
		
		if cp.server_exist_role() then
			new_role_proc = false
			tap(1084, 19, 50, "click.png")
			choosed_server = true
			mSleep(500)
		elseif cp.choose_server() then
			--选择游戏的一区
			mSleep(1000)
			tap(156, 254, 50, "click.png")
			mSleep(2000)
			tap(485, 116, 90, "click.png")
			mSleep(500)
			choosed_server = true
			new_role_proc = true
		end
		
		if choosed_server and cp.login_zone_1() then
			tap(560, 530,  50, "click.png")
			mSleep(100)
			break
		end
		
	end

end

function create_new_role(...)
	local need_skip_mv = true
	local try = 0
	while true do
		-- 跳过过场动画
		mSleep(500)
		if need_skip_mv then
			tap(1110, 10, 50, "click.png")
		end

		if cp.new_player() then
			-- 新玩家还是老玩家
			tap(465, 450, 50, "click.png")
			mSleep(500)
			need_skip_mv = false
		end
		
		if cp.choose_new_role() then
			-- 选择人物
			tap(800, 330, 50, "click.png")
			mSleep(500)
		end
		
		if cp.confirm_role() then
			-- 确认人物属性
			tap(980, 600, 50, "click.png")
			mSleep(500)
		end
		
		if cp.confirm_name() then
			-- 确认人物属性
			tap(980, 600, 50, "click.png")
			mSleep(500)
		end
		
		if cp.conflict_name() then
			tap(1100, 520, 50, "click.png")
			mSleep(500)
		end
	
		if cp.close_invite() then
			need_skip_mv = false
			-- 关闭邀请界面
			tap(570, 510, 50, "click.png")
			mSleep(500)
		end

		if cp.choose_hometown() then
			need_skip_mv = false
			tap(550, 480, 50, "click.png")
			mSleep(2000)
			-- 选择渔村进入游戏
			tap(220, 270, 50, "click.png")
			mSleep(2000)
			tap(960, 600, 100, "click.png")
			mSleep(2000)
			--解决进入游戏失败的问题
			return
		end
	end
end

role_info = {}
role_info.level_progress = {}
function game_loop()
	local x, y
	--每分钟检查一次等级信息
	local time_role_check = tonumber(os.date('%H%M',os.time()))
	local force_check_level = false
	local basic_setting = false
	if new_role_proc then
		role_info.level = 1
	end
	
	local ui_err_counter = 0
	while (true) do
		::level_check::
		if not role_info.level then
			force_check_level = true
		elseif role_info.level == 28 then
			toast('可以拜师了',30)
			mSleep(10000)
			goto level_check
		--28级以下的小号，如果停留时间过长（每三分钟检查一次等级，也就是9分钟不升级），说明可能游戏卡死，在地图上随便点一下
		elseif role_info.level and role_info.level < 28 and role_info.level_progress[role_info.level] > 3 then
			tap(1015, 55, 50, "click.png")
			mSleep(1000)
			tap(530, 220, 50, "click.png")
			mSleep(1000)
		end
		
		::guide::
		x,y = cp.get_guide_arraw()
		if x ~= -1 and y ~= -1 then
			tap(x, y, 50, "click.png")
			mSleep(500)
			goto guide
		end
		
		if cp.charge_ui() then
			tap(870, 560, 50, "click.png")
			mSleep(500)
			tap(1110, 60, 50, "click.png")
			mSleep(500)
		end
		
		x,y = cp.use_item()
		if x ~= -1 and y ~= -1 then
			tap(x, y, 50, "click.png")
			mSleep(500)
		end
		
		if cp.is_task_reward() then
			tap(1020, 475, 50, "click.png")
			mSleep(500)
		end

		if cp.is_main_ui() then
			ui_err_counter = 0
			if role_info.level == 1 and not basic_setting then
				ac.basic_settings()
				basic_setting = true
			end
			
			--每隔一分钟检查一下等级
			mSleep(2000)
			x,y = cp.get_protagonist_button()
			if x ~= -1 and y ~= -1 and (force_check_level or tonumber(os.date('%H%M',os.time())) - time_role_check >= 3) then
				tap(x, y, 50, "click.png")
				mSleep(1000)
				local lv = tp.get_level()
				local found_lv = false
				if lv then
					role_info.level = lv
					
					for key,value in pairs(role_info.level_progress) do
						if key == lv then
							role_info.level_progress[key] = role_info.level_progress[key] + 1
							found_lv = true
						end
					end
					
					if not found_lv then
						role_info.level_progress[lv] = 1
					end
				end
				
				
				toast('当前等级>>'..tostring(role_info.level), 1)
				tap(1000, 60, 50, "click.png")
				mSleep(500)
				force_check_level = false
			end
			tap(960, 110, 50, "click.png")
			mSleep(500)
		end
		
		if cp.is_task_ui() then
			--点击前往按钮
			tap(900, 560, 50, "click.png")
			
--			if cp.tasl_ui_is_going() then
--			--任务界面
--				tap(900, 560, 50, "click.png")
--			else
--				tap(900, 560, 50, "click.png")
--			end
			mSleep(2000)
		end
		
		--日常任务
		if cp.is_activity_ui() then
			x,y = cp.daily_task()
			if x ~= -1 and y~=-1 then
				tap(x, y, 50, "click.png")
				mSleep(500)
			end
			
			if cp.daily_task_weituo() then
				tk.daily_weituo()
			end
			
			if cp.daily_task_flower() then
				tk.daily_flower()
			end
			
			if cp.daily_task_ygsw() then
				tk.daily_ygsw()
			end

		end
		
		if cp.is_dialog_ui() then
			tap(1110, 625, 50, "click.png")
			mSleep(500)
		end
		
		if cp.is_dialog_ui_interact() then
			
			tap(1000, 420, 50, "click.png")
			mSleep(500)
		end

		if cp.is_mv_ui() then
			tap(1110, 10, 50, "click.png")
			mSleep(500)
		end
		
		if cp.is_growing_path_ui() then
			tk.growing_path_reward()
		end
		
		if cp.catch_pet() then
			ac.click_center()
			mSleep(500)
		end
		
		if cp.adult_ceremony() then
			ac.click_center()
			mSleep(500)			
		end
		
		--迅猛龙领养
		if cp.adopt_xml_pet() then
			tap(70, 650, 50, "click.png")
			mSleep(500)						
		end
		
		--任意宠物领养
		if cp.adopt_pet() then
			ac.click_center()
			mSleep(500)			
		end
		
		--宠物蛋
		if cp.pet_egg() then
			ac.click_center()
			mSleep(500)
		end
		
		--幼年红暴龙
		if cp.get_moka() then
			ac.click_center()
			mSleep(500)
		end
		
		if cp.wealfare_exp() then
			tap(950, 90, 50, "click.png")
		end
		
		if cp.is_first_totem_summon_ui() then
			tk.first_totem_summon()
			mSleep(1000)
		end
		
		--试炼页面
		if cp.is_trial_ui() then
			tap(800, 560, 50, "click.png")
			mSleep(1000)
			tap(570, 550, 50, "click.png")
			mSleep(500)
		end
	
		::elephant_bus::
		if cp.elephant_bus_ui() then
			tap(1045, 575, 2000, "click.png")
			mSleep(500)
			goto elephant_bus
		end
		
		::jiamei_air::
		if cp.jiamei_air_ui() then
			tap(1045, 525, 1800, "click.png")
			mSleep(500)
			goto jiamei_air
		end
		
		
		--退出到桌面了
		if isColor(1020,531,0x46e761,85) and isColor(1021,397,0x1db3f8,85) and isColor(782,534,0xf5142a,85) and isColor(1077,114,0x796dfd,85) and isColor(929,318,0xffffff,85) and isColor(927,353,0x93acbb,85) and isColor(1039,389,0xff3b30,85) then
			return -1
		end
		---意外打开设置界面了
		if isColor(953,555,0x733133,85) and isColor(1056,581,0x1c8cc9,85) and isColor(228,552,0x5f703e,85) and isColor(973,99,0xd4ab5a,85) and isColor(513,94,0xf7d39f,85) and isColor(195,398,0x3d4772,85) and isColor(217,411,0x35312a,85) and isColor(351,412,0x3e4872,85) then
			tap(970, 85, 50, "click.png")
			mSleep(500)
		end
		
		--连续100次循环都没有见到 main ui，说明界面卡死，需要重启游戏
		if ui_err_counter > 100 then
			return -2
		end
		ui_err_counter = ui_err_counter + 1
	end
end

::start_game_loop::
if isFrontApp("com.netmarble.stonemmocn") == 0 then
	start_game()
end

mSleep(5000)

if new_role_proc then
	create_new_role()
end

local res = game_loop()
if  res == -1 then
	goto start_game_loop
elseif res == -2 then
	closeApp("com.netmarble.stonemmocn")
	mSleep(2000)
	goto start_game_loop
end

--- debug ---

--x,y = findMultiColorInRegionFuzzy( 0x1e1e1f, "94|101|0x1e1e1f,4|82|0xd9d6cc,89|22|0x6c6a67", 90, 662, 428, 549, 546)
--x,y = findMultiColorInRegionFuzzy( 0xffffff, "40|20|0xff5b9e,80|35|0xff476b,63|57|0xff2a20", 90, 662, 428, 549, 546)