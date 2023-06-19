--reload gui
function Reloadgui()
    for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v.Name == "T1m Hub" then
            v:Destroy()
        end
    end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("T1m Hub", 5013109572,os.date())

local page = venyx:addPage("Main", 13503612303)
local Main = page:addSection("Main")


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

    venyx:SelectPage(venyx.pages[1], true)

    game:GetService("ReplicatedStorage").endpoints.client_to_server.teleport_to_time_machine:InvokeServer() --auto join phi thuyen` gems
end
Reloadgui()
