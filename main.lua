require "TSLib"
cp = require("color_pick")
--task = require("task")
--ac = require("action")

local new_role_proc = false

function clear_game_data(...)
	os.execute("rm -rf "..appDataPath("com.netmarble.stonemmocn"))
end

function start_game(...)
	runApp("com.netmarble.stonemmocn")
	local choosed_server = false
	while true do
		if not choosed_server then
			--狂点右下角跳过启动画面
			tap(100, 60, 50, "click.png")
			mSleep(200)
		end

		if cp.start_screen_announcement() then 
			--关掉游戏公告
			tap(700, 1220, 50, "click.png")
			break
		end
	end
	mSleep(5000)


	while true do
		mSleep(500)
		if not choosed_server then
			--进入服务器选择界面
			tap(220, 666, 50, "click.png")
		end
		
		if cp.server_exist_role() then
			new_role_proc = false
			tap(720, 1300, 50, "click.png")
			choosed_server = true
			mSleep(500)
		elseif cp.choose_server() then
			--选择游戏的一区
			mSleep(1000)
			tap(440, 190, 50, "click.png")
			mSleep(2000)
			tap(610, 560, 90, "click.png")
			mSleep(30)
			choosed_server = true
			new_role_proc = true
		end
		
		if choosed_server and cp.login_zone_1() then
			tap(120, 660, 90, "click.png")
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
			tap(720, 1300, 50, "click.png")
		end

		if cp.new_role() then
			-- 新玩家还是老玩家
			tap(220, 560, 50, "click.png")
			need_skip_mv = false
		end
		if cp.choose_new_role() then
			-- 选择人物
			tap(545, 545, 50, "click.png")
		end
		if cp.confirm_role() then
			-- 确认人物属性
			tap(50, 1140, 50, "click.png")
		end
		if cp.close_invite() then
			need_skip_mv = false
			-- 关闭邀请界面
			tap(150, 660, 50, "click.png")
			mSleep(500)
		end
		if cp.choose_hometown() then
			need_skip_mv = false
			-- 选择渔村进入游戏
			tap(320, 240, 60, "click.png")
			mSleep(1500)
			tap(45, 1125, 60, "click.png")
		end
	end
end

function game_loop()
	toast("开始咯！！！！")
	local x, y

	while (true) do
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
			tap(185, 1200, 50, "click.png")
			mSleep(500)
		end

		if cp.is_main_ui() then
			tap(620, 1130, 60, "click.png")
			mSleep(500)
		end
		
		if cp.is_task_ui() then
			tap(90, 1050, 60, "click.png")
			mSleep(500)
		end
		

		if cp.is_dialog_ui() then
			tap(720, 1300, 50, "click.png")
			mSleep(500)
		end
		
		if cp.is_mv_ui() then
			tap(720, 1300, 50, "click.png")
			mSleep(500)
		end
		
		if cp.is_dialog_ui_fight() then
			tap(270, 1150, 50, "click.png")
			mSleep(500)
		end
		
		if cp.adult_ceremony() then
			tap(400, 670, 50, "click.png")
			mSleep(500)			
		end
		
		if cp.adopt_pet() then
			tap(70, 650, 50, "click.png")
		end
		
		if cp.pet_egg() then
			tap(400, 660, 50, "click.png")
		end
		

	end
end


--clear_game_data()
--start_game()
--mSleep(3500)
if new_role_proc then
	create_new_role()
end

game_loop()
--- debug ---

--x,y = findMultiColorInRegionFuzzy( 0x1e1e1f, "94|101|0x1e1e1f,4|82|0xd9d6cc,89|22|0x6c6a67", 90, 662, 428, 549, 546)
--x,y = findMultiColorInRegionFuzzy( 0xffffff, "40|20|0xff5b9e,80|35|0xff476b,63|57|0xff2a20", 90, 662, 428, 549, 546)