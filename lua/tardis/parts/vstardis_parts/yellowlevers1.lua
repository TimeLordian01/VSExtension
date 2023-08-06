local PART={}
PART.ID = "yellowlevers1"
PART.Name = "yellowlevers1"
PART.Model = "models/valeyardstudios/controls/Yellowlevers1.mdl"
PART.AutoSetup = true
PART.UseTransparencyFix=true
PART.Animate = true

if SERVER then
	function PART:Think()
		local doorState = (self.exterior:GetData("doorstatereal") or false)
		if doorState then
			self:SetSkin( 0 )
		else
			self:SetSkin( 1 )
		end
	end
end

TARDIS:AddPart(PART)