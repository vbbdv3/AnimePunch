while not game:IsLoaded() do
    wait()
end
local libary = loadstring(game:HttpGet("https://pastebin.com/raw/RvJ0qewm", true))()
local main = libary:CreateWindow("DEFENSE")

local mod = main:Button("AUTO KILL", function()
_G.raid_enabled = not _G.raid_enabled

local lplr = game.Players.LocalPlayer
local enemies_folder = workspace.Client.Enemies.Defense
local target;

function getClosestEnemy()
    local result;
    local result_distance = math.huge
    local rootPart = lplr.Character and lplr.Character:FindFirstChild('HumanoidRootPart')
    if rootPart then
        for _, enemy in pairs(enemies_folder:GetChildren()) do
            local enemy_part = enemy:FindFirstChild('HumanoidRootPart')
            local enemy_distance = enemy_part and (enemy_part.Position - rootPart.Position).Magnitude
            local enemy_health = enemy:FindFirstChild('Humanoid') and enemy.Humanoid.Health
            if enemy_distance and enemy_distance < result_distance and enemy_health and enemy_health > 0 then
                result = enemy
                result_distance = enemy_distance
            end
        end
    end
    return result, result_distance
end

while task.wait() and _G.raid_enabled do
    local rootPart = lplr.Character and lplr.Character:FindFirstChild('HumanoidRootPart')
    if rootPart then
        if
            not target or
            not target.Parent or
            not target:FindFirstChild('HumanoidRootPart') or
            not target:FindFirstChild('Humanoid') or
            target.Humanoid.Health <= 0
        then
            target = getClosestEnemy()
        end
        local target_part = target and target:FindFirstChild('HumanoidRootPart')
        if target_part then
            rootPart.CFrame = target_part.CFrame
        end
    end
end
end)

local mod = main:Button("AUTO JOIN", function()
_G.inv_join_enabled = not _G.inv_join_enabled

while _G.inv_join_enabled do

local args = {
    [1] = "Enemies",
    [2] = "Bridge",
    [3] = {
        ["Module"] = "Defense",
        ["FunctionName"] = "Start",
        ["Args"] = "Friend"
    }
}

game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
wait(1)
end
end)
