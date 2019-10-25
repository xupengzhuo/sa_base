--自动挖藏宝图
init(1)
require "TSLib"
cp = require("color_pick")

function game_loop()
	toast('开始连续挖宝啦',3)
	local x, y	
	while (true) do		
		x,y = cp.use_item()
		if x ~= -1 and y ~= -1 then
			tap(x, y, 50, "click.png")
			mSleep(1000)
		end
		
		if cp.treasure_map() then
			tap(1000, 300, 50, "click.png")
			mSleep(500)
		end
	end
end

game_loop()