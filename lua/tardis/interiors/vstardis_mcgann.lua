local T={}
	T.Base ="base"
	T.IsVersionOf = "vstardis"
	T.Name ="The Valeyard's TARDIS"
	T.ID ="vstardis_mcgann"


T.Interior = {
	Model="models/valeyardstudios/int/main/walls.mdl",
	
Portal = {
	-- Generated by portals debug tool
	pos = Vector(-8.3405211626086e-08, -184, 48.71875),
	ang = Angle(-0, 90, 0),
	width = 60,
	height = 86,
	thickness = -5,
},


	Fallback={
		pos=Vector(0, -150, 15),
		ang=Angle(0,0,0)
	},

	ExitDistance=3000,

	Light={
		color=Color(0,150,150),
		warncolor=Color(255, 50, 50),
		pos=Vector(0, 0, 50),
		brightness=0.5
	},

		Screens = {
        {
            pos = Vector(-6.25, -18, 52),
            ang = Angle(0, 0, 50),
            width = 210,
            height = 200,
            visgui_rows = 2,
            power_off_black = true
        }
    },
    
	Lights= {
		{
			color = Color(0,150,150),
			warncolor=Color(255, 25, 25),
			fov = 175,
			distance = 100,
			brightness = 0.05,
			pos = Vector(0, 0, 150),
			ang = Angle(90, 0, 0),
		},
		{
			color = Color(0, 25, 50),
			pos = Vector(0, 100, 100),
			brightness = 1,
			nopower = false,
			warncolor = Color(255, 0, 0),
		},
		{
			color = Color(0, 25, 50),
			pos = Vector(100, 0, 100),
			brightness = 1,
			nopower = false,
			warncolor = Color(255, 0, 0),
		},
		{
			color = Color(0, 25, 50),
			pos = Vector(-100, 0, 100),
			brightness = 1,
			nopower = false,
			warncolor = Color(255, 0, 0),
		},
		{
			color = Color(0, 25, 50),
			pos = Vector(0, -100, 100),
			brightness = 1,
			nopower = false,
			warncolor = Color(255, 0, 0),
		},
	},
	LightOverride = {
		basebrightness = 1,
		nopowerbrightness = 0.1
	},

	IdleSound={
		{
			path="normal/hum.wav",
			volume=1
		}
	},

	Sequences = "default_sequences",
	Parts={
		console=false,
		door={
			model="models/valeyardstudios/mcgann/96IntDoors.mdl",
			posoffset = Vector(23.3172460714704, 0, -48),
			angoffset= Angle(0, 180, 0)
		},
		console_generic_metal = {},
		console_white_metal = {},
		console_dark_metal = {},
		console_glass = {},
		console_light = {},
		pillars = {},
		roundel1 = {},
		roundel2 = {},
		roundel3 = {},
		roundel4 = {},
		roof = {},
		main_floor = {},
		power_toggle = {},
		dest_keyboard = {},
		switchsetbase = {},
		bluelevers1 = {ang=Angle(0,-90,0)},
		yellowlevers1 = {ang=Angle(0,-90,0)},
		whitelevers1 = {ang=Angle(0,-90,0)},
		redlevers1 = {ang=Angle(0,-90,0)},
	},
	Controls={
		power_toggle = "power",
		console_generic_metal = "thirdperson_careful",
		dest_keyboard = "coordinates",
		yellowlevers1 = "door",
		bluelevers1 = "doorlock",
		redlevers1 = "cloak",
		whitelevers1 = "isomorphic",
		
	},
	PartTips = {
		power_toggle = { pos = Vector(0,-33,100), },
		dest_keyboard =  { pos = Vector(-1,-33,40), },
		yellowlevers1 ={ pos = Vector(4,-33,40), },
		bluelevers1 = {  pos = Vector(6,-39,40), },
		redlevers1 = {   pos = Vector(10,-39,40), },
		whitelevers1 = {  pos = Vector(12,-36,40),},
	},
}


