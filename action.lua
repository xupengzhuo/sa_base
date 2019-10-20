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
return ac