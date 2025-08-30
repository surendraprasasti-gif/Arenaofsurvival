-- Script siap pakai contoh Roblox
-- Saat dijalankan, muncul teks di layar dan suara notifikasi

-- Tambah GUI
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
TextLabel.Parent = ScreenGui
TextLabel.Size = UDim2.new(0, 400, 0, 60)
TextLabel.Position = UDim2.new(0.5, -200, 0.1, 0)
TextLabel.Text = "Script Berhasil Dijalanin!"
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderSizePixel = 2

-- Tambah efek suara
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://138087440" -- contoh suara
sound.Volume = 1
sound.Parent = game.Workspace
sound:Play()

-- Tambah tombol klik di layar
local TextButton = Instance.new("TextButton")
TextButton.Parent = ScreenGui
TextButton.Size = UDim2.new(0, 150, 0, 50)
TextButton.Position = UDim2.new(0.5, -75, 0.25, 0)
TextButton.Text = "Klik Aku!"
TextButton.TextScaled = true
TextButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)

TextButton.MouseButton1Click:Connect(function()
    TextLabel.Text = "Tombol Diklik! 🎉"
    sound:Play()
end)
