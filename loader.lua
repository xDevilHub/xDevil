repeat task.wait() until game:IsLoaded() task.wait()

local allowedExecutors = {
    ["Swift"] = true,
    ["Zenith"] = true,
    ["Velocity"] = true,
    ["Wave"] = true,
    ["Ronix"] = true,
    ["Sirhunt"] = true,
    ["Nihon"] = true,
    ["Solora"] = false,
    ["Xeno"] = false
}

local function detectExecutor()
    if identifyexecutor then
        return identifyexecutor()
    else
        return "Unknown Executor"
    end
end

if not allowedExecutors[detectExecutor()] then
    return game.Players.LocalPlayer:Kick("Unsupported executor: " .. executor)
end

if game.PlaceId == 11729688377 or game.PlaceId == 11879754496 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2160f00537bac611bb821512dfb6b28d.lua"))()
elseif game.PlaceId == 85896571713843 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/738b429bcb68b5addcf258dc48f4f6f3.lua"))()
end
