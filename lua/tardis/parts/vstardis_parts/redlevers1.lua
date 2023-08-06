local PART={}
PART.ID = "redlevers1"
PART.Name = "redlevers1"
PART.Model = "models/valeyardstudios/controls/redlevers1.mdl"
PART.AutoSetup = true
PART.UseTransparencyFix=true
PART.Animate = true

if SERVER then
	function PART:Think()
		local cloakState = (self.exterior:GetData("cloak",false) or false)
		if cloakState then
			self:SetSkin( 0 )
		else
			self:SetSkin( 1 )
		end
	end
end

TARDIS:AddPart(PART)