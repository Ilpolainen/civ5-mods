print("ELMONIA LUA LOADED")

local function OnPlayerDoTurn(playerID)
    local player = Players[playerID]
end

GameEvents.PlayerDoTurn.Add(OnPlayerDoTurn)

GameEvents.BuildFinished.Add(function(playerID, cityID, buildingID)
    local player = Players[playerID]
    local city = player:GetCityByID(cityID)
    local buildingInfo = GameInfo.Buildings[buildingID]
    print("BUILDING FINISHED: " .. buildingInfo.Type .. " in " .. city:GetName())
end)