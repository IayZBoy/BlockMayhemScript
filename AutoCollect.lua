local NEVERLOSE = loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/NEVERLOSE-UI-Nightly/main/source.lua"))()
local Active = false

local Window = NEVERLOSE:AddWindow("ZBoy Hub", "Block Mayhem - OP EDITION")

local Tab = Window:AddTab("Main", "earth")

local Section = Tab:AddSection("Auto Collect")

Section:AddToggle("Enabled", false, function(val)
	Active=val
end)

while task.wait(5) do
	if active then
	    if workspace:FindFirstChild("Spawn", true) then
	        for _,v in pairs(workspace:FindFirstChild("Spawn", true):GetDescendants()) do
	            if v:IsA("ClickDetector") then
	                local parent = v.Parent
	                local parentName = parent.Name
	                local playerList = game.Players:GetPlayers()
	                local fireClick = true
	                
	                for _, player in ipairs(playerList) do
	                    local userId = tostring(player.UserId)
	                    if parentName:find(userId) then
	                        fireClick = false
	                        break
	                    end
	                end
	                
	                if fireClick then
	                    fireclickdetector(v)
	                end
	            end
	        end
	    end
	end
end
