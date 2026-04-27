-- ==========================================
-- ARBV PRIVATE V5 - KEY SYSTEM
-- ==========================================

local CorrectKey = "ARBV2026" 
local EnteredKey = ""

local KeyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local KeyWindow = KeyLibrary.CreateLib("XÁC MINH ARBV PRIVATE V5", "DarkTheme")
local KeyTab = KeyWindow:NewTab("Nhập Key")
local KeySection = KeyTab:NewSection("Lấy Key tại GitHub ARBV")

KeySection:NewTextBox("Nhập Key tại đây:", "Mật khẩu là gì?", function(txt)
    EnteredKey = txt
end)

KeySection:NewButton("BẮT ĐẦU HACK", "Nhấn để xác nhận", function()
    if EnteredKey == CorrectKey then
        KeyWindow:Destroy() 
        
        -- ĐÂY LÀ NƠI CHỨA CODE MENU CHÍNH CỦA BRO
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("ARBV PRIVATE V5", "Midnight")

        local Main = Window:NewTab("Tính năng chính")
        local Section = Main:NewSection("Người dùng: Thiên tài ngầm")

        Section:NewSlider("Tốc độ (Speed)", "Chạy nhanh như bão", 500, 16, function(s)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        end)

        Section:NewButton("Nhảy cao (Jump)", "Bay lên trời", function()
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
        end)
        
        print("ARBV: Đã kích hoạt thành công!")
    else
        print("Sai mã rồi bro ơi!")
    end
end)
