ac = {}

function ac.click(x, y)
    touchDown(x, y)
    mSleep(30)
    --touchMove(x, y) -- 安卓部分机型单点不生效的情况下可以加上此句
	toast('touched:'..x..y, 1)
    touchUp(x, y)
end
return ac