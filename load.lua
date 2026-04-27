local Kavo = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Kavo.CreateLib("ARBV PRIVATE SYSTEM v5.1", "DarkTheme")

local Main = Window:NewTab("Tính Năng")
local Section = Main:NewSection("Người tạo: Ngiaphat788")

Section:NewSlider("Tốc Độ", "Chỉnh tốc độ chạy", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewButton("Bay (Fly)", "Bật Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Edgeiy/infiniteyield/master/source"))()
end)
