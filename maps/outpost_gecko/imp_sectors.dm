// Map template for spawning the shuttle
/datum/map_template/om_ships/imp_stationhopper
	name = "OM Ship - Stationhopper Stationhopper (new Z)"
	desc = "A medium personnel transport shuttle."
	mappath = "maps/outpost_gecko/imp.dmm"
	annihilate = TRUE

// The shuttle's area(s)
/area/shuttle/imp_sh
	name = "\improper Imp Stationhopper"
	icon_state = "green"
	requires_power = 1
	has_gravity = 1

/area/shuttle/imp_sh_engineering
	name = "\improper Imp Stationhopper Engineering"
	icon_state = "yellow"
	requires_power = 1
	has_gravity = 1

/area/shuttle/imp_sh_cockpit
	name = "\improper Imp Stationhopper Cockpit"
	icon_state = "purple"
	requires_power = 1
	has_gravity = 1

/area/shuttle/imp_sh_armory
	name = "\improper Imp Stationhopper Armory"
	icon_state = "red"
	requires_power = 1
	has_gravity = 1

/area/shuttle/imp_sh_research
	name = "\improper Imp Stationhopper Research"
	icon_state = "purple"
	requires_power = 1
	has_gravity = 1

/area/shuttle/imp_sh_kitchen
	name = "\improper Imp Stationhopper Kitchen"
	icon_state = "white"
	requires_power = 1
	has_gravity = 1

/area/shuttle/imp_sh_dorms
	name = "\improper Imp Stationhopper Dorms"
	icon_state = "white"
	requires_power = 1
	has_gravity = 1

/area/shuttle/imp_sh_astraroom
	name = "\improper Imp Stationhopper Astra Room"
	icon_state = "blue"
	requires_power = 1
	has_gravity = 1

/area/shuttle/imp_sh_lounge
	name = "\improper Imp Stationhopper Lounge"
	icon_state = "green"
	requires_power = 1
	has_gravity = 1

/area/shuttle/imp_sh_medical
	name = "\improper Imp Stationhopper Medical"
	icon_state = "white"
	requires_power = 1
	has_gravity = 1

/area/shuttle/imp_sh_general
	name = "\improper Imp Stationhopper General"
	icon_state = "white"
	requires_power = 1
	has_gravity = 1


// The shuttle's 'shuttle' computer
/obj/machinery/computer/shuttle_control/explore/imp_sh
	name = "short jump console"
	shuttle_tag = "Imp Stationhopper"
	req_one_access = list()

// The 'shuttle!'
/datum/shuttle/autodock/overmap/imp_sh
	name = "Imp Stationhopper"
	current_location = "omship_spawn_imp_sh"
	//docking_controller_tag = "imp_sh_docking"
	shuttle_area = list(/area/shuttle/imp_sh,/area/shuttle/imp_sh_engineering,/area/shuttle/imp_sh_cockpit, /area/shuttle/imp_sh_armory, /area/shuttle/imp_sh_research, /area/shuttle/imp_sh_kitchen, /area/shuttle/imp_sh_dorms, /area/shuttle/imp_sh_astraroom, /area/shuttle/imp_sh_lounge, /area/shuttle/imp_sh_medical, /area/shuttle/imp_sh_general)
	defer_initialisation = TRUE //We're not loaded until an admin does it
	fuel_consumption = 2.5
	ceiling_type = /turf/simulated/floor/reinforced/airless

// A shuttle lateloader landmark
/obj/effect/shuttle_landmark/shuttle_initializer/imp_sh
	name = "Imp Stationhopper"
	base_area = /area/space
	base_turf = /turf/space
	landmark_tag = "omship_spawn_imp_sh"
	//docking_controller = "imp_sh_docking"
	shuttle_type = /datum/shuttle/autodock/overmap/imp_sh

// The 'ship'
/obj/effect/overmap/visitable/ship/landable/imp_sh
	name = "Imp Stationhopper"
	scanner_desc = @{"[i]Registration[/i]: ITV Sticky Fingers
[i]Class[/i]: Medium Shuttle
[i]Transponder[/i]: Transmitting (CIV), non-hostile
[b]Notice[/b]: Medium personnel transport vessel"}
	vessel_mass = 6500
	vessel_size = SHIP_SIZE_LARGE
	shuttle = "Imp Stationhopper"
