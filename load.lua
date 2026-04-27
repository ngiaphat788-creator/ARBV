-- [[ ARBV SYSTEM - C00LGUI EDITION ]] --
-- [[ CREATED BY NGIAPHAT788 DEVELOPER ]] --

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- CHUYỂN SANG BLOODTHEME CHO NÓ CHẤT
local Window = Library.CreateLib("C00LGUI X ARBV - TUBERS93 EDITION", "BloodTheme")

-- TẠO CÁC TAB NHÌN NGUY HIỂM
local Tab1 = Window:NewTab("HỦY DIỆT")
local Section1 = Tab1:NewSection("Status: SẴN SÀNG BÁO")

Section1:NewSlider("TỐC ĐỘ (SPEED)", "Chỉnh tốc độ chạy", 1000, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section1:NewSlider("NHẢY CAO (JUMP)", "Chỉnh lực nhảy", 1000, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
end)

local Tab2 = Window:NewTab("BAY LƯỢN")
local Section2 = Tab2:NewSection("Nút Bay của Tubers93")

Section2:NewButton("BẬT BAY (FLY)", "Bật Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Edgeiy/infiniteyield/master/source"))()
end)

local Tab3 = Window:NewTab("THÔNG TIN")
local Section3 = Tab3:NewSection("Hacker Info")
Section3:NewLabel("Hacker: Ngiaphat788")
Section3:NewLabel("Hỗ trợ: VNG / GLOBAL")
Section3:NewLabel("Phiên bản: 6.6.6") -- Số đẹp cho giống c00lgui

-- PHÍM TẮT ĐỂ GIẤU BẢNG (Right Control)
Section3:NewKeybind("Phím Ẩn Menu", "Nhấn R-Ctrl", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)
