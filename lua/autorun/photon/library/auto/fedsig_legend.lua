AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "Federal Signal Legend"

local COMPONENT = {}

COMPONENT.Model = "models/schmal/fedsig_legend/legend_lightbar.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}

COMPONENT.Meta = {
	legend_forward = {
		AngleOffset = -90,
		W = 7.2,
		H = 7.2,
		Sprite = "sprites/emv/legend_wide",
		Scale = 1.25,
		WMult = 1.5,
	},
	legend_forward_nar = {
		AngleOffset = -90,
		W = 7.2,
		H = 7.2,
		Sprite = "sprites/emv/legend_narrow",
		Scale = 1.25,
		WMult = 1,
	},
	legend_rear_nar = {
		AngleOffset = 90,
		W = 7.2,
		H = 7.2,
		Sprite = "sprites/emv/legend_narrow",
		Scale = 1.25,
		WMult = 1,
	},
	legend_rear = {
		AngleOffset = 90,
		W = 7.2,
		H = 7.2,
		Sprite = "sprites/emv/legend_wide",
		Scale = 1.25,
		WMult = 1.5,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -3.1, 8.7, 0.72 ), Angle( 0, 0, 0 ), "legend_forward" },
	[2] = { Vector( 3.1, 8.7, 0.72 ), Angle( 0, 0, 0 ), "legend_forward" },

	[3] = { Vector( -9.35, 8.7, 0.72 ), Angle( 0, 0, 0 ), "legend_forward" },
	[4] = { Vector( 9.35, 8.7, 0.72 ), Angle( 0, 0, 0 ), "legend_forward" },

	[5] = { Vector( -15.59, 8.7, 0.72 ), Angle( 0, 0, 0 ), "legend_forward" },
	[6] = { Vector( 15.59, 8.7, 0.72 ), Angle( 0, 0, 0 ), "legend_forward" },

	[7] = { Vector( -20.86, 8.16, 0.72 ), Angle( 0, 20.48, 0 ), "legend_forward_nar" },
	[8] = { Vector( 20.86, 8.16, 0.72 ), Angle( 0, -20.48, 0 ), "legend_forward_nar" },

	[9] = { Vector( -24.52, 6.97, 0.72 ), Angle( 0, 44.48, 0 ), "legend_forward_nar" },
	[10] = { Vector( 24.52, 6.97, 0.72 ), Angle( 0, -44.48, 0 ), "legend_forward_nar" },

	[11] = { Vector( -26.03, 3.59, 0.72 ), Angle( 0, 73.38, 0 ), "legend_forward_nar" },
	[12] = { Vector( 26.03, 3.59, 0.72 ), Angle( 0, -73.38, 0 ), "legend_forward_nar" },

	[13] = { Vector( -26.49, 0.08, 0.72 ), Angle( 0, 90, 0 ), "legend_forward_nar" },
	[14] = { Vector( 26.49, 0.08, 0.72 ), Angle( 0, -90, 0 ), "legend_forward_nar" },

	[15] = { Vector( -26.03, -3.44, 0.72 ), Angle( 0, -73.38, 0 ), "legend_rear_nar" },
	[16] = { Vector( 26.03, -3.44, 0.72 ), Angle( 0, 73.38, 0 ), "legend_rear_nar" },

	[17] = { Vector( -24.52, -6.82, 0.72 ), Angle( 0, -44.48, 0 ), "legend_rear_nar" },
	[18] = { Vector( 24.52, -6.82, 0.72 ), Angle( 0, 44.48, 0 ), "legend_rear_nar" },

	[19] = { Vector( -20.86, -8.02, 0.72 ), Angle( 0, -20.48, 0 ), "legend_rear_nar" },
	[20] = { Vector( 20.86, -8.02, 0.72 ), Angle( 0, 20.48, 0 ), "legend_rear_nar" },

	[21] = { Vector( -15.59, -8.57, 0.72 ), Angle( 0, 0, 0 ), "legend_rear" },
	[22] = { Vector( 15.59, -8.57, 0.72 ), Angle( 0, 0, 0 ), "legend_rear" },

	[23] = { Vector( -9.35, -8.57, 0.72 ), Angle( 0, 0, 0 ), "legend_rear" },
	[24] = { Vector( 9.35, -8.57, 0.72 ), Angle( 0, 0, 0 ), "legend_rear" },

	[25] = { Vector( -3.1, -8.57, 0.72 ), Angle( 0, 0, 0 ), "legend_rear" },
	[26] = { Vector( 3.1, -8.57, 0.72 ), Angle( 0, 0, 0 ), "legend_rear" },

}

