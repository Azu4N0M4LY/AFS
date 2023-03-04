local players = {
    "by_shadon",
    "lBlackD",
    "Naiara0615",
    "Seakui",
    "XxNotStar_x0",
    "Elmanuelsupremo20",
    "TULOVITO7W7BB",
    "JustAlexNoBody"
}

if players then
    for i = 1, #players do
        local player = game.Players:FindFirstChild(players[i])
        if player then
            game.StarterGui:SetCore("ChatMakeSystemMessage", {
                Text = "Banned";
                Font = Enum.Font.Cartoon;
                Color = BrickColor.new("Bright blue").Color;
                FontSize = Enum.FontSize.Size96;    
            })
            game.StarterGui:SetCore("ChatMakeSystemMessage", {
                Text = "Gay";
                Font = Enum.Font.Cartoon;
                Color = BrickColor.new("Bright blue").Color;
                FontSize = Enum.FontSize.Size96;    
            })
            game.StarterGui:SetCore("ChatMakeSystemMessage", {
                Text = "Go play adopt me newbie";
                Font = Enum.Font.Cartoon;
                Color = BrickColor.new("Bright blue").Color;
                FontSize = Enum.FontSize.Size96;    
            })
            wait(5)
            game:GetService("TeleportService"):Teleport(920587237)
        end
    end
end

print("Checking...")
local funcs = {
    ["createUI"] =  function(name, callback)
        local strings = {
            "loading...",
            "Verifying...",
            "Welcome to my hub\n choosen game:"..name
        }
        local icons = {
            {
                ["image"] = "rbx.assetid://",
                ["RectOffset"] = Vector2.new(204, 844),
                ["RectSize"] = Vector2.new(36,36)
            },
            {
                ["image"] = "rbx.assetid://",
                ["RectOffset"] = Vector2.new(644, 204),
                ["RectSize"] = Vector2.new(36,36)
            },
            {
                ["image"] = "rbx.assetid://",
                ["RectOffset"] = Vector2.new(204, 844),
                ["RectSize"] = Vector2.new(36,36)
            }
        }
        local screengui = Instance.new("ScreenGui")
        local startergui = Instance.new("StarterGui")
        StarterGui:SetCoreGuiEnabled()
        local frame = Instance.new("Frame")
        local text = Instance.new("TextLabel", frame)
        local icon = Instance.new("ImageLabel", frame)
        screengui.Name = 'ui'..tostring(math.random(1, 1000))
        frame.Size = UDim2.new(0, 0, 0, 0)
        frame.Position = UDim2.new(0.5, 0, 0.75, 0)
        frame.BackgroundTransparency = 1
        frame.ScaleType = Enum.ScaleType.Slice
        frame.SliceCenter = 0.12
        text.Font = Enum.Font.SourceSans
        text.TextColor3 = Color3.new(1, 1, 1)
        text.TextSize = 20
        text.Text = ""
        text.TextWrapped = true
        text.Size = UDim2.new(1, -50, 1, 0)
        text.Position = UDim2.new(0, 0, 0, 0)
        icon.Size = UDim2.new(0, 0, 0, 0)
        icon.ImageColor3 = Color3.new(1, 1, 1)
        icon.Position = UDim2.new(0, 15, 0.5, 0)
        icon.Image = ""

        frame:TweenSize(UDim2.new(0, 250, 0, 70))
        frame:TweenPosition(UDim2.new(0.5, -125, 0.5, -35))
        wait(1)
        for i,v in pairs(strings) do
            icon.Image = icons[i]["Image"]
            icon.ImageRectOffset = icons[i]["RectOffset"]
            icon.ImageRectSize = icons[i]["RectSize"]
            for i2 = 1 , #strings[i] do
                text.Text = string.sub(strings[i2], 0, i2)
                wait(0.05)
            end
            for i2 = 1, #strings[i] do
                text.Text = string.sub(strings[i], 0, #strings[i2]  - i)
                wait(0.05)
            end
            if i ~= #strings then
                wait(0.5)
            end
        end
        icon.Visible = false
        frame:TweenSize(UDim2.new(0, 0, 0, 0))
        frame:TweenPosition(UDim2.new(0.5, 0, 0.75, 0))
        wait(1)
        screengui:Destroy()
        pcall(callback)
    end
}
print("Checked")
wait()
print("Checking game...")

local games = {
    [4042427666] = {
        ["name"] = "Anime Fighting Simulator",
        ["function"] = function()
            print("AFS was succesfuly loaded!")
        end
    },
    [7560156054] = {
        ["name"] = "Clicker Simulator!",
        ["function"] = function()
            print("Clicker Simulator was succesfuly loaded!")
        end
    },

}
print("Checked")



if games[game.PlaceId] then
    pcall(funcs.createUI, games[game.PlaceId]["name"], games[game.PlaceId]["function"])
end


print("Loading UI...")
getgenv().Chakra = false;
getgenv().Strength = false;
getgenv().Sword = false;
getgenv().Durability = false;

local send = require(game.Players.LocalPlayer.PlayerGui.Main.MainClient.StatModuleClient)


local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Zeus HUB | Zeusssss#9999", 5013109572)
local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
}

