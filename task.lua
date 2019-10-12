task = {}

--村长的嘱咐任务
--界面有各种操作引导，需要点点点
function task.czdzf()
	x, y = findImageInRegionFuzzy("czdzf.png", 90, 0, 0, 749, 1333, 0, 2);
	if x == -1 and y == -1 then
		return 
	tap(90, 1050, 60, "../res/click.png")
	mSleep(1000)
	tap(40, 1105, 60, "../res/click.png")
	mSleep(1000)
	tap(565, 1085, 60, "../res/click.png")
	mSleep(1000)
	tap(430, 770, 60, "../res/click.png")
	mSleep(1000)
	tap(630, 1120, 60, "../res/click.png")
	mSleep(1000)
	tap(675, 1180, 60, "../res/click.png")
	mSleep(1000)

end


return task