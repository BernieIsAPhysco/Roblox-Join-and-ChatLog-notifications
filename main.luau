local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

-- The webhook now tells you which specific game the player has joined - LuhLuaProgrammer :3
local GameName = MarketplaceService:GetProductInfoAsync(game.PlaceId).Name


-- Discord Webhook URL
local webhookURL = "YOUR_DISCORD_WEBHOOK_URL"

-- Function to send a message to the Discord webhook
local function sendToWebhook(title, description)
	local data = {
		["embeds"] = {{
			["title"] = title,
			["description"] = description,
			["color"] = 5814783, -- Embed color
		}}
	}

	-- Convert the data to JSON
	local jsonData = HttpService:JSONEncode(data)

	-- Send the POST request to the Discord webhook
	HttpService:PostAsync(webhookURL, jsonData, Enum.HttpContentType.ApplicationJson)
end

-- Detect when a player joins
Players.PlayerAdded:Connect(function(player)
	local username = player.Name
	local timeJoined = os.date("%Y-%m-%d %H:%M:%S", os.time())

	-- Send join message to Discord
	sendToWebhook("Player Joined "..GameName, username .. " has joined "..GameName.." at " .. timeJoined)

	-- Log chat messages
	player.Chatted:Connect(function(message)
		local timeMessageSent = os.date("%Y-%m-%d %H:%M:%S", os.time())

		-- Send chat message to Discord
		sendToWebhook("Chat Message Logged in "..GameName, username .. ": " .. message .. " (Sent at " .. timeMessageSent .. ")")
	end)
end)

-- Detect when a player leaves the game - Added by LuhLuaProgrammer (>‿<)
Players.PlayerRemoving:Connect(function(player)
	local Username = player.Name
	local TimeLeft = os.date("%Y-%m-%d %H:%M:%S", os.time())
	
	
	sendToWebhook("Player left "..GameName, Username.." has left "..GameName.." at "..TimeLeft)
end)
