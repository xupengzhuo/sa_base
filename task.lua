tk = {}

function tk.daily_weituo(...)
	toast('开始委托任务',3)
	tap(760, 455, 50, 'click.png')
	mSleep(2000)
	local x, y 
	local buy_item = false
	while (true) do
		--等待跳出村长的委托对话框
		x,y = findMultiColorInRegionFuzzy( 0x8c6836, "168|36|0x8c6836,57|23|0xf7e3ce,61|15|0xf8e4cf,76|20|0xebd8c3,83|19|0xf2deca,61|25|0xf8e4cf,28|38|0x8c6937,94|38|0x8c6937,64|19|0x3c3225", 90, 1017, 384, 1120, 488)
		if x ~= -1 and y ~= -1 then
			tap(x, y, 50, "click.png")
			mSleep(10000)
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
		
			--选择一只狗作为奖励
			if isColor(567,348,0x796f66,85) and isColor(566,141,0xeae9e8,85) and isColor(469,150,0xffffff,85) and isColor(637,152,0xfefefe,85) and isColor(597,157,0xececeb,85) and isColor(802,543,0x413424,85) and isColor(326,523,0x5f4d35,85) and isColor(914,103,0xcea55a,85) and isColor(611,145,0xffffff,85) and isColor(607,139,0xffffff,85) then
				tap(745, 484, 50, "click.png")
				mSleep(1000)
				tap(950, 532, 50, "click.png")
				mSleep(500)
				return
			end
		end
	end
	--找到点击领取字样
	
	
--	::guide_weituo::
--	x,y = cp.get_guide_arraw()
--	if x ~= -1 and y ~= -1 then
--		tap(x, y, 50, "click.png")
--		mSleep(500)
--		goto guide_weituo
--	end
	
--	--选择一只狗作为奖励
--	if isColor(640,615,0xf8d5a2,85) and isColor(648,679,0xfae0b2,85) and isColor(658,753,0x7d776e,85) and isColor(648,1052,0xd1a65a,85) and isColor(651,1067,0x534325,85) and isColor(578,740,0xffffff,85) and isColor(651,720,0xf8e2b6,85) and isColor(658,671,0xfdeec6,85) and isColor(639,614,0xf7d4a0,85) and isColor(635,669,0xf6ce97,85) then
--		tap(130, 475, 50, "click.png")
--		mSleep(1000)
--		tap(120, 1110, 50, "click.png")
--	end
	
	
end


return tk