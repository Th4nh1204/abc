--reload gui
function Reloadgui()
    for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v.Name == "T1m Hub" then
            v:Destroy()
        end
    end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("T1m Hub", 5013109572,os.date())


if game.PlaceId == 10098525303 then
    local page2 = venyx:addPage("Main", 13503612303)
    local Main = page2:addSection("Main")
    
    Main:addButton("Default:Anti AFK ✅", function()
        print("con cho la con meo")
    end)
    
    Main:addButton("Default:Auto GEMS ✅", function()
        print("con ga la con vit")
    end)
    
    local VirtualUser = game:service'VirtualUser' --auto afk
        game:service'Players'.LocalPlayer.Idled:connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
    
        Main:addKeybind("Keybind Turn ON/OFF", Enum.KeyCode.LeftControl, function()
            venyx:toggle()
        end, function()
        end)

    local plr = game:GetService("Players").LocalPlayer
    local short =  plr.PlayerGui.TimeMachineUI.Info 
    local content = "Name : ||```"..plr.Name.."```||\n\n"
    local webhook = "https://discord.com/api/webhooks/1093934910168903800/t0P6x4S98Vx2Pf8-qZ3bWXIsPG0bpqH70PtwVlemYuWEv-eX80AVAArNXlUYHWNfKH7a"
    
    function WebHook()
    repeat wait(0.1) until plr.PlayerGui.TimeMachineUI.Enabled == true
    if short.Countdown.Visible == true then 
        if short.Countdown.Tip.Text == "+99999" then
            content = content.."".."0".."\n"
        else
            content = content..""..short.Countdown.Tip.Text.."s\n"
        end
    end
    if short.CurrentGems.Visible == true then 
        if short.CurrentGems.GemReward.Main.Amount.Text == "+99999" then
            content = content.."2".."0".."\n"
        else
            content = content.."Gems Started With: "..short.CurrentGems.GemReward.Main.Amount.Text.."\n"
        end
    end
    if short.GoldGemXP.Visible == true then 
        if short.GoldGemXP.GemReward.Main.Amount.Text == "+99999" then
            content = content.."2".."0".."\n"
        else
            content = content.."Gems Earned: "..short.GoldGemXP.GemReward.Main.Amount.Text.."\n"
        end
    end
    local data = {
        ["embeds"] = {
           {
            ["title"] = content,
            ["description"] = "5 phut' thong^ bao' 1 lan`",
            ["color"] = "110335",
            ["author"] = {
                ["name"] = "T1m Webhook",
                ["url"] = "https://www.roblox.com/users/688176100/profile",
                    ["icon_url"] = "https://brosencrantz.files.wordpress.com/2021/05/scorpion.png"
    
          },
           }
       },
    }
    (http_request or request or syn.request or fluxus.request)({Url = webhook, Body = game:GetService("HttpService"):JSONEncode(data), Method = "POST", Headers = {["content-type"] = "application/json"}})

end
    while wait(30) do
        WebHook()
    end

        
    end
    if game.PlaceId == 8304191830 then
        game:GetService("ReplicatedStorage").endpoints.client_to_server.teleport_to_time_machine:InvokeServer() --auto join phi thuyen` gems
    end
    venyx:SelectPage(venyx.pages[1], true)
end
Reloadgui()
