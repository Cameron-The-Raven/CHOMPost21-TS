#define Z_LEVEL_MAIN_IMP					1

/datum/map/imp
	name = "Blue Bird"
	full_name = "NTS-447AE Blue Bird"
	path = "imp"

	lobby_icon = 'icons/misc/OUTPOST21.gif'
	lobby_screens = list()
	id_hud_icons = 'icons/mob/hud_jobs_vr.dmi'

	accessible_z_levels = list("1" = 100)
	base_turf_by_z = list("1" = /turf/space)

	zlevel_datum_type = /datum/map_z_level/imp

	default_law_type = /datum/ai_laws/eshui_standard

	station_name  = "NTS-447AE Blue Bird"
	station_short = "Blue Bird"
	dock_name     = "Blue Bird"
	boss_name     = "Central Command"
	boss_short    = "CentCom"
	company_name  = "ESHUI"
	company_short = "ES"
	starsys_name  = "SL-340"
	use_overmap = TRUE
	overmap_size = 25
	overmap_event_areas = 9
	overmap_z = 2
	map_levels = list(
			1,
			2,
			3,
			4,
			5
		) //IMP SPECIFIC. THIS IS A HORRIBLE HACK BECAUSE ITS A COMFY SHIP NOT A SPACE EXPLORATION BANANZA!!!!!



	shuttle_docked_message = "Test Shuttle Docked"
	shuttle_leaving_dock = "Test Shuttle Leaving"
	shuttle_called_message = "Test Shuttle Coming"
	shuttle_recall_message = "Test Shuttle Cancelled"
	shuttle_name = "NAS |Hawking|"
	emergency_shuttle_docked_message = "Test E-Shuttle Docked"
	emergency_shuttle_leaving_dock = "Test E-Shuttle Left"
	emergency_shuttle_called_message = "Test E-Shuttle Coming"
	emergency_shuttle_recall_message = "Test E-Shuttle Cancelled"


	station_networks = list(
							NETWORK_CARGO,
							NETWORK_CIVILIAN,
							NETWORK_COMMAND,
							NETWORK_ENGINE,
							NETWORK_ENGINEERING,
							NETWORK_ENGINEERING_OUTPOST,
							NETWORK_DEFAULT,
							NETWORK_MEDICAL,
							NETWORK_MINE,
							NETWORK_NORTHERN_STAR,
							NETWORK_RESEARCH,
							NETWORK_RESEARCH_OUTPOST,
							NETWORK_ROBOTS,
							NETWORK_PRISON,
							NETWORK_SECURITY,
							NETWORK_INTERROGATION
							)

	allowed_spawns = list("Elevator", "Cryogenic Storage", "Cyborg Storage")

/datum/map/virgo_minitest/New()
	..()
	SSticker.start_immediately = TRUE

/datum/map_z_level/imp
	z = Z_LEVEL_MAIN_IMP
	name = "Station Level"
	flags = MAP_LEVEL_STATION|MAP_LEVEL_CONTACT|MAP_LEVEL_PLAYER|MAP_LEVEL_CONSOLES|MAP_LEVEL_XENOARCH_EXEMPT
	holomap_legend_x = 220
	holomap_legend_y = 160

/datum/map/imp/perform_map_generation()
/*
	new /datum/random_map/automata/cave_system(null, 1, 1, Z_LEVEL_MAIN_VIRGO_TESTING, world.maxx, world.maxy)
	new /datum/random_map/noise/ore(null, 1, 1, Z_LEVEL_MAIN_VIRGO_TESTING, 64, 64)
*/