COMPONENT.Sections = {
	["auto_fedsig_legend"] = {
		[1] = { -- ALL LIGHTS
			{ 1, R }, { 2, B },
			{ 3, R }, { 4, B },
			{ 5, R }, { 6, B },
			{ 7, R }, { 8, B },
			{ 9, R }, { 10, B },
			{ 11, R }, { 12, B },
			{ 13, R }, { 14, B },
			{ 15, R }, { 16, B },
			{ 17, R }, { 18, B },
			{ 19, R }, { 20, B },
			{ 21, R }, { 22, B },
			{ 23, R }, { 24, B },
			{ 25, R }, { 26, B },

		},
		[2] = { -- RED SIDE
			{ 1, R }, { 3, R }, { 5, R }, { 7, R }, { 9, R }, { 11, R },
			{ 13, R }, { 15, R }, { 17, R }, { 19, R }, { 21, R }, { 23, R }, { 25, R }
		},
		[3] = { -- BLUE SIDE
			{ 2, B }, { 4, B }, { 6, B }, { 8, B }, { 10, B }, { 12, B }, { 14, B },
			{ 16, B }, { 18, B }, { 20, B }, { 22, B }, { 24, B }, { 26, B }, 
		},
		[4] = {
			{ 5, R }, { 7, R }, { 9, R }, { 11, R }, { 13, R }, { 15, R }, { 17, R }, { 19, R }, { 21, R }
		},
		[5] = {
			{ 6, B }, { 8, B }, { 10, B }, { 12, B }, { 14, B }, { 16, B }, { 18, B }, { 20, B }, { 22, B }
		},
		[6] = {
			{ 3, R }, { 5, R }, { 7, R }, { 9, R }, { 11, R }, { 13, R }, { 15, R }, { 17, R }, { 19, R }, { 21, R }, { 23, A }
		},
		[7] = {
			{ 4, B }, { 6, B }, { 8, B }, { 10, B }, { 12, B }, { 14, B }, { 16, B }, { 18, B }, { 20, B }, { 22, B }, { 24, A }
		},
		[8] = {
			{ 5, R }, { 7, R }, { 9, R }, { 11, R }, { 13, R }, { 15, R }, { 17, R }, { 19, R }, { 21, R }, { 23, A }, { 25, A }
		},
		[9] = {
			{ 6, B }, { 8, B }, { 10, B }, { 12, B }, { 14, B }, { 16, B }, { 18, B }, { 20, B }, { 22, B }, { 24, A }, { 26, A }
		},
		[10] = {
			{ 3, R }, { 4, B }, { 25, A }, { 26, A }, { 23, A }, { 24, A }
		},
		[11] = {
			{ 5, R }, { 7, R }, { 9, R }, { 11, R }, { 13, R }, { 15, R }, { 17, R }, { 19, R }, { 21, R },
			{ 6, B }, { 8, B }, { 10, B }, { 12, B }, { 14, B }, { 16, B }, { 18, B }, { 20, B }, { 22, B }
		},
		-- Pattern 6 RED
		[12] = {
			{ 13, R }
		},
		[13] = {
			{ 11, R }, { 13, R }, { 15, R }
		},
		[14] = {
			{ 9, R }, { 11, R }, { 13, R }, { 15, R }, { 17, R }
		},
		[15] = {
			{ 7, R }, { 9, R }, { 11, R }, { 13, R }, { 15, R }, { 17, R }, { 19, R }
		},
		[16] = {
			{ 5, R }, { 7, R }, { 9, R }, { 11, R }, { 13, R }, { 15, R }, { 17, R }, { 19, R }, { 21, R }
		},
		[17] = {
			{ 3, R }, { 5, R }, { 7, R }, { 9, R }, { 11, R }, { 13, R }, { 15, R }, { 17, R }, { 19, R }, { 21, R }, { 23, A }
		},
		-- FULL RED
		[18] = {
			{ 1, R }, { 3, R }, { 5, R }, { 7, R }, { 9, R }, { 11, R }, { 13, R }, { 15, R }, { 17, R }, { 19, R }, { 21, R }, { 23, A }, { 25, A }
		},
		-- Pattern 6 BLUE
		[19] = {
			{ 14, B }
		},
		[20] = {
			{ 12, B }, { 14, B }, { 16, B }
		},
		[21] = {
			{ 10, B }, { 12, B }, { 14, B }, { 16, B }, { 18, B }
		},
		[22] = {
			{ 8, B }, { 10, B }, { 12, B }, { 14, B }, { 16, B }, { 18, B }, { 20, B }
		},
		[23] = {
			{ 6, B }, { 8, B }, { 10, B }, { 12, B }, { 14, B }, { 16, B }, { 18, B }, { 20, B }, { 22, B }
		},
		[24] = {
			{ 4, B }, { 6, B }, { 8, B }, { 10, B }, { 12, B }, { 14, B }, { 16, B }, { 18, B }, { 20, B }, { 22, B }, { 24, A }
		},
		-- FULL BLUE
		[25] = {
			{ 2, B }, { 4, B }, { 6, B }, { 8, B }, { 10, B }, { 12, B }, { 14, B }, { 16, B }, { 18, B }, { 20, B }, { 22, B }, { 24, A }, { 26, A }
		},
		-- Pattern 7
		[26] = {
			{ 3, R }, { 23, A }, { 25, A }
		},
		[27] = {
			{ 4, B }, { 24, A }, { 26, A }
		},
	},
}

COMPONENT.Patterns = {
	["auto_fedsig_legend"] = {
		["all"] = { 1, 0, 1, 0, 1, 0 },
		["alt_slow"] = { 2, 2, 2, 2, 0, 3, 3, 3, 3, 0 },
		["pattern_1"] = { 4, 4, 4, 4, 0, 5, 5, 5, 5, 0 },
		["pattern_2"] = { 6, 6, 6, 6, 0, 7, 7, 7, 7, 0 },
		["pattern_3"] = { 8, 8, 8, 8, 0, 9, 9, 9, 9, 0 },
		["pattern_4"] = { 8, 8, 8, 0, 9, 9, 9, 0 },
		["pattern_5"] = { 10, 10, 10, 10, 0, 11, 11, 11, 11, 0 },
		["pattern_6"] = { 
			13, 15, 17, 18, 18,
			20, 22, 24, 25, 25
		},
		["pattern_7"] = { 26, 26, 26, 26, 0, 27, 27, 27, 27, 0, 18, 18, 18, 18, 0, 25, 25, 25, 25, 0 }
	}
}

EMVU:AddAutoComponent( COMPONENT, name )