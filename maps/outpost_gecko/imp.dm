#if !defined(USING_MAP_DATUM)

	#include "../outpost21/outpost-05-centcom.dmm"
	#include "../outpost21/outpost-06-misc.dmm"
	#include "../outpost21/outpost-07-asteroid.dmm"
	#include "../outpost21/outpost-10-vr.dmm"
	#include "imp.dmm"

	#include "imp_defines.dm"
	#include "imp_sectors.dm"
	#include "imp_areas.dm"

	#include "../outpost21/outpost_defines.dm"
	#include "../outpost21/outpost_areas.dm"
	#include "../outpost21/outpost_turfs.dm"
	#include "../outpost21/outpost_shuttle_defs.dm"
	#include "../outpost21/outpost_shuttles.dm"
	#include "../outpost21/outpost_telecomms.dm"
	#include "../outpost21/outpost_jobs.dm"
	#include "../outpost21/outpost_things.dm"
	#include "../outpost21/job/outfits.dm"

	#define USING_MAP_DATUM /datum/map/imp

	#warn Please destroy imp before committing!

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Virgo_minitest

#endif
