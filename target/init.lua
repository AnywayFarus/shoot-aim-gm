AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")



function ENT:Initialize()
    self:SetModel("models/props_trainstation/trainstation_clock001.mdl")
    self:SetModelScale(0.20,0.25)
    --DarkRP.ValidatedPhysicsInit(self, SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetUseType(SIMPLE_USE)
	self:SetMaterial("phoenix_storms/dome")
	self:SetColor(Color(225,225,225))

    self.nodupe = true

    local phys = self:GetPhysicsObject()

    if phys:IsValid() then
        phys:Wake()
    end

    
end

function ENT:Use(activator, caller)
	self:SetColor(Color(225,225,225))
    self:EmitSound("UI/buttonclick.wav")
end

function ENT:OnTakeDamage(dmg)
    self:SetColor(Color(209,0,0))
    self:EmitSound("npc/scanner/scanner_siren1.wav")
end







