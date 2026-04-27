-- [[ ARBV PRIVATE V5 - XÂY DỰNG BỞI THIÊN TÀI NGẦM ]]

-- 1. TẠO LOGO HIỆN TRÊN MÀN HÌNH
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "ARBV_Logo"

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.02, 0, 0.85, 0) -- Vị trí góc dưới bên trái
ImageLabel.Size = UDim2.new(0, 80, 0, 80) -- Kích thước logo
-- THAY ID LOGO CỦA BRO VÀO ĐÂY (Dưới đây là ID ví dụ hình chữ A)
ImageLabel.Image = "rbxassetid://15622171549" 

-- 2. KHỞI TẠO GIAO DIỆN (GUI)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ARBV PRIVATE V5 - ĐỘC QUYỀN", "Midnight")

-- TAB CHÍNH
local Tab1 = Window:NewTab("Tính Năng")
local Section1 = Tab1:NewSection("Kích Hoạt Sức Mạnh")

-- NÚT KÍCH HOẠT TỐC ĐỘ
Section1:NewSlider("Tốc Độ (Speed)", "Chỉnh tốc độ chạy", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

-- NÚT KÍCH HOẠT NHẢY CAO
Section1:NewSlider("Nhảy Cao (Jump)", "Chỉnh sức mạnh nhảy", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- NÚT KÍCH HOẠT BAY (FLY) - MƯỢN CODE XỊN
Section1:NewButton("BẬT FLY (BAY)", "Bay như bão Dominator", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/x0673/V_Fly/main/Script"))()
end)

-- TAB HỆ THỐNG
local Tab2 = Window:NewTab("Hệ Thống")
local Section2 = Tab2:NewSection("Cài Đặt")

Section2:NewKeybind("Ẩn/Hiện Menu", "Phím để đóng mở hack", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)

Section2:NewButton("Xóa Logo", "Tắt cái logo ở góc màn hình", function()
    ScreenGui:Destroy()
end)

print("ARBV: Đã kích hoạt thành công!")
