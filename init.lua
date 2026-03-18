--rat.dll 
--ur dll api or module helper

loadstring(game:HttpGet("https://raw.githubusercontent.com/ravyyxd/rat.dll/refs/heads/main/dll/console.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ravyyxd/rat.dll/refs/heads/main/dll/input.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ravyyxd/rat.dll/refs/heads/main/dll/setup.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ravyyxd/rat.dll/refs/heads/main/dll/names.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ravyyxd/rat.dll/refs/heads/main/dll/other.lua", true))()

function rconsoleclear()

end

function rconsolecreate()
  game.CoreGui.DevConsoleMaster.DevConsoleWindow.Visible = true
end

function rconsoledestroy()
    game.CoreGui.DevConsoleMaster.DevConsoleWindow:Destroy()
end

function rconsoleinput(enter) 
  game.CoreGui.DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.UtilAndTab.UtilBar.SearchBar.InputField.TextBox.Text = enter 
end

function rconsoleprint(...)
  print(...)
  local args = {...}
  local unsupported = {"zex is a shit", "zex is garbage"}
  for _, arg in ipairs(args) do
    for _, bad in ipairs(unsupported) do
      if arg == bad then
        print("why?")
      end
    end
  end
end

function consoleclear() 
end

--funcs here, thx dex explorer v4 

function consolecreate() 
    game.CoreGui.DevConsoleMaster.DevConsoleWindow.Visible = true
end

function consoledestroy() 
  game.CoreGui.DevConsoleMaster.DevConsoleWindow:Destroy()
end

function consoleinput(inputlol)
  game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.UtilAndTab.UtilBar.SearchBar.InputField.TextBox.Text = inputlol
end

function consoleprint(txt) 
  print(...)
  local args = {...}
  local unsupported = {"zex is a shit", "zex is garbage"}
  for _, arg in ipairs(args) do
    for _, bad in ipairs(unsupported) do
      if arg == bad then
        print("why?")
      end
    end
  end
end

function rconsolename(txt) 
    game.CoreGui.DevConsoleMaster.DevConsoleWindow.DevConsoleUI.TopBar.WindowTitle.Text = text
end

function consolesettitle(text) 
  game.CoreGui.DevConsoleMaster.DevConsoleWindow.DevConsoleUI.TopBar.WindowTitle.Text = text
end

local GETEXECNAME = 'Sprit/1.4.5'
local version = '1.45'

local function getexecutorname()
    return GETEXECNAME
end

local function getexecutorversion()
    return version
end

local function identifyexecutor()
    return getexecutorname()
end

local bindableFunction = Instance.new("BindableFunction")

--attached msg
game.StarterGui:SetCore("SendNotification", {
    Title = "Executor";
    Text = "Successfully attached!";
    Duration = "2";
    Callback = bindableFunction;
})

local Players = game:GetService("Players")

local function getPlayerCount()
    return #Players:GetPlayers()
end

local function teleportPlayer(player, position)
    if player and player.Character and position then
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.Position = position
            return true
        end
    end
    return false
end

local function createPart(size, position)
    local part = Instance.new("Part")
    part.Size = size
    part.Position = position
    part.Parent = game.Workspace
    return part
end

--print(identifyexecutor())
--print("[✅] Executor Name: " .. getexecutorname())
--print("[✅] Executor Version: ".. getexecutorversion())

--omg not fake
local fakeIdentity = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999

local function getidentity()
    return fakeIdentity
end

getgenv().getidentity = getidentity
getgenv().Level = getidentity

local function printidentity()
    print('Current identity is ' .. tostring(fakeIdentity))
    return fakeIdentity
end

local blockedurls = {
    'https://v4.ident.me',

    'http://ip-api.com/json',

    'https://ipinfo.io',

    'http://checkip.amazonaws.com'
}

local oldRequest = getgenv().request or function(options) return nil end

getgenv().request = function(options)
    if options.Url then
        for _, blocked in ipairs(blockedurls) do
            if string.find(options.Url, blocked) then
                warn('[Sprit] Blocked IP Grabber request to URL:', options.Url)
                return { Body = 'Protected' }
            end
        end
    end

    return oldRequest(options)
end --idk wth is request i forgot so u need to change ts

local originalRequest = getgenv().request or function(options) return nil end

getgenv().request = function(options)
    if options.Headers then
        options.Headers["User-Agent"] = "rat/1.4.5"
    else
        options.Headers = {["User-Agent"] = "rat/1.4.5"}
    end

    return originalRequest(options)
end


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local LogService = game:GetService("LogService")

--also chatgpt garbage
--local function logMessage(message)
--    print("[ratAPI Log] "..tostring(message))
--end

--i js deleted chatgpt shit funcs here

local function init()
    logMessage("injection initialized with rat [✅]")


    if not LocalPlayer.Character then
        LocalPlayer.CharacterAdded:Wait()
    end

    --monitorPlayerActions() i deleted ts
    --monitorKickAttempts() i deleted ts

    local success, err = pcall(function()

    end)
    if not success then
        logMessage("Error in script: "..tostring(err))
    end
end

init()
