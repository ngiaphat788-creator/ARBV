-- ARBV Multi-Platform Support (Global & VNG)
local Kavo = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Kavo.CreateLib("ARBV PRIVATE - ALL VERSION (VNG/GLOBAL)", "DarkTheme")

local Main = Window:NewTab("Hack VNG/Global")
local Section = Main:NewSection("Status: Hoạt động tốt")

-- Chức năng chỉnh tốc độ (Dùng được cho cả 2 bản)
Section:NewSlider("Tốc Độ (Speed)", "Chạy nhanh hơn", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

-- Nút Fly (Bay) - Tương thích mọi phiên bản
Section:NewButton("Bay Lượn (Fly)", "Bật Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Edgeiy/infiniteyield/master/source"))()
end)

Section:NewKeybind("Đóng/Mở Menu", "Nhấn để ẩn menu", Enum.KeyCode.RightControl, function()
	Kavo:ToggleUI()
end)
