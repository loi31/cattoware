-- Forked Steafanuk

-- // Dependencies
local Aiming = loadstring(game:HttpGet("https://raw.githubusercontent.com/loi31/cattoware/main/random/Module.lua"))()

-- // Disable Team Check
local AimingIgnored = Aiming.Ignored
AimingIgnored.TeamCheck(false)

local AimingSettings = Aiming.Settings
AimingSettings.Ignored.IgnoreLocalTeam = false

-- // Downed Check
local AimingChecks = Aiming.Checks
local AimingUtilities = Aiming.Utilities
function AimingChecks.Custom(Player)
    -- // Check if downed
    local Character = AimingUtilities.Character(Player)
    local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
    local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil

    -- // Check B
    if (KOd or Grabbed) then
        return false
    end

    -- //
    return true
end

-- // Return
return Aiming
