# Roblox Chat Logger & Join Notifier

A Roblox script that detects when a player joins the game and logs their chat messages, sending this information to a Discord channel via a webhook. Perfect for game developers looking to enhance community engagement and moderation.

## Features

- **Player Join Notification**: Sends a notification to a Discord channel whenever a player joins the game, including their username and the time they joined.
- **Chat Message Logging**: Logs every chat message sent by players to the Discord channel with timestamps, helping you keep track of in-game conversations.
- **Easy Setup**: Simple installation and configuration process to get you started quickly.

## Installation

### Prerequisites

- A Roblox account and access to Roblox Studio.
- A Discord account to create a webhook.

### Steps to Set Up

1. **Create a Discord Webhook**:
   - Go to your Discord server and navigate to **Server Settings** > **Integrations** > **Webhooks**.
   - Create a new webhook and copy the URL.

2. **Open Roblox Studio**:
   - Open your game project in Roblox Studio.

3. **Copy the script from Main.luau**

4. **Insert the Script**:
   - Go to **Explorer** and locate **ServerScriptService**.
   - Right-click on **ServerScriptService** and select **Insert Object** > **Script**.
   - Replace the default code with the following:
  
5. **Turn On HTTP Requests**
- Go to file
- Game settings
- Security
- HTTP Requests turn it on
