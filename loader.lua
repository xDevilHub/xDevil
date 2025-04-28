repeat task.wait() until game:IsLoaded() task.wait()

local function isLevel8()
    return (syn and syn.secure_call) or (getexecutorname and getexecutorname()) or (identifyexecutor and identifyexecutor()) or (secure_call ~= nil)
end

if not isLevel8() then
    game.Players.LocalPlayer:Kick("Unsupported executor: Level 8 executor required")
end

if game.PlaceId == 11729688377 or game.PlaceId == 11879754496 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2160f00537bac611bb821512dfb6b28d.lua"))()
end
