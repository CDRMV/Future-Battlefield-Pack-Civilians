local version = tonumber( (string.gsub(string.gsub(GetVersion(), '1.5.', ''), '1.6.', '')) )

if version < 3652 then -- All versions below 3652 don't have buildin global icon support, so we need to insert the icons by our own function
	LOG('Future Battlefield Pack Civilians: [gamecommon.lua '..debug.getinfo(1).currentline..'] - Gameversion is older then 3652. Hooking "GetUnitIconFileNames" to add our own unit icons')

local MyUnitIdTable = {
   UAC0100=true, -- Aeon Civilian Engineer
   UAC0101=true, -- Aeon Civilian Road Engineer
   UEC0100=true, -- UEF Civilian Engineer
   UEC0101=true, -- UEF Civilian Road Engineer
   URC0100=true, -- Cybran Civilian Engineer
   URC0101=true, -- Cybran Civilian Road Engineer
   XSC0100=true, -- Seraphim Civilian Engineer
   XSC0101=true, -- Seraphim Civilian Road Engineer
   
   UAC1002=true, -- Aeon Road (Crossing)
   UAC1003=true, -- Aeon Road (North to South)
   UAC1004=true, -- Aeon Road (West to East)
   UAC1005=true, -- Aeon Road
   UAC1006=true, -- Aeon Road
   UAC1007=true, -- Aeon Road
   UAC1008=true, -- Aeon Road
   UAC1009=true, -- Aeon Road
   UAC1010=true, -- Aeon Road
   UAC1011=true, -- Aeon Road
   UAC1012=true, -- Aeon Road
   UAC1013=true, -- Aeon Road (North to South Curve 1)
   UAC1014=true, -- Aeon Road (North to South Curve 2)
   UAC1015=true, -- Aeon Road (South to North Curve 1)
   UAC1016=true, -- Aeon Road (South to North Curve 2)
   
   UEC1002=true, -- UEF Road (Crossing)
   UEC1003=true, -- UEF Road (West to East)
   UEC1004=true, -- UEF Road (North to South)
   UEC1005=true, -- UEF Road (West Exit)
   UEC1006=true, -- UEF Road (South Exit)
   UEC1007=true, -- UEF Road (East Exit)
   UEC1008=true, -- UEF Road (North Exit)
   UEC1009=true, -- UEF Road (East T)
   UEC1010=true, -- UEF Road (West T)
   UEC1011=true, -- UEF Road (North T)
   UEC1012=true, -- UEF Road (South T)
   UEC1013=true, -- UEF Road (North to South Curve 1)
   UEC1014=true, -- UEF Road (North to South Curve 2)
   UEC1015=true, -- UEF Road (South to North Curve 1)
   UEC1016=true, -- UEF Road (South to North Curve 2)
   
   URC1002=true, -- Cybran Road (Crossing)
   URC1003=true, -- Cybran Road (West to East)
   URC1004=true, -- Cybran Road (North to South)
   URC1005=true, -- Cybran Road (North Exit)
   URC1006=true, -- Cybran Road (South Exit)
   URC1007=true, -- Cybran Road (West Exit)
   URC1008=true, -- Cybran Road (East Exit)
   URC1009=true, -- Cybran Road (West T)
   URC1010=true, -- Cybran Road (East T)
   URC1011=true, -- Cybran Road (South T)
   URC1012=true, -- Cybran Road (North T)
   URC1013=true, -- Cybran Road (North to South Edge Curve 1)
   URC1014=true, -- Cybran Road (North to South Edge Curve 2)
   URC1015=true, -- Cybran Road (South to North Edge Curve 1)
   URC1016=true, -- Cybran Road (South to North Edge Curve 2)
}

	local IconPath = "/Mods/Future Battlefield Pack Civilians"
	-- Adds icons to the unitselectionwindow
	local oldGetUnitIconFileNames = GetUnitIconFileNames
	function GetUnitIconFileNames(blueprint)
		if MyUnitIdTable[blueprint.Display.IconName] then
			local iconName = IconPath .. "/icons/units/" .. blueprint.Display.IconName .. "_icon.dds"
			local upIconName = IconPath .. "/icons/units/" .. blueprint.Display.IconName .. "_icon.dds"
			local downIconName = IconPath .. "/icons/units/" .. blueprint.Display.IconName .. "_icon.dds"
			local overIconName = IconPath .. "/icons/units/" .. blueprint.Display.IconName .. "_icon.dds"
			return iconName, upIconName, downIconName, overIconName
		else
			return oldGetUnitIconFileNames(blueprint)
		end
	end

else
	LOG('Future Battlefield Pack Civilians: [gamecommon.lua '..debug.getinfo(1).currentline..'] - Gameversion is 3652 or newer. No need to insert the unit icons by our own function.')
end -- All versions below 3652 don't have buildin global icon support, so we need to insert the icons by our own function