// Techguns ArmorStats exhaustive test script (single armor + single material).
// Target armor item: t3_power_chestplate (PoweredArmor)
// Target material: T3_POWER

// ------------------------------------------------------------
// Base identifiers
// ------------------------------------------------------------
val armor = "t3_power_chestplate";
val material = "T3_POWER";

// ------------------------------------------------------------
// 1) Armor stat overload #1: single-value setter
// ------------------------------------------------------------
mods.techguns.ArmorStats.setArmorStat(armor, "SPEED", 0.20);

// ------------------------------------------------------------
// 2) Armor stat overload #2: powered + unpowered setter
//    Enumerates ALL EnumArmorStat values
// ------------------------------------------------------------
mods.techguns.ArmorStats.setArmorStat(armor, "SPEED", 0.20, 0.05);
mods.techguns.ArmorStats.setArmorStat(armor, "JUMP", 0.30, 0.05);
mods.techguns.ArmorStats.setArmorStat(armor, "FALL_DAMAGE", 0.60, 0.10);
mods.techguns.ArmorStats.setArmorStat(armor, "FALL_HEIGHT", 4.0, 1.0);
mods.techguns.ArmorStats.setArmorStat(armor, "MINING_SPEED", 0.25, 0.05);
mods.techguns.ArmorStats.setArmorStat(armor, "WATER_MINING_SPEED", 1.50, 0.20);
mods.techguns.ArmorStats.setArmorStat(armor, "GUN_ACCURACY", 0.08, 0.02);
mods.techguns.ArmorStats.setArmorStat(armor, "EXTRA_HEARTS", 6.0, 1.0);
mods.techguns.ArmorStats.setArmorStat(armor, "NIGHTVISION", 1.0, 0.0);
mods.techguns.ArmorStats.setArmorStat(armor, "KNOCKBACK_RESITANCE", 0.35, 0.10);
mods.techguns.ArmorStats.setArmorStat(armor, "STEP_ASSIST", 1.0, 0.0);
mods.techguns.ArmorStats.setArmorStat(armor, "OXYGEN_GEAR", 1.0, 0.0);
mods.techguns.ArmorStats.setArmorStat(armor, "WATER_ELECTROLYZER", 1.0, 0.0);
mods.techguns.ArmorStats.setArmorStat(armor, "COOLING_SYSTEM", 1.0, 0.0);
mods.techguns.ArmorStats.setArmorStat(armor, "WATER_SPEED", 1.25, 0.10);
mods.techguns.ArmorStats.setArmorStat(armor, "RAD_RESISTANCE", 1.50, 0.25);

// ------------------------------------------------------------
// 3) Per-armor direct parameters
// ------------------------------------------------------------
mods.techguns.ArmorStats.setArmorDurability(armor, 3200);
mods.techguns.ArmorStats.setArmorDisplayValue(armor, 12);
mods.techguns.ArmorStats.setArmorKnockbackResistance(armor, 0.35);
mods.techguns.ArmorStats.setArmorRadResistance(armor, 1.25);
mods.techguns.ArmorStats.setArmorHiddenSlots(armor, false, true, true);
mods.techguns.ArmorStats.setArmorRepairMats(armor, <minecraft:iron_ingot>, <minecraft:leather>, 0.5, 4);

// PoweredArmor-only parameters (both battery overload variations)
mods.techguns.ArmorStats.setPoweredArmorMaxPower(armor, 15000);
mods.techguns.ArmorStats.setPoweredArmorBattery(armor, <minecraft:redstone>);
mods.techguns.ArmorStats.setPoweredArmorBattery(armor, <minecraft:redstone>, <minecraft:gunpowder>);

// ------------------------------------------------------------
// 4) Material parameters
// ------------------------------------------------------------
mods.techguns.ArmorStats.setMaterialBaseDurability(material, 520);
mods.techguns.ArmorStats.setMaterialToughness(material, 4.0);

// ALL slot durability factors
mods.techguns.ArmorStats.setMaterialDurabilityFactor(material, "HEAD", 0.25);
mods.techguns.ArmorStats.setMaterialDurabilityFactor(material, "CHEST", 0.35);
mods.techguns.ArmorStats.setMaterialDurabilityFactor(material, "LEGS", 0.25);
mods.techguns.ArmorStats.setMaterialDurabilityFactor(material, "FEET", 0.20);

// ALL damage types for setMaterialArmorValue
mods.techguns.ArmorStats.setMaterialArmorValue(material, "PHYSICAL", 26.0);
mods.techguns.ArmorStats.setMaterialArmorValue(material, "PROJECTILE", 26.0);
mods.techguns.ArmorStats.setMaterialArmorValue(material, "FIRE", 28.0);
mods.techguns.ArmorStats.setMaterialArmorValue(material, "EXPLOSION", 24.0);
mods.techguns.ArmorStats.setMaterialArmorValue(material, "ENERGY", 26.0);
mods.techguns.ArmorStats.setMaterialArmorValue(material, "POISON", 22.0);
mods.techguns.ArmorStats.setMaterialArmorValue(material, "UNRESISTABLE", 22.0); // accepted by parser; material may ignore internally
mods.techguns.ArmorStats.setMaterialArmorValue(material, "ICE", 24.0);
mods.techguns.ArmorStats.setMaterialArmorValue(material, "LIGHTNING", 24.0);
mods.techguns.ArmorStats.setMaterialArmorValue(material, "RADIATION", 30.0);
mods.techguns.ArmorStats.setMaterialArmorValue(material, "DARK", 22.0);
