task = {}

function task.daily_weituo(...)
	toast('开始委托任务',3)
	tap(220, 880, 50, 'click.png')
	mSleep(2000)
	tap(270, 1200, 50, "click.png")

	while (true) do
		if cp.is_dialog_ui_weituo() then
			tap(270, 1150, 50, "click.png")
			mSleep(500)
		end
		
		::guide_weituo::
		x,y = cp.get_guide_arraw()
		if x ~= -1 and y ~= -1 then
			tap(x, y, 50, "click.png")
			mSleep(500)
			goto guide_weituo
		end
		
		if cp.daily_weituo_reward() then
			moveTo(450,1110,260,1110)
			mSleep(500)
			return
		end

	end
end

function task.growing_path_reward(...)
	::guide_weituo::
	x,y = cp.get_guide_arraw()
	if x ~= -1 and y ~= -1 then
		tap(x, y, 50, "click.png")
		mSleep(500)
		goto guide_weituo
	end
	
	--选择一只狗作为奖励
	if isColor(640,615,0xf8d5a2,85) and isColor(648,679,0xfae0b2,85) and isColor(658,753,0x7d776e,85) and isColor(648,1052,0xd1a65a,85) and isColor(651,1067,0x534325,85) and isColor(578,740,0xffffff,85) and isColor(651,720,0xf8e2b6,85) and isColor(658,671,0xfdeec6,85) and isColor(639,614,0xf7d4a0,85) and isColor(635,669,0xf6ce97,85) then
		tap(130, 475, 50, "click.png")
		mSleep(1000)
		tap(120, 1110, 50, "click.png")
	end
end


return task