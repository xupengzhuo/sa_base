
-- 界面取色模块，每个函数代表一次取色操作，返回值为取色结果

-- 初始界面公告
-- {
-- 	{   85,  105, 0xffcc00},
-- 	{  690,  107, 0xffcc00},
-- 	{   76, 1217, 0xffcc00},
-- 	{  706, 1225, 0xffffff},
-- }
-- if (isColor(  85,  105, 0xffcc00, 85) and 
-- isColor( 690,  107, 0xffcc00, 85) and 
-- isColor(  76, 1217, 0xffcc00, 85) and 
-- isColor( 706, 1225, 0xffffff, 85)) then
-- x,y = findMultiColorInRegionFuzzy( 0xffcc00, "605|2|0xffcc00,-9|1112|0xffcc00,621|1120|0xffffff", 90, 99, 100, 676, 110)

tp = {}

--抓取主角界面的等级
function tp.get_level(...)
	text=ocrText(543, 140, 654, 178, 0)
	return tonumber(string.sub(text, 4, -1))
end

return tp
