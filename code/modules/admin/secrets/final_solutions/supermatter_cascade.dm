/datum/admin_secret_item/final_solution/supermatter_cascade
	name = "Supermatter Cascade"

/datum/admin_secret_item/final_solution/supermatter_cascade/execute(var/mob/user)
	. = ..()
	if(!.)
		return
	var/choice = tgui_alert(user, "You sure you want to destroy the universe and create a large explosion at your location? Misuse of this could result in removal of flags or hilarity.","WARNING!", list("NO TIME TO EXPLAIN", "Cancel"))
	if(choice == "NO TIME TO EXPLAIN")
		explosion(get_turf(user), 8, 16, 24, 32, 1)
		var/turf/our = get_turf(user)
		if(our)
			for(var/level in using_map.event_levels)
				var/turf/T = get_turf(locate(our.x,our.y,level))
				new /turf/unsimulated/wall/supermatter(T)
		SetUniversalState(/datum/universal_state/supermatter_cascade)
		message_admins("[key_name_admin(user)] has managed to destroy the universe with a supermatter cascade. Good job, [key_name_admin(user)]")
