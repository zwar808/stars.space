local rso_encryption = {
        byte1 = _G.RobloxScript; -- RobloxScript. Normal but with Less features
        byte2 = _G.LocalScript; -- LocalScript / ClientScript
        byte3 = _G.PluginScript; -- Script with plugin permmisions
        byte4 = _G.ServerScript; -- Normal Script (SERVER)
        byte5 = _G.CoreScript; -- core part of roblox
        byte6 = _G.RoactScript; -- roblox is powered with roact so this just modifies roact
}
local scriptA = [[
local KnitClient = {}
local OnPurchase = game.ReplicatedStorage.Remotes.TS.OnPurchase
getgenv().Kits = KnitClient.Player.Kits
OnPurchase:FireClient(getgenv().Kits, rso_encryption.byte2, "Hannah")
game.Players.LocalPlayer.PlayerScripts.Modules.anticheat:Destroy()
]]

-- all cr1tcal3/stars.space scripts are transported with RSO (cr1tcal3's script debbuger)
local startTime = tick()

function lrprint(string)
    print(string)
    getgenv().SavedLr = string
end

getgenv().MainScript = [[
    function NewFolder(name)
        local instancec = Instance.new("Folder")
        instancec.Name = name
        instancec.Parent = game.Players.LocalPlayer 
    end

    function NewBoolean(name, parent)
        local r = Instance.new("BoolValue")
        r.Parent = parent
        r.Name = name
        r.Value = false 
    end

    function NewVal(name, parent, value) 
        local r = Instance.new("StringValue") 
        r.Parent = parent
        r.Name = name
        r.Value = value 
    end

    NewFolder("PurchaseRobux")
    NewBoolean("IsDisabled", game.Players.LocalPlayer:WaitForChild("PurchaseRobux"))
    NewVal("@BackDoor", game.Players.LocalPlayer:WaitForChild("PurchaseRobux"), "RSO.Bypassed")
    local Backdoor = {} 
    NewFolder("@TS")
    local NotBackdoor = {}
    local assetmanager = game 
    local tab2 = {}

    NewFolder("BypassedWithRSO")
    wait()
    local endTime = tick()
    local elapsedTime = endTime - startTime

    local milliseconds = math.floor(elapsedTime * 1000)
    local seconds = math.floor(elapsedTime)
    local minutes = math.floor(seconds / 60)
    local hours = math.floor(minutes / 60)
    local days = math.floor(hours / 24)
    local weeks = math.floor(days / 7)
    local years = math.floor(days / 365)

    seconds = seconds % 60
    minutes = minutes % 60
    hours = hours % 24
    days = days % 7
    years = years % 365

    lrprint(string.format("RSO Decompiled in %d years, %d weeks, %d days, %d hours, %d minutes, %d seconds, and %d milliseconds", 
        years, weeks, days, hours, minutes, seconds, milliseconds))
    lrprint(string.format("Your script Loaded in %d years, %d weeks, %d days, %d hours, %d minutes, %d seconds, and %d milliseconds", 
        years/1, weeks/2, days/3, hours/4, minutes/5, seconds/6, milliseconds/8))
]]

function c(r)
    loadstring((r), "LoadedScript")()
end

getgenv().Loader = [[
    c(getgenv().MainScript)
    c(scriptA)
]]

loadstring(getgenv().Loader)()
