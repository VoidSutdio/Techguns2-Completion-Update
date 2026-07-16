// Techguns GunStats exhaustive test script (single weapon, runtime-safe).
// Target weapon: ak47
// This version uses only methods available in older/stock runtime:
// - setWeaponStat(...)
// Advanced methods (setWeaponZoom, setWeaponSilenced, etc.) are omitted
// because they are not exposed by your currently loaded mod build.

val weapon = "ak47";

// ------------------------------------------------------------
// 1) setWeaponStat(...) with ALL EnumGunStat values
// ------------------------------------------------------------
mods.techguns.GunStats.setWeaponStat(weapon, "DAMAGE", 9.0);
mods.techguns.GunStats.setWeaponStat(weapon, "DAMAGE_MIN", 5.0);
mods.techguns.GunStats.setWeaponStat(weapon, "DAMAGE_DROP_START", 18.0);
mods.techguns.GunStats.setWeaponStat(weapon, "DAMAGE_DROP_END", 42.0);
mods.techguns.GunStats.setWeaponStat(weapon, "BULLET_SPEED", 4.5);
mods.techguns.GunStats.setWeaponStat(weapon, "BULLET_DISTANCE", 180.0);
mods.techguns.GunStats.setWeaponStat(weapon, "GRAVITY", 0.02);
mods.techguns.GunStats.setWeaponStat(weapon, "MINING_SPEED", 1.0);
mods.techguns.GunStats.setWeaponStat(weapon, "MIN_FIRE_TIME", 4.0);
mods.techguns.GunStats.setWeaponStat(weapon, "ACCURACY", 0.03);
mods.techguns.GunStats.setWeaponStat(weapon, "SPREAD", 0.7);
mods.techguns.GunStats.setWeaponStat(weapon, "PENETRATION", 0.1);
mods.techguns.GunStats.setWeaponStat(weapon, "CLIP_SIZE", 30.0);
mods.techguns.GunStats.setWeaponStat(weapon, "AMMO_COUNT", 180.0);
mods.techguns.GunStats.setWeaponStat(weapon, "BULLET_COUNT", 1.0);
mods.techguns.GunStats.setWeaponStat(weapon, "RELOAD_TIME", 38.0);

// End of exhaustive runtime-safe list.
