ac = {}

function ac.click(x, y)
    touchDown(x, y)
    mSleep(30)
    --touchMove(x, y) -- 安卓部分机型单点不生效的情况下可以加上此句
	toast('touched:'..x..y, 1)
    touchUp(x, y)
end

function ac.click_center(...)
	tap(565, 325, 50, "click.png")
end


function ac.weipasi_line(...)
	touch():Step(1):on(487, 210):move(430, 293):move(525, 412):move(624, 410):move(717, 379):move(595, 281):off()
end


function ac.basic_settings(...)
	--点菜单
	tap(1100, 600, 50, "click.png")
	mSleep(500)
	--点设置
	tap(920, 420, 50, "click.png")
	mSleep(500)
	--关通知
	tap(325, 150, 50, "click.png")
	mSleep(500)
	--点基础页
	tap(1035,180, 50, "click.png")
	mSleep(500)
	--同屏减少人数
	tap(370, 385, 50, "click.png")
	mSleep(500)
	--关闭宠物跟随
	tap(370, 445, 50, "click.png")
	mSleep(500)
	--关闭各种邀请	
	tap(830, 270, 50, "click.png")
	mSleep(500)
	tap(830, 325, 50, "click.png")
	mSleep(500)
	tap(830, 380, 50, "click.png")
	mSleep(500)
end

return ac