local mod_name = "classic_coaches_nationality_livery_pack"

-- Notify player if a newer version of AdvTrains Livery Tools is needed.
if not advtrains_livery_database.is_compatible_mod_version or
   not advtrains_livery_database.is_compatible_mod_version({major = 0, minor = 9, patch = 0}) then
	minetest.log("error", "["..mod_name.."] An old version of AdvTrains Livery Tools was detected. Please update to the latest version.")
	-- Version 0.9.0 is required because advtrains_livery_database.has_wagon_livery_template() is called.
	return
end

local S = minetest.get_translator(mod_name)

-- Get the translated livery template names from the classic_coaches_generic_livery_pack
-- mod in order to insure they will match during look-up.
local livery_template_generic_tricolor = minetest.translate("classic_coaches_generic_livery_pack", "Generic - Tricolor")
local livery_template_generic_window_stripes = minetest.translate("classic_coaches_generic_livery_pack", "Generic - Window Stripes")
local livery_template_generic_slanted_bands = minetest.translate("classic_coaches_generic_livery_pack", "Generic - Slanted Bands")

-- Define groups of wagon types that will share predefined liveries.
local wagon_types = {
	all_coaches = {
		"classic_coaches:corridor_coach_class1",
		"classic_coaches:corridor_coach_class2",
		"classic_coaches:open_coach_class1",
		"classic_coaches:open_coach_class2",
		"classic_coaches:bistro_coach",
	},
	common_coaches = {
		"classic_coaches:corridor_coach_class1",
		"classic_coaches:corridor_coach_class2",
		"classic_coaches:open_coach_class1",
		"classic_coaches:open_coach_class2",
	},
	bistro_coaches = {
		"classic_coaches:bistro_coach",
	},
}

