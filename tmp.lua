require "TSLib"
cp = require("color_pick")


--dialog(tostring(cp.is_task_ui()), 0)
--dialog(1111111111111,1)

----箭头调试
--local cnt = 0
--while (true) do
--	cnt = cnt +1
--	x,y = cp.get_guide_arraw()
--	if x ~= -1 and y ~= -1 then
--		toast(x..':'..y..'--->'..cnt,10)
--		break
--		--goto guide
--	end
--end



while (true) do
	if cp.adopt_pet() then
		toast(2222222,1)
		break
	end
end

----	if cp.() then
----		x, y = cp.get_guide_arraw()
----		tap(x, y, 50, 'click.png')
----		dialog(1111, 0)
----		break
----	end
--end
--width, height = getScreenSize();
--toast(width..':'..height,1)