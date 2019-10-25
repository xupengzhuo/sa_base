ut = {}

function ut.team_assemble(...)
	
	if not cp.is_main_ui() then
		return 
	end
	tap(1050, 105, 50, "click.png")
	mSleep(1000)
	--未创建队伍，在主界面点创建
	if isColor(1078,352,0x3e4872,85) and isColor(962,347,0x3e4872,85) and isColor(1057,233,0x8c6937,85) and isColor(981,232,0x8c6937,85) and isColor(990,301,0x5d452d,85) and isColor(1042,299,0x5d452d,85) then
		tap(1015, 345, 50, "click.png")
		mSleep(1000)
	--队伍页面，但是还没创建队伍
	elseif isColor(1009,521,0xa04646,85) and isColor(963,546,0x3e4872,85) and isColor(865,540,0x3e4872,85) and isColor(780,546,0x5e6f3e,85) and isColor(684,543,0x60713e,85) and isColor(654,542,0xf4e4cf,85) and isColor(643,542,0x60713e,85) then
		tap(895, 540, 50, "click.png")
		mSleep(1000)
	--已经创建好队伍
	elseif isColor(952,544,0x753132,85) and isColor(874,544,0x743131,85) and isColor(1063,520,0xa44949,85) and isColor(678,548,0x5d452d,85) and isColor(768,544,0x5d452d,85) and isColor(788,525,0xffff00,85) then
		mSleep(500)
	else
		tap(1050, 105, 50, "click.png")
		mSleep(1000)
	end
	--队伍已经齐了就返回，判断队员名字右侧的小绿点
	if isColor(966,489,0x7cb559,85) and isColor(785,488,0x7cb559,85) and isColor(604,489,0x7cb559,85) and isColor(423,490,0x7cb559,85) then
		tap(980, 80, 50, "click.png")
		mSleep(500)
		return
	end
	
	for i = 0,3 do 
		--点击雇佣标签
		tap(1035, 520, 50, "click.png")
		mSleep(500)
		--默认选钻石
		tap(865, 535, 50, "click.png")
		mSleep(500)
		--默认选男的
		tap(865, 535, 50, "click.png")
		mSleep(500)
		--默认选斧子
		tap(865, 535, 50, "click.png")
		mSleep(500)
		--选输出宠
		tap(770, 395, 50, "click.png")
		mSleep(500)
		--确认试用
		tap(865, 535, 50, "click.png")
		mSleep(500)
	end
	
	tap(980, 80, 50, "click.png")
	mSleep(500)
	return
end


return ut