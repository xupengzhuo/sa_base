init(1)
require "TSLib"

cp = require("color_pick")
tp = require("text_pick")
ac = require("action")


tk = require("task")

local new_role_proc = false

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
			mSleep(200)
		end
		
		if cp.need_update() then
			tap(566, 435, 50, "click.png")
		end
		
		if cp.start_screen_announcement() then 
			--关掉游戏公告
			tap(1025, 40, 50, "click.png")
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
			-- 选择渔村进入游戏
			tap(220, 270, 50, "click.png")
			mSleep(1500)
			tap(960, 600, 50, "click.png")
		end
	end
end

role_info = {}

function game_loop()
	toast("开始咯！！！！")
	local x, y
	--每分钟检查一次等级信息
	local time_role_check = os.date('%H%M',os.time())
	local force_check_level = false
	while (true) do
		if not role_info.level then
			force_check_level = true
		end
		
		::guide::
		x,y = cp.get_guide_arraw()
		if x ~= -1 and y ~= -1 then
			tap(x, y, 50, "click.png")
			mSleep(500)
			goto guide
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
			--每隔一分钟检查一下等级
			mSleep(2000)
			x,y = cp.get_protagonist_button()
			if x ~= -1 and y ~= -1 and (force_check_level or time_role_check ~= os.date('%H%M',os.time())) then
				tap(x, y, 50, "click.png")
				mSleep(500)
				role_info.level =  tp.get_level()
				
				toast('当前等级>>'..tostring(role_info.level), 5)
				tap(1000, 60, 50, "click.png")
				mSleep(500)
				force_check_level = false
			end
			tap(960, 110, 50, "click.png")
			mSleep(500)
		end
		
		if cp.is_task_ui() then
			tap(900, 560, 50, "click.png")
			mSleep(5000)
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
			dialog('fffff', 3)
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
		
		if cp.totem_summon_auto_equip() then
			tap(185, 1080, 50, "click.png")
			mSleep(1000)
		end
		
		if cp.charge_ui() then
			tap(870, 560, 50, "click.png")
			mSleep(500)
			tap(1110, 60, 50, "click.png")
		end
		
		::elephant_bus::
		if cp.elephant_bus_ui() then
			tap(1045, 575, 2000, "click.png")
			mSleep(500)
			goto elephant_bus
		end
		
		::jiamei_air::
		if cp.jiamei_air_ui() then
			tap(1045, 525, 2500, "click.png")
			mSleep(500)
			goto jiamei_air
		end
	end
end


--clear_game_data()
if isFrontApp("com.netmarble.stonemmocn") == 0 then
	start_game()
end

mSleep(3500)

if new_role_proc then
	create_new_role()
end

game_loop()
--- debug ---

--x,y = findMultiColorInRegionFuzzy( 0x1e1e1f, "94|101|0x1e1e1f,4|82|0xd9d6cc,89|22|0x6c6a67", 90, 662, 428, 549, 546)
--x,y = findMultiColorInRegionFuzzy( 0xffffff, "40|20|0xff5b9e,80|35|0xff476b,63|57|0xff2a20", 90, 662, 428, 549, 546)