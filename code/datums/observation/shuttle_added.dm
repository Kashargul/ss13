//	Observer Pattern Implementation: Shuttle Added
//		Registration type: /datum/shuttle (register for the global event only)
//
//		Raised when: After a shuttle is initialized.
//
//		Arguments that the called proc should expect:
//			/datum/shuttle/shuttle: the new shuttle
/*
GLOBAL_DATUM_INIT(shuttle_added, /decl/observ/shuttle_added, new)

/decl/observ/shuttle_added
	name = "Shuttle Added"
	expected_type = /datum/shuttle
*/
//Deprecated in favor of comsigs

/*****************************
*  Shuttle Added Handling *
*****************************/

/datum/controller/subsystem/shuttles/initialize_shuttle()
	. = ..()
	if(.)
		SEND_SIGNAL(SSshuttles,COMSIG_OBSERVER_SHUTTLE_ADDED,.)
