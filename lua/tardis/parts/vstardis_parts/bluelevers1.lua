local PART={}
PART.ID = "bluelevers1"
PART.Name = "bluelevers1"
PART.Model = "models/valeyardstudios/controls/bluelevers1.mdl"
PART.AutoSetup = true
PART.UseTransparencyFix=true
PART.Animate = true
PART.Collision = true

if SERVER then
	function PART:Think()
		local lockState = (self.exterior:GetData("locked",false) or false)
		if lockState then
			self:SetSkin( 0 )
		else
			self:SetSkin( 1 )
		end
	end
end


TARDIS:AddPart(PART)