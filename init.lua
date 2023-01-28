local S
if minetest.get_modpath("intllib") then
    S = (intllib.make_gettext_pair and intllib.make_gettext_pair()) or intllib.Getter()
else
    S = function(s) return s end
end

local mod_name = "classic_coaches_nationality_livery_pack"

local predefined_liveries = {
	{
		name = S("Nationality Argentina"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#75AADB"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#75AADB"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Window Band",
				[4] = {id = 4,	color = "#FCBF49"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#843511"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Australia"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#00008B"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#00008B"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FF0000"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#00008B"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Brazil"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FFDF00"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#009C3B"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#002776"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFDF00"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Canada"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FF0000"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#FF0000"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Window Band",
				[4] = {id = 4,	color = "#FF0000"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FF0000"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Czech Republic"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#D7141A"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#11457E"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#D7141A"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality China"),
		notes = "",
		livery_design = {
			livery_template_name = "CC Solid Color",
			overlays = {
				[1] = {id = 1,	color = "#EE1C25"},	-- "Side Walls",
				[2] = {id = 2,	color = "#EE1C25"},	-- "Seats",
--				[3] = {id = 3,	color = "#000000"},	-- "Service Stripe",
				[4] = {id = 4,	color = "#EE1C25"},	-- "Logo",
				[5] = {id = 5,	color = "#FFFF00"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality France"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#0055A4"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#EF4135"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Germany"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FFCC00"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#FF0000"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#000000"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFCC00"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFCC00"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality India"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FF671F"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#046A38"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#06038D"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Iran"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#239F40"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#DA0000"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Window Band",
				[4] = {id = 4,	color = "#239F40"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#239F40"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Italy"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#008C45"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#CD212A"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Japan"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#BC002D"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Kazakhstan"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#00ABC2"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#00ABC2"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#00ABC2"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFEC2D"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFEC2D"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Mexico"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#CE1125"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#006847"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Myanmar"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FECB00"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#EA2839"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#34B233"},	-- "Window Band",
				[4] = {id = 4,	color = "#FECB00"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Poland"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#DC143C"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#DC143C"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Romania"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#002B7F"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#CE1126"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FCD116"},	-- "Window Band",
				[4] = {id = 4,	color = "#002B7F"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#002B7F"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Russia"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#DA291C"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#0032A0"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality South Africa"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Window Stripes",
			overlays = {
				[1] = {id = 1,	color = "#007A4D"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Upper Stripe",
				[3] = {id = 3,	color = "#000000"},	-- "Window Band",
				[4] = {id = 4,	color = "#DE3831"},	-- "Middle Stripe",
				[5] = {id = 5,	color = "#002395"},	-- "Lower Stripe",
				[6] = {id = 6,	color = "#FFB612"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Spain"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FABD00"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#AD1519"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FABD00"},	-- "Window Band",
				[4] = {id = 4,	color = "#FABD00"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#AD1519"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Sweden"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#006AA7"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#006AA7"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FECC00"},	-- "Window Band",
				[4] = {id = 4,	color = "#006AA7"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#006AA7"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Turkey"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#E30A17"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#E30A17"},	-- "Window Band",
				[4] = {id = 4,	color = "#E30A17"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality USA"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#B31942"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#0A3161"},	-- "Window Band",
				[4] = {id = 4,	color = "#0A3161"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality Ukraine"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#0057B7"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#FFD700"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#0057B7"},	-- "Window Band",
				[4] = {id = 4,	color = "#0057B7"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFD700"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality United Kingdom"),
		notes = "",
		livery_design = {
			livery_template_name = "Generic - Tricolor",
			overlays = {
				[1] = {id = 1,	color = "#012169"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#012169"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#C8102E"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number",
			},
		},
	},
}

-- Specify the wagon_types to which the predefined liveries will apply.
local  wagon_types = {
	"classic_coaches:corridor_coach_class1",
	"classic_coaches:corridor_coach_class2",
	"classic_coaches:open_coach_class1",
	"classic_coaches:open_coach_class2",
}

-- This mod needs to register itself with the livery database in order to be
-- allowed to add predefined liveries. It does not need to register itself with
-- the livery designer tool, however, since it is will not be registering any
-- wagons.
advtrains_livery_database.register_mod(mod_name)

-- Register this mod's predefined wagon liveries with the advtrains_livery_database.
for _, predefined_livery in pairs(predefined_liveries) do
	for _, wagon_type in pairs(wagon_types) do
		if wagon_type then
			local livery_design = predefined_livery.livery_design
			livery_design.wagon_type = wagon_type
			advtrains_livery_database.add_predefined_livery(predefined_livery.name, livery_design, mod_name, predefined_livery.notes)
		end
	end
end
