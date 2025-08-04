-- // Test Required Functions (Report any issues)~
local List = {
    "setclipboard",
    "identifyexecutor",
    "appendfile",
    "writefile",
    "readfile",
    "makefolder",
    "isfolder",
    "isfile",
    "listfiles",
    "delfile",
    "delfolder",
    "getcustomasset",
    "fireclickdetector",
};

local KaoriFuncs = {}

for _,v in ipairs(List) do
    if typeof(getfenv()[v]) ~= "function" then
        table.insert(KaoriFuncs,v);
    end
end

if #KaoriFuncs > 0 then
    local EpicFail = table.concat(KaoriFuncs,", {!} ");
    game:GetService("Players").LocalPlayer:Kick("[KAORIWARE]: ❌ Failed: {!} "..EpicFail);
else
    game:GetService("Players").LocalPlayer:Kick("[KAORIWARE]: Passed all checks ✅");
end
