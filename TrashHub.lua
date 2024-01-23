while not game:IsLoaded() do
    wait()
end
local libary = loadstring(game:HttpGet("https://pastebin.com/raw/RvJ0qewm", true))()
local main = libary:CreateWindow("Anime Punch V0.1")

local mod = main:Button("Tora", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraScript/Script/main/AnimePunch'))() 
end)

local mod = main:Button("EGG", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/vbbdv3/AnimePunch/main/Egg'))()
end)

local mod = main:Button("Raid", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/vbbdv3/AnimePunch/main/Raid'))()
end)

local mod = main:Button("Invasion", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/vbbdv3/AnimePunch/main/Invasion'))()
end)

local mod = main:Button("Defenсe", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/vbbdv3/AnimePunch/main/Defence'))()
end)
