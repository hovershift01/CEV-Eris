/obj/item/gun/projectile/pistol/type_90
	name = "OS Type 90 HG .35 Auto \"Mozhu\"" //last emperor
	desc = "Highly advanced gauss pistol manufactured by the Alliance right before it\'s collapse. Uses both standard and high capacity .35 Auto magazines."
	icon = 'icons/obj/guns/projectile/os/type_90.dmi'
	icon_state = "type_90"
	item_state = "type_90"
	w_class = ITEM_SIZE_SMALL
	can_dual = TRUE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 2)
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_PLATINUM = 4, MATERIAL_PLASTIC = 6)
	price_tag = 2600
	caliber = CAL_PISTOL
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL|MAG_WELL_H_PISTOL
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	magazine_type = /obj/item/ammo_magazine/cspistol
	damage_multiplier = 1.2
	penetration_multiplier = 1.4
	proj_step_multiplier = 1.4
	init_recoil = HANDGUN_RECOIL(0.8)
	spawn_tags = SPAWN_TAG_GUN_OS
	fire_sound = 'sound/weapons/guns/fire/energy_shotgun.ogg'
	unload_sound = 'sound/weapons/guns/interact/pistol_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/pistol_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/pistol_cock.ogg'
	init_firemodes = list(
        SEMI_AUTO_300,
		BURST_3_ROUND_DAMAGE
//		WEAPON_CHARGE    // charge mode on balistics doesnt work. need to make a balistic version of it -Valo
        )

	spawn_blacklisted = TRUE //until loot rework

	serial_type = "OS"


/obj/item/gun/projectile/pistol/type_90/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "_mag"
		itemstring += "_mag"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/pistol/type_90/Initialize()
	. = ..()
	update_icon()