T.Exterior={
	Model="models/valeyardstudios/mcgann/96Shell.mdl",
	Mass=2900,
Portal = {
	-- Generated by portals debug tool
	pos = Vector(24.194982528687, 0.025998115539551, 48.099998474121),
	ang = Angle(-0, -1.0245284101984e-05, 0),
	width = 35,
	height = 85,
	thickness = 23,
	inverted = true,
},

	Fallback={
		pos=Vector(55,0,5),
		ang=Angle(0,0,0)
	},
	Light={
		enabled=true,
		pos=Vector(0, 0, 106),
		color=Color(155,155,000)
	},
	Sounds={
		Teleport={
			demat="mcgann/demat.wav",
			mat="mcgann/mat.wav",
		},
		FlightLoop="mcgann/flight.wav"
	},

Parts={
	door={
		model="models/valeyardstudios/mcgann/96Doors.mdl",
		posoffset=Vector(-24.194982528687, 0.025998115539551, -48.099998474121),
		angoffset = Angle(0,0,0)
	}
},
Teleport={
		SequenceSpeed=0.75,
		SequenceSpeedFast=1,
		DematSequence={
			150,
			200,
			100,
			150,
			50,
			100,
			0
		},
		MatSequence={
			150,
			100,
			200,
			150,
			255
		    }
      }
    }
 

T.Interior.TextureSets = {
	["normal"] = {
		prefix = "valeyardstudios/int/main/",
				{"main_floor", 0, "Floor"},

				{"pillars", 0,"Pillars"},

				{"roof", 0, "Roof"},

				{"roundel1", 0, "Roundels"},

				{"roundel2", 0, "Roundels"},

				{"roundel3", 0, "Roundels"},

				{"roundel4", 0, "Roundels"},

				{"walls", 0, "Walls"},

				{"console_generic_metal", 0, "C_Generic_Metal"},

				{"console_white_metal", 0, "C_White_Metal"},

				{"console_dark_metal", 0, "C_Dark_Metal"},

				{"console_glass", 0, "C_Dark_Glass"},

				{"console_light", 0, "C_Light"},

				{"power_toggle", 0, "PowerSwitch"},
			},
	["poweroff"] = {
		prefix = "valeyardstudios/int/main/off/",
				{"main_floor", 0, "Floor"},

				{"pillars", 0, "Pillars"},

				{"roof", 0, "Roof"},

				{"roundel1", 0, "Roundels"},

				{"roundel2", 0, "Roundels"},

				{"roundel3", 0, "Roundels"},

				{"roundel4", 0, "Roundels"},

				{"console_generic_metal", 0, "C_Generic_Metal"},

				{"console_white_metal", 0, "C_White_Metal"},

				{"console_dark_metal", 0, "C_Dark_Metal"},

				{"console_glass", 0, "C_Dark_Glass"},

				{"console_light", 0, "C_Light"},

				{"power_toggle", 0, "PowerSwitch"},
	},
	["warning"] = {
		prefix = "valeyardstudios/int/main/warning/",
				{"pillars", 0, "Pillars"},

				{"roundel1", 0, "Roundels"},

				{"roundel2", 0, "Roundels"},

				{"roundel3", 0, "Roundels"},

				{"roundel4", 0, "Roundels"},

				{"console_generic_metal", 0, "C_Generic_Metal"},

				{"console_white_metal", 0, "C_White_Metal"},

				{"console_dark_metal", 0, "C_Dark_Metal"},

				{"console_glass", 0, "C_Dark_Glass"},

				{"console_light", 0, "C_Light"},

				{"power_toggle", 0, "PowerSwitch"},
	},
}

local TEXTURE_UPDATE_DATA_IDS = {
	["power-state"] = true,
	["health-warning"] = true,
	["teleport"] = true,
	["vortex"] = true,
}

T.CustomHooks = {
	travel_textures = {
		exthooks = {
			["DataChanged"] = true,
		},
		func = function(ext, int, data_id, data_value)
			if not TEXTURE_UPDATE_DATA_IDS[data_id] then return end

			local power = ext:GetData("power-state")
			local warning = ext:GetData("health-warning")
			local teleport = ext:GetData("teleport")
			local vortex = ext:GetData("vortex")

			if not power then
				int:ApplyTextureSet("poweroff")
			else
				if flight or teleport or vortex then
					int:ApplyTextureSet(warning and "warning" or "normal")
				else
					int:ApplyTextureSet(warning and "warning" or "normal")
				end
			end
		end,
	},
}
TARDIS:AddInterior(T)