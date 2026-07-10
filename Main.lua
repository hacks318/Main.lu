local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local SpeedButton = Instance.new("TextButton")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "MeuNovoPainel"

MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.Position = UDim2.new(0.4, 0, 0.4, 0)
MainFrame.Size = UDim2.new(0, 220, 0, 130)
MainFrame.Active = true
MainFrame.Draggable = true

TitleLabel.Parent = MainFrame
TitleLabel.Text = "Menu de Estudos"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.Size = UDim2.new(1, 0, 0.3, 0)
TitleLabel.BackgroundTransparency = 1

SpeedButton.Parent = MainFrame
SpeedButton.Text = "Ativar Velocidade"
SpeedButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
SpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedButton.Position = UDim2.new(0.1, 0, 0.45, 0)
SpeedButton.Size = UDim2.new(0.8, 0, 0.35, 0)

SpeedButton.MouseButton1Click:Connect(function()
    local jogador = game:GetService("Players").LocalPlayer
    if jogador and jogador.Character and jogador.Character:FindFirstChild("Humanoid") then
        jogador.Character.Humanoid.WalkSpeed = 30
        SpeedButton.Text = "Velocidade Ativada!"
        SpeedButton.BackgroundColor3 = Color3.fromRGB(46, 204, 113)
    end
end)