local predefined_liveries = {
	{
		name = S("Nationality - Algeria (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#006633"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#D21034"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Argentina"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#75AADB"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#75AADB"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Window Band",
				[4] = {id = 4,	color = "#FCBF49"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#843511"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Argentina (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#75AADB"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#75AADB"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FCBF49"},	-- "Stripe",
				[6] = {id = 6,	color = "#843511"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Australia"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
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
		name = S("Nationality - Australia"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#00008B"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#00008B"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FF0000"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Bistro Label",
--				[6] = {id = 6,	color = "#000000"},	-- "Galley",
			},
		},
	},
	{
		name = S("Nationality - Australia (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FF0000"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#00008B"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Stripe",
				[6] = {id = 6,	color = "#00008B"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Australia (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FF0000"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#00008B"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Austria (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#C8102E"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#C8102E"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Bangladesh (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#006747"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#DA291C"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#006747"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
{
		name = S("Nationality - Belarus (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#D22730"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#D22730"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#009739"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Belgium (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#000000"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FDDA24"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#EF3340"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Brazil"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FFDF00"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#009C3B"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#002776"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFDF00"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Brazil (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#009440"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFCB00"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#302681"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Stripe",
				[6] = {id = 6,	color = "#302681"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Brazil (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#009440"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFCB00"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#302681"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Bulgaria (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#009900"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#CC0000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#808080"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Canada"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
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
		name = S("Nationality - Canada"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FF0000"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#FF0000"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Window Band",
				[4] = {id = 4,	color = "#FF0000"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Bistro Label",
--				[6] = {id = 6,	color = "#000000"},	-- "Galley",
			},
		},
	},
	{
		name = S("Nationality - Canada (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FF0000"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FF0000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#181818"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Canada (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FF0000"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FF0000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- ""Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Chile (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#0039A6"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#D52B1E"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - China"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#EE1C25"},	-- "Side Walls",
				[2] = {id = 2,	color = "#EE1C25"},	-- "Seats",
--				[3] = {id = 3,	color = "#000000"},	-- "Service Stripe",
				[4] = {id = 4,	color = "#EE1C25"},	-- "Logo",
				[5] = {id = 5,	color = "#FFFF00"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - China (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#EE1C25"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#EE1C25"},	-- "Middle Slanted Band",
--				[4] = {id = 4,	color = "#000000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#FFFF00"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Czech Republic"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
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
		name = S("Nationality - Czech Republic"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#D7141A"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#11457E"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Bistro Label",
--				[6] = {id = 6,	color = "#000000"},	-- "Galley",
			},
		},
	},
	{
		name = S("Nationality - Czech Republic (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#D7141A"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#11457E"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#181818"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Czech Republic (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#D7141A"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#11457E"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Denmark (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#D10430"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#D10430"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Egypt (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#C8102E"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#000000"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFCD00"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Finland (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#18447E"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - France"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#0055A4"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#EF4135"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - France (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#0055A4"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#EF4135"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#EF4135"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - France (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#0055A4"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#EF4135"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Germany"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FFCC00"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#FF0000"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#000000"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFCC00"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFCC00"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Germany (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#000000"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FF0000"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FFCC00"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Hungary (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#CE2939"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#477050"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - India"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FF671F"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#046A38"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#06038D"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - India (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FF671F"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#046A38"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#06038D"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Indonesia (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FF0000"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
--				[4] = {id = 4,	color = "#000000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Iran"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
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
		name = S("Nationality - Iran"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#239F40"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#DA0000"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Window Band",
				[4] = {id = 4,	color = "#239F40"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Bistro Label",
--				[6] = {id = 6,	color = "#000000"},	-- "Galley",
			},
		},
	},
	{
		name = S("Nationality - Iran (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#239F40"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#DA0000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#DA0000"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Iran (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#239F40"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#DA0000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Ireland (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#169B62"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FF883E"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Israel (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#0038B8"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#0038B8"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Italy"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#008C45"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#CD212A"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Italy (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#008C45"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#F4F5F0"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#CD212A"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#181818"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Italy (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#008C45"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#F4F5F0"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#CD212A"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Japan"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
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
		name = S("Nationality - Japan"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#BC002D"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#BC002D"},	-- "Bistro Label",
--				[6] = {id = 6,	color = "#000000"},	-- "Galley",
			},
		},
	},
	{
		name = S("Nationality - Japan (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#BC002D"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#181818"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Japan (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#BC002D"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Kazakhstan"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#00ABC2"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#00ABC2"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#00ABC2"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFEC2D"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFEC2D"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Kazakhstan (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#00ABC2"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#00ABC2"},	-- "Middle Slanted Band",
--				[4] = {id = 4,	color = "#000000"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFEC2D"},	-- "Stripe",
				[6] = {id = 6,	color = "#FFEC2D"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Kazakhstan (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#00ABC2"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#00ABC2"},	-- "Middle Slanted Band",
--				[4] = {id = 4,	color = "#000000"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFEC2D"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Luxembourg (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#EF3340"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#00A3E0"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Malaysia (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#000066"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#CD0000"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFCD00"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Mexico"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#CE1125"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#006847"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Mexico (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#006847"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#CE1125"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#181818"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Mexico (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#006847"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#CE1125"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Morocco (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#B7312C"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#B7312C"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#B7312C"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#006341"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Myanmar"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FECB00"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#EA2839"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#34B233"},	-- "Window Band",
				[4] = {id = 4,	color = "#FECB00"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Myanmar (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FECB00"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#34B233"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#EA2839"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#FFFFFF"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Myanmar (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FECB00"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#34B233"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#EA2839"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Netherlands (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#AD1D25"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#1E4785"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - New Zealand (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#012169"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#C8102E"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Norway (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#00205B"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#BA0C2F"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Pakistan (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#00401A"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#00401A"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#808080"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Philippines (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#0038A8"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#CE1126"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FCD116"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Poland"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
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
		name = S("Nationality - Poland"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#DC143C"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Bistro Label",
--				[6] = {id = 6,	color = "#000000"},	-- "Galley",
			},
		},
	},
	{
		name = S("Nationality - Poland (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#DC143C"},	-- "Middle Slanted Band",
--				[4] = {id = 4,	color = "#000000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#181818"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Poland (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#DC143C"},	-- "Middle Slanted Band",
--				[4] = {id = 4,	color = "#000000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Portugal (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#006032"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#EE161F"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#EE161F"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FDF000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Romania"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#002B7F"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#CE1126"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FCD116"},	-- "Window Band",
				[4] = {id = 4,	color = "#002B7F"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#002B7F"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Romania (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#002B7F"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FCD116"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#CE1126"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Russia"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#DA291C"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#0032A0"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Russia (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#0032A0"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#DA291C"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#181818"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Russia (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#0032A0"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#DA291C"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Slovakia (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#254AA5"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#ED1C24"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#808080"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - South Korea (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#CD2E3A"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#0047A0"},	-- "Middle Slanted Band",
--				[4] = {id = 4,	color = "#000000"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#1B1B1B"},	-- "Stripe",
				[6] = {id = 6,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - South Africa"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_window_stripes,
			overlays = {
				[1] = {id = 1,	color = "#007A4D"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Upper Stripe",
				[3] = {id = 3,	color = "#000000"},	-- "Window Band",
				[4] = {id = 4,	color = "#DE3831"},	-- "Middle Stripe",
				[5] = {id = 5,	color = "#002395"},	-- "Lower Stripe",
				[6] = {id = 6,	color = "#FFB612"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - South Africa (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#DE3831"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#007A4D"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#002395"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#FFB612"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Spain"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FABD00"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#AD1519"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FABD00"},	-- "Window Band",
				[4] = {id = 4,	color = "#FABD00"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#AD1519"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Spain"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FABD00"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#AD1519"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FABD00"},	-- "Window Band",
				[4] = {id = 4,	color = "#FABD00"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FABD00"},	-- "Bistro Label",
--				[6] = {id = 6,	color = "#000000"},	-- "Galley",
			},
		},
	},
	{
		name = S("Nationality - Spain (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#AD1519"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FABD00"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#AD1519"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Sri Lanka (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#005F56"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#DF7500"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#F7B718"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#941E32"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Sweden"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#005293"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#005293"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FFCD00"},	-- "Window Band",
				[4] = {id = 4,	color = "#005293"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#005293"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Sweden"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#005293"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#005293"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#FFCD00"},	-- "Window Band",
				[4] = {id = 4,	color = "#005293"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFCD00"},	-- "Bistro Label",
--				[6] = {id = 6,	color = "#000000"},	-- "Galley",
			},
		},
	},
	{
		name = S("Nationality - Sweden (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#005293"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFCD00"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#005293"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFCD00"},	-- "Stripe",
				[6] = {id = 6,	color = "#181818"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Sweden (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#005293"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFCD00"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#005293"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFCD00"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Switzerland (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FF0000"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FF0000"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Taiwan (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#0028CC"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#F30001"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#F30001"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Thailand (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#A51931"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#F4F5F8"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#2D2A4A"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Tunisia (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#E70013"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#E70013"},	-- "Middle Slanted Band",
--				[4] = {id = 4,	color = "#000000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Türkiye"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#E30A17"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#E30A17"},	-- "Window Band",
				[4] = {id = 4,	color = "#E30A17"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Türkiye (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#E30A17"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#E30A17"},	-- "Middle Slanted Band",
--				[4] = {id = 4,	color = "#000000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Ukraine"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
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
		name = S("Nationality - Ukraine"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#0057B7"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#FFD700"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#0057B7"},	-- "Window Band",
				[4] = {id = 4,	color = "#0057B7"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#0057B7"},	-- "Bistro Label",
--				[6] = {id = 6,	color = "#000000"},	-- "Galley",
			},
		},
	},
	{
		name = S("Nationality - Ukraine (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#0057B7"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFD700"},	-- "Middle Slanted Band",
--				[4] = {id = 4,	color = "#000000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#181818"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - Ukraine (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#0057B7"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFD700"},	-- "Middle Slanted Band",
--				[4] = {id = 4,	color = "#000000"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - United Kingdom"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#012169"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#012169"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#C8102E"},	-- "Window Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - United Kingdom (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
				[1] = {id = 1,	color = "#012169"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#C8102E"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - United Kingdom (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
				[1] = {id = 1,	color = "#012169"},	-- "Side Walls",
				[2] = {id = 2,	color = "#FFFFFF"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#C8102E"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#FFFFFF"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Stripe",
				[6] = {id = 6,	color = "#FFFFFF"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - USA"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_tricolor,
			overlays = {
				[1] = {id = 1,	color = "#FFFFFF"},	-- "Upper Side Walls",
				[2] = {id = 2,	color = "#B31942"},	-- "Lower Side Walls",
				[3] = {id = 3,	color = "#0A3161"},	-- "Window Band",
				[4] = {id = 4,	color = "#0A3161"},	-- "Window Band Trim",
				[5] = {id = 5,	color = "#FFFFFF"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - USA (Slanted Bands)"),
		wagon_types = wagon_types.common_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#B31942"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#0A3161"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
				[6] = {id = 6,	color = "#0A3161"},	-- "Class Number",
			},
		},
	},
	{
		name = S("Nationality - USA (Slanted Bands)"),
		wagon_types = wagon_types.bistro_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#B31942"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#0A3161"},	-- "Right Slanted Band",
--				[5] = {id = 5,	color = "#000000"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Bistro Label",
			},
		},
	},
	{
		name = S("Nationality - Uzbekistan (Slanted Bands)"),
		wagon_types = wagon_types.all_coaches,
		notes = "",
		livery_design = {
			livery_template_name = livery_template_generic_slanted_bands,
			overlays = {
--				[1] = {id = 1,	color = "#000000"},	-- "Side Walls",
				[2] = {id = 2,	color = "#3081F7"},	-- "Left Slanted Band",
				[3] = {id = 3,	color = "#FFFFFF"},	-- "Middle Slanted Band",
				[4] = {id = 4,	color = "#308738"},	-- "Right Slanted Band",
				[5] = {id = 5,	color = "#EE162E"},	-- "Stripe",
--				[6] = {id = 6,	color = "#000000"},	-- "Class Number"/"Bistro Label",
			},
		},
	},
}

-- This mod needs to register itself with the livery database in order to be
-- allowed to add predefined liveries. It does not need to register itself with
-- the livery designer tool, however, since it is will not be registering any
-- wagons.
advtrains_livery_database.register_mod(mod_name)

-- Register this mod's predefined wagon liveries with the advtrains_livery_database.
local detected_old_mod_version = false
for _, predefined_livery in pairs(predefined_liveries) do
	for _, wagon_type in pairs(predefined_livery.wagon_types) do
		if not detected_old_mod_version and not advtrains_livery_database.has_wagon_livery_template(wagon_type, predefined_livery.livery_design.livery_template_name) then
			minetest.log("error", "["..mod_name.."] An old version of classic_coaches_generic_livery_pack was detected. Some predefined liveries will fail to be added.")
			detected_old_mod_version = true
		end
		local livery_design = predefined_livery.livery_design
		livery_design.wagon_type = wagon_type
		advtrains_livery_database.add_predefined_livery(predefined_livery.name, livery_design, mod_name, predefined_livery.notes)
	end
end
