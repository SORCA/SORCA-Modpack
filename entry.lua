declare_plugin("SORCA Modpack",
{
displayName     = _("SORCA Modpack"),
developerName   =   "ScriptKiddie",
-- ..\DCSWorld\Scripts\Database\planes\B-1B.lua original plane def

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("SORCA"),

version		 = __DCS_VERSION__,
state		 = "installed",
info		 = _("A mod to allow the use of AI planes without breaking IC"),

InputProfiles =
{
		["B-1B"]       = current_mod_path .. '/Input/B-1B',
		["An-26B"]     = current_mod_path .. '/Input/An-26B',
		["C-130"]      = current_mod_path .. '/Input/C-130',
		["mig-23ml"]  = current_mod_path .. '/Input/MiG-23MLD',
		["mig-25p"]   = current_mod_path .. '/Input/MiG-25PD',
		["mig-27"]    = current_mod_path .. '/Input/MiG-27K',
		["mig-31"]     = current_mod_path .. '/Input/MiG-31',
		["Su-24M"]     = current_mod_path .. '/Input/Su-24M',
		["Su-34"]      = current_mod_path .. '/Input/Su-34',
		["Tu-160"]     = current_mod_path .. '/Input/Tu-160',
		["f-4"]       = current_mod_path .. '/Input/F-4E',
},


Skins	=
	{
		{
			name	= _("SORCA"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("SORCA"),
			dir			    = "Missions",
		},
	},		
	
LogBook =
	{
		{
			name		= _("B-1B"),
			type		= "B-1B",
		},
		{
			name		= _("An-26B"),
			type		= "An-26B",
		},
		{
			name		= _("C-130"),
			type		= "C-130",
		},
		{
			name		= _("F-4E"),
			type		= "F-4E",
		},
		{
			name		= _("MiG-23MLD"),
			type		= "MiG-23MLD",
		},
		{
			name		= _("MiG-25PD"),
			type		= "MiG-25PD",
		},
		{
			name		= _("MiG-27K"),
			type		= "MiG-27K",
		},
		{
			name		= _("MiG-31"),
			type		= "MiG-31",
		},
		{
			name		= _("Su-24M"),
			type		= "Su-24M",
		},	
		{
			name		= _("Su-34"),
			type		= "Su-34",
		},
		{
			name		= _("Tu-160"),
			type		= "Tu-160",
		},
	},	
})

mount_vfs_texture_path  (current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Textures/")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
dofile	                (current_mod_path ..  '/Views/Tu-160.lua')
make_view_settings      ('Tu-160', ViewSettings, SnapViews)
dofile	                (current_mod_path ..  "/Views/MiG-27K.lua")
make_view_settings      ('MiG-27K', ViewSettings, SnapViews)
dofile	                (current_mod_path ..  "/Views/B-1B.lua")
make_view_settings      ('B-1B', ViewSettings, SnapViews)
dofile	                (current_mod_path ..  "/Views/An-26B.lua")
make_view_settings      ('An-26B', ViewSettings, SnapViews)
dofile	                (current_mod_path ..  "/Views/C-130.lua")
make_view_settings      ('C-130', ViewSettings, SnapViews)
dofile	                (current_mod_path ..  "/Views/MiG-23MLD.lua")
make_view_settings      ('MiG-23MLD', ViewSettings, SnapViews)
dofile	                (current_mod_path ..  "/Views/MiG-25PD.lua")
make_view_settings      ('MiG-25PD', ViewSettings, SnapViews)
dofile	                (current_mod_path ..  "/Views/MiG-31.lua")
make_view_settings      ('MiG-31', ViewSettings, SnapViews)
dofile	                (current_mod_path ..  "/Views/Su-24M.lua")
make_view_settings      ('Su-24M', ViewSettings, SnapViews)
dofile	                (current_mod_path ..  "/Views/Su-34.lua")
make_view_settings      ('Su-34', ViewSettings, SnapViews)
dofile	                (current_mod_path ..  "/Views/Tu-160.lua")
make_view_settings      ('Tu-160', ViewSettings, SnapViews)
dofile	                (current_mod_path ..  "/Views/F-4E.lua")
make_view_settings      ('F-4E', ViewSettings, SnapViews)

---------------------------------------------------------------------------------------------------------------------------------------------------------

make_flyable('B-1B'     , current_mod_path..'/Cockpit/B-1B/Scripts_SFM',       {nil,old = 17}, current_mod_path..'/comm/B-1B.lua')
make_flyable('An-26B'   , current_mod_path..'/Cockpit/An-26B/Scripts_SFM/',    {nil,old = 54}, current_mod_path..'/comm/An-26B.lua')
make_flyable('C-130'    , current_mod_path..'/Cockpit/C-130/Scripts_SFM/',     {nil,old = 17}, current_mod_path..'/comm/C-130.lua')
make_flyable('MiG-23MLD', current_mod_path..'/Cockpit/MiG-23MLD/Scripts_SFM/', {nil,old = 2}, current_mod_path..'/comm/MiG-23MLD.lua')
make_flyable('MiG-25PD' , current_mod_path..'/Cockpit/MiG-25PD/Scripts_SFM/',  {nil,old = 4},  current_mod_path..'/comm/MiG-25PD.lua')
make_flyable('MiG-27K'  , current_mod_path..'/Cockpit/MiG-27K/Scripts_SFM/',   {nil,old = 54}, current_mod_path..'/comm/MiG-27K.lua')
make_flyable('MiG-31'   , current_mod_path..'/Cockpit/MiG-31/Scripts_SFM/',    {nil,old = 4},  current_mod_path..'/comm/MiG-31.lua')
make_flyable('Su-24M'   , current_mod_path..'/Cockpit/Su-24M/Scripts_SFM/',    {nil,old = 54}, current_mod_path..'/comm/Su-24M.lua')
make_flyable('Su-34'    , current_mod_path..'/Cockpit/Su-34/Scripts_SFM/',     {nil,old = 4},  current_mod_path..'/comm/Su-34.lua')
make_flyable('Tu-160'   , current_mod_path..'/Cockpit/Tu-160/Scripts_SFM/',    {nil,old = 54}, current_mod_path..'/comm/Tu-160.lua')
make_flyable('F-4E'     , current_mod_path..'/Cockpit/F-4E/Scripts_SFM/',      {nil,old = 2}, current_mod_path..'/comm/F-4E.lua')
---------------------------------------------------------------------------------------------------------------------------------------------------------

plugin_done()
