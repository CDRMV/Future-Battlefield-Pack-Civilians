-----------------------------------------------------------------
-- File     : FBPCunits.lua
-- Author(s): CDRMV 
-- Summary  :
-----------------------------------------------------------------

local DefaultUnitsFile = import('/mods/Future Battlefield Pack Civilians/lua/FBPCdefaultunits.lua')
local RoadUnit = DefaultUnitsFile.RoadUnit
local FAFRoadUnit = DefaultUnitsFile.FAFRoadUnit

local EffectTemplate = import('/lua/EffectTemplates.lua')
local EffectUtil = import('/lua/EffectUtilities.lua')

-- Version check for vanilla/FAF/Steam
local version = tonumber( (string.gsub(string.gsub(GetVersion(), '1.5.', ''), '1.6.', '')) )
if version < 3652 then
    LOG('Version lower than 3652, not a FAF version')
	ARoadUnit = Class(RoadUnit) {}
	CRoadUnit = Class(RoadUnit) {}
	TRoadUnit = Class(RoadUnit) {}
	SRoadUnit = Class(RoadUnit) {}
else
    LOG('Version higher than 3652 FAF found')
	ARoadUnit = Class(FAFRoadUnit) {}
	CRoadUnit = Class(FAFRoadUnit) {}
	TRoadUnit = Class(FAFRoadUnit) {}
	SRoadUnit = Class(FAFRoadUnit) {}
	NRoadUnit = Class(FAFRoadUnit) {}
end
