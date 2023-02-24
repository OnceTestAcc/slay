TeleportService = game:GetService("TeleportService")
Players = game:GetService("Players")
PlaceId, JobId = game.PlaceId, game.JobId
local cooldowns = game.Players.LocalPlayer.CooldownSlays
	
	

		for i,v in pairs(game.Players:GetPlayers()) do
			allPlayers = v
	
			local args = {
				[1] = allPlayers.Name
			}
			game:GetService("ReplicatedStorage").SlayPlayer:FireServer(unpack(args))
			cooldowns:Destroy()
		end
		wait(1)

if #Players:GetPlayers() <= 1 then
		Players.LocalPlayer:Kick("\nRejoining...")
		wait()
		TeleportService:Teleport(PlaceId, Players.LocalPlayer)
	else
		TeleportService:TeleportToPlaceInstance(PlaceId, JobId, Players.LocalPlayer)
	end
