-- // This script is protected by license: https://github.com/KaoriW6/Main/blob/home/LICENSE.md
---------------------------------------------------------------------------------------------------
--  _____                                                  _____ 
-- ( ___ )                                                ( ___ )
--  |   |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|   | 
--  |   |  _  __                ___        __              |   | 
--  |   | | |/ /__ _  ___  _ __(_) \      / /_ _ _ __ ___  |   | 
--  |   | | ' // _` |/ _ \| '__| |\ \ /\ / / _` | '__/ _ \ |   | 
--  |   | | . \ (_| | (_) | |  | | \ V  V / (_| | | |  __/ |   | 
--  |   | |_|\_\__,_|\___/|_|  |_|  \_/\_/ \__,_|_|  \___| |   | 
--  |___|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|___| 
-- (_____)                                                (_____)
---------------------------------------------------------------------------------------------------
shared.InMaintenance = false; -- // When i want to push risky updates.

local cloneref = cloneref or function(o) return o end;

local Players = cloneref(game:GetService("Players"));
local VirtualUser = cloneref(game:GetService("VirtualUser"));
local HttpService = cloneref(game:GetService("HttpService"));
local UserInputService = cloneref(game:GetService("UserInputService"));

-- // Advanced Loader \\ --
if not game:IsLoaded() then
    local NotLoaded = Instance.new("Message");NotLoaded.Parent = cloneref(game:GetService("CoreGui"));NotLoaded.Text = "Kaori6.exe is waiting for the game to load~";game.Loaded:Wait();NotLoaded:Destroy();
end if shared.InMaintenance == true then Players.LocalPlayer:Kick("Kaoriware is temporarily closed, Try again later!"); return end

-- // Detects Instances \\ --
local S = string.rep(" ",3);
if (shared.GetUI and shared.GetUI()) then
    getgenv().Debug("🟠"..S.."Instance Already In Use: "..tostring(Players.LocalPlayer.UserId),4.25);
    return;
end

-- // Fetch Assets \\ --
shared.CopyrightHolder = "©Kaori";
shared.MainIcon = "http://www.roblox.com/asset/?id=72133521375266";

-- // Get Updated Version \\ --
local Data = (game:HttpGet("https://raw.githubusercontent.com/KaoriW6/Main/refs/heads/main/Version.json"));
getgenv().CurrentVersion = (HttpService:JSONDecode(Data).Version);

-- // Anti Idle (Infinite Yield) \\ --
if not shared.LoadedAntiAfk then shared.LoadedAntiAfk = true;
    Players.LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController();VirtualUser:ClickButton2(Vector2.new());
    end)
end

-- // Dependencies \\ --
local Repository = "https://raw.githubusercontent.com/KaoriW6/Main/refs/heads/main/Scripts/";
local PosManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/KaoriW6/Main/main/Resources/Returner"))();
local Src = loadstring(game:HttpGet("https://raw.githubusercontent.com/KaoriW6/Main/main/Resources/Debugger"))();
local Files = {
    --[[
    ["A Universal Time"] = {
        File = "AUT.lua",
        Places = {5130598377,6846458508};
    },
    ["Murder Mystery 2"] = {
        File = "MM2.lua",
        Places = {142823291};
    },
    ["Arise Crossover"] = {
        File = "AC.lua",
        Places = {87039211657390,128336380114944};
    },
    ["Fruit Battlegrounds"] = {
        File = "FB.lua",
        Places = {9224601490};
    },
    ["Untitled Gym Game"] = {
        File = "UGG.lua",
        Places = {14708751132};
    },
    ["Sakura Stand"] = {
        File = "SS.lua",
        Places = {8534845015,15552367548};
    },
    ["Second Piece"] = {
        File = "SP.lua",
        Places = {15049111150,16644455867};
    },
    --]]
    ["Dragon Ball Rage"] = {
        File = "DBR.lua",
        Places = {71315343};
    },
};

local a=function()print([[// This script is protected by license: https://github.com/KaoriW6/Main/blob/home/LICENSE.md
------------------------------------------------------------------------------------------------------------
--  _____                                                  _____ 
-- ( ___ )                                                ( ___ )
--  |   |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|   | 
--  |   |  _  __                ___        __              |   | 
--  |   | | |/ /__ _  ___  _ __(_) \      / /_ _ _ __ ___  |   | 
--  |   | | ' // _` |/ _ \| '__| |\ \ /\ / / _` | '__/ _ \ |   | 
--  |   | | . \ (_| | (_) | |  | | \ V  V / (_| | | |  __/ |   | 
--  |   | |_|\_\__,_|\___/|_|  |_|  \_/\_/ \__,_|_|  \___| |   | 
--  |___|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|___| 
-- (_____)                                                (_____) 
------------------------------------------------------------------------------------------------------------
]]) 

if not shared.IdentifiedUser then game:Shutdown()return end print("✅ Verification success:",shared.IdentifiedUser)end;local function b(c,d,e)task.spawn(function()local f="KaoriFolder/Assets/"if not isfolder("KaoriFolder")then makefolder("KaoriFolder")end;if not isfolder(f)then makefolder(f)end;local g=f..d..".cfg"local h=isfile(g)and readfile(g)or nil;local i=c.."?v="..os.time()local j=game:HttpGet(i)if j~=h then local k=h and"📤"..(S or"").."Redownloading "or"✅"..(S or"").."Downloading "getgenv().Debug(k..d.."...",2.15)writefile(g,j)end;local l=loadstring(j or"")()if e then e(l)end end)end;local function m(n)for o,p in pairs(Files)do if table.find(p.Places,n)then local q=Repository..p.File;getgenv().Debug("🟡"..S.."Checking your connection...",1.65)local function r()getgenv().Debug("🟢"..S.."Successfully Connected: "..shared.IdentifiedUser,4.25)getgenv().Debug("💾"..S.."Successfully loaded: "..o,3)local s=table.find({Enum.Platform.IOS,Enum.Platform.Android},UserInputService:GetPlatform())if not s then Window:Notify({Title=Window.Settings.Title,Description="Your Keybind to toggle UI is \""..getgenv().Settings.UIVisibility.."\"",Lifetime=6.75})end;if getgenv().Settings.General.MobileSupport then Window:Notify({Title=Window.Settings.Title,Description="Loaded Mobile Support!~",Lifetime=4.15})Window:SetSize(UDim2.fromOffset(751,400))shared.GetUI().Base.Content.Size=UDim2.new(0,507,1,0)shared.GetUI().Base.BaseUICorner.CornerRadius=UDim.new(0,20)Window:SetScale(s and 0.85 or 1)else shared.GetUI().Base.Content.Size=UDim2.new(0,614,1,0)shared.GetUI().Base.BaseUICorner.CornerRadius=UDim.new(0,10)end;if getgenv().Settings.General.UpdatePrompts and not shared.LoadedUpdatePrompts then shared.LoadedUpdatePrompts=true;b("https://raw.githubusercontent.com/KaoriW6/Main/refs/heads/main/Resources/CheckVersion","UpdatePrompts")end;task.spawn(a)end;b(q,o,r)return end end;getgenv().Debug("⚠️"..S.."Unsupported Game Detected!",4.25)end;m(game.PlaceId);
