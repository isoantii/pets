print ("Speed")
local speed = 75 -- Add the amount of speed you want here!
 
spawn(function()
while wait() do
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end
end)

print ("potato")
local decalsyeeted  = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g             = game
local w             = g.Workspace
local l             = g.Lighting
local t             = w.Terrain
t.WaterWaveSize     = 0
t.WaterWaveSpeed    = 0
t.WaterReflectance  = 0
t.WaterTransparency = 0
l.GlobalShadows     = false
l.FogEnd            = 9e9
l.Brightness        = 0
settings().Rendering.QualityLevel = "Level01"
for i,v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") then
        v.Material = "Plastic"
v.Reflectance = 0
elseif v:IsA("Decal") and decalsyeeted then 
v.Transparency = 1
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then 
v.Lifetime = NumberRange.new(0)
    end
end

print("FPS Cap + Alt Tab Optimization")
local InputService = game:GetService'UserInputService'
local RunService = game:GetService'RunService'
RunService:Set3dRenderingEnabled(false)
InputService.WindowFocused:Connect(function()
    RunService:Set3dRenderingEnabled(true)
    setfpscap(18) -- FPS cap 18 fps
end)
InputService.WindowFocusReleased:Connect(function()
    RunService:Set3dRenderingEnabled(false)
    setfpscap(2) -- FPS cap 2 fps
end)

loadstring(game:HttpGet("https://milkup.info/script/PetSimulatorX/"))()
