local PART={}
PART.ID = "whitelevers1"
PART.Name = "whitelevers1"
PART.Model = "models/valeyardstudios/controls/whitelevers1.mdl"
PART.AutoSetup = true
PART.UseTransparencyFix=true
PART.Animate = true

if SERVER then
	function PART:Think()
		local cloakState = (self.exterior:GetSecurity("cloak",false) or false)
		if cloakState then
			self:SetSkin( 0 )
		else
			self:SetSkin( 1 )
		end
	end
end

TARDIS:AddPart(PART)