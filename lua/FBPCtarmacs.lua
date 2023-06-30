#****************************************************************************
#**
#**  File     :  FBPCtarmacs.lua
#**  Author(s):  CDRMV
#**
#**  Summary  :  Map for terrain-specific tarmacs.
#**
#**
#****************************************************************************

local TarmacTable =
{
    --UEF Tarmac Overrides
    [1] = {
        
    },
    
    --Aeon Tarmac Overrides
    [2] = {
    },
    
    --Cybran Tarmac Overrides
    [3] = {
    },
    
    --Seraphim Tarmac Overrides.
    [4] = {        
    },
}



function GetTarmacType(factionIdx, terrainType, tarmacLayer)
    return TarmacTable[factionIdx][terrainType] or ''
end