game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Players Online: " .. game.Players.NumPlayers;
    Font = Enum.Font.Cartoon;
    Color = BrickColor.new("Bright blue").Color;
    FontSize = Enum.FontSize.Size96;    
})



local page = venyx:addPage("Credits")

local misc = venyx:addPage("Misc")
local bosses = venyx:addPage("Bosses")
local instructions = venyx:addPage("Instructions")
local exit = venyx:addPage("Exit")
local CreditsSection = page:addSection("Credits")
CreditsSection:addButton("Discord", function()
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "Discord: https://discord.gg/QpTHFnEJZW";
        Font = Enum.Font.Cartoon;
        Color = BrickColor.new("Bright blue").Color;
        FontSize = Enum.FontSize.Size96;    
    })
    wait(1)
    setclipboard("https://discord.gg/QpTHFnEJZW")
    wait(0.05)
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "System: Invite copied to the clipboard";
        Font = Enum.Font.Cartoon;
        Color = BrickColor.new("Bright yellow").Color;
        FontSize = Enum.FontSize.Size96;    
    })
end)
CreditsSection:addButton("Discord ID", function()
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "Discord ID: Zeusssss#9999";
        Font = Enum.Font.Cartoon;
        Color = BrickColor.new("Bright blue").Color;
        FontSize = Enum.FontSize.Size96;    
    })
    setclipboard("Zeusssss#9999")
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "System: Invite copied to the clipboard";
        Font = Enum.Font.Cartoon;
        Color = BrickColor.new("Bright yellow").Color;
        FontSize = Enum.FontSize.Size96;    
    })
end)

-- getgenv().Chakra = false;
-- getgenv().Strength = false;
-- getgenv().Sword = false;
-- getgenv().Durability = false;


local farm = venyx:addPage("Farm")
local farmSection = farm:addSection("Farming")
farmSection:addToggle("Chakra", nil, function(bool)
    getgenv().Chakra = bool
    if bool then
        Chakra()
    end
end)

farmSection:addToggle("Durability", nil, function(bool)
    getgenv().Durability = bool
    if bool then
        Durability()
    end
end)

farmSection:addToggle("Strength", nil, function(bool)
    getgenv().Strength = bool
    if bool then
        Strength()
    end
end)

farmSection:addToggle("Sword", nil, function(bool)
    getgenv().Sword = bool
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "Equip your sword to start farming";
        Font = Enum.Font.Cartoon;
        Color = BrickColor.new("Bright red").Color;
        FontSize = Enum.FontSize.Size96;    
    })
    if bool then
        Sword()
    end
end)
local players = venyx:addPage("Players")   
players:addSection("Players")

players:addDropdown("Teleport", function()
    
end)



-- funciones toggles zona farm

function Chakra()
    spawn(function ()
        while getgenv().Chakra == true do
            send.SendToServer("Chakra")
        end
    end)
end


function Durability()
    spawn(function()
        while getgenv().Durability == true do
            send.SendToServer("Durability")
        end
    end)
end

function Strength()
    spawn(function ()
        while getgenv().Strength == true do
            send.SendToServer("Strength")
        end
    end)
end


function Sword()
    spawn(function ()
        while getgenv().Sword == true do
            send.SendToServer("Sword")
        end
    end)
end


loadstring(game:HttpGet("https://raw.githubusercontent.com/ZeusDev08/DN-hub/main/.gitignore"))()
