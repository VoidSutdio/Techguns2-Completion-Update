<div dir=rtl align=center>

### **English 🇺🇸** / [**Русский 🇷🇺**](README_ru.md)
</div>

<p align="center"><img src="https://cdn.modrinth.com/data/cached_images/706d4415e491f921e6d9c5e8628a81bde5adf93f.png" alt="Logo" width="800"></p>

<h4 align="center">
    <a href="https://www.curseforge.com/minecraft/mc-mods/techguns-ce"><img src="http://cf.way2muchnoise.eu/1417575.svg" alt="CF"></a>
    <a href="https://modrinth.com/mod/techguns"><img src="https://img.shields.io/modrinth/dt/techguns?logo=modrinth&label=&suffix=%20&style=flat&color=242629&labelColor=5ca424&logoColor=1c1c1c" alt="Modrinth"></a>
	<a href="https://discord.gg/TAqk3wJEyp"><img src="https://img.shields.io/discord/332546158108868620?color=5865f2&label=Discord&style=flat" alt="Discord"></a>
</h4>

# **A continuation** of one of the most popular 1.12 gun mods, [Techguns](https://www.curseforge.com/minecraft/mc-mods/techguns).

> [!IMPORTANT]
> **Since this fork is considered to be unofficial, the credit goes to the [original author!](https://github.com/pWn3d1337)**

ㅤ
![Description](https://cdn.modrinth.com/data/cached_images/fbaf69ad4f9a3b7862fec787242a4bf8f8e6356a.png)
ㅤ

This mod is a modernized version of original discontinued 1.12 **Techguns** mod, aiming to look more modern and finished than ever. The initial purpose was to fix old various bugs and finish some things left there in the mod by pwn3d. Then this edition continued to change significantly, having its code slowly refactored, thus it turned into Community Edition we know today.


## Changes made by this edition:
- **Added** missing crafts along with new parts for: MK2 armor; Nether Combat armor; UV Emitter
- **Supermutants** now spawn in the End; they are required for UV Emitter craft because of UV element they drop now!
- **Changed** the progression slightly: Steam Armor is more expensive to craft and maintain, making other armors a viable option; Cyberdemons don't drop Cybernetic parts anymore - they drop only Cyberdemon Flesh, becoming a gateway for Fabricator; for Reaction Chamber you need a blueprint which you can find in Nether Fortress!
- **Fixed** the old Upgrade Stack dupe via Metal Press
- **Fixed** various CT issues; for example, you can set multiple items in Metal Press instead of singular ones (for example, 2 copper plates and 5 steel ones to craft a soul sand block!); also now you can properly set .nbt-tagged items as output in the Fabricator (for example, you can make MK2 armor craft there, already charged)
- **Fixed** Minecraft **crashing** when entering the Nether
- **Ghastlings** now do actually _spawn_, also they shoot **rockets** instead of small fireballs
- **Reworked** most of GUI's, including: Ammo Press, Metal Press, Chemical Laboratory, Grinder, Fabricator and Reaction Chamber; **reworked** the ammo HUD (which is changeable in the configs!)
- **Simplified** the Reaction Chamber - now it doesn't need strict amount restrictions for fluid to work properly!
- **Added** 2 new dungeons: Depot and Big Factory House
- **Fixed** Minecraft **crashing** when trying to apply radiation in multiplayer
- **Fixed** nuclear microreactors **not having any craft**
- **Buffed** Ore Clusters: now they consume only 80% of their previous energy multiplier and give 2x of previous ore multiplier!
- Most mobs became **smarter and/or harder**, especially living ones; they can **open doors** by themselves, they stopped friendly-firing themselves, they can **hear** and they stopped falling so much in mob farms willingly!
- Fixed Psycho steve dropping 2 or even 3 chainsaws from one kill
- Radiation system balanced to be more **dangerous** + fixed typos restricting the uranium to be actually radioactive -> radiation system is turned **on** by default from now on
- **Helicopters** are much more dangerous - they are more durable and shoot much more rockets
- **Added** new camouflages for different armor!
- In general - **Ready-to-use** Techguns mod with Completion Update and more!


## Important note: the mod is not fully polished; there may be some minor bugs. You can report them in the ["Issues" tab on this repository](https://github.com/TheSlize/Techguns2-Completion-Update/issues)!

## CraftTweaker: Armor tuning

This fork provides `mods.techguns.ArmorStats` methods to tune armor via scripts.

Supported methods:
- `setArmorStat(String armorname, String stat, float value)`
- `setArmorStat(String armorname, String stat, float powered, float unpowered)`
- `setArmorDurability(String armorname, int durability)`
- `setArmorDisplayValue(String armorname, int value)`
- `setArmorKnockbackResistance(String armorname, float value)`
- `setArmorRadResistance(String armorname, float value)`
- `setArmorHiddenSlots(String armorname, boolean hideFace, boolean hideBack, boolean hideGlove)`
- `setArmorRepairMats(String armorname, IItemStack metal, IItemStack cloth, float metalPercent, int totalMats)`
- `setMaterialArmorValue(String material, String damagetype, float amount)`
- `setMaterialBaseDurability(String material, int baseDurability)`
- `setMaterialDurabilityFactor(String material, String slot, float factor)` (`HEAD`, `CHEST`, `LEGS`, `FEET`)
- `setMaterialToughness(String material, float amount)`
- `setPoweredArmorMaxPower(String armorname, int maxPower)`
- `setPoweredArmorBattery(String armorname, IItemStack battery)`
- `setPoweredArmorBattery(String armorname, IItemStack battery, IItemStack emptyBattery)`

Gun methods (`mods.techguns.GunStats`):
- `setWeaponStat(String weaponname, String fieldname, float value)` (`DAMAGE`, `DAMAGE_MIN`, `DAMAGE_DROP_START`, `DAMAGE_DROP_END`, `BULLET_SPEED`, `BULLET_DISTANCE`, `GRAVITY`, `MINING_SPEED`, `MIN_FIRE_TIME`, `ACCURACY`, `SPREAD`, `PENETRATION`, `CLIP_SIZE`, `AMMO_COUNT`, `BULLET_COUNT`, `RELOAD_TIME`)
- `setWeaponDamageDrop(String weaponname, float start, float end, float minDamage)`
- `setWeaponZoom(String weaponname, float zoomMult, boolean toggleZoom, float zoomSpreadMultiplier, boolean fireCenteredZoomed)`
- `setWeaponShotgunSpread(String weaponname, int bulletCount, float spread, boolean burst)`
- `setWeaponSilenced(String weaponname, boolean value)`
- `setWeaponShootWithLeftClick(String weaponname, boolean value)`
- `setWeaponHandType(String weaponname, String handType)` (`ONE_HANDED` / `TWO_HANDED`)
- `setWeaponAIStats(String weaponname, float attackRange, int attackTime, int burstCount, int burstAttackTime)`

Example (`scripts/techguns_armor.zs`):

```zenscript
mods.techguns.ArmorStats.setArmorDurability("t3_power_chestplate", 2400);
mods.techguns.ArmorStats.setArmorDisplayValue("t3_power_chestplate", 10);
mods.techguns.ArmorStats.setArmorKnockbackResistance("t3_power_chestplate", 0.35);
mods.techguns.ArmorStats.setArmorRadResistance("t3_power_chestplate", 1.0);
mods.techguns.ArmorStats.setArmorHiddenSlots("t3_power_chestplate", false, true, true);
mods.techguns.ArmorStats.setArmorRepairMats("t3_power_chestplate", <techguns:plate_carbon>, <techguns:circuit_board_elite>, 0.5, 4);
mods.techguns.ArmorStats.setPoweredArmorMaxPower("t3_power_chestplate", 10000);
mods.techguns.ArmorStats.setPoweredArmorBattery("t3_power_chestplate", <techguns:energy_cell>, <techguns:energy_cell_empty>);
mods.techguns.ArmorStats.setArmorStat("t3_power_chestplate", "SPEED", 0.08);

mods.techguns.ArmorStats.setMaterialBaseDurability("T3_POWER", 420);
mods.techguns.ArmorStats.setMaterialDurabilityFactor("T3_POWER", "CHEST", 0.35);
mods.techguns.ArmorStats.setMaterialToughness("T3_POWER", 3.0);
mods.techguns.ArmorStats.setMaterialArmorValue("T3_POWER", "PROJECTILE", 24.0);

mods.techguns.GunStats.setWeaponStat("ak47", "DAMAGE", 8.0);
mods.techguns.GunStats.setWeaponStat("ak47", "ACCURACY", 0.03);
mods.techguns.GunStats.setWeaponStat("ak47", "MIN_FIRE_TIME", 4);
mods.techguns.GunStats.setWeaponStat("ak47", "RELOAD_TIME", 38);
mods.techguns.GunStats.setWeaponDamageDrop("ak47", 18, 42, 5.5);
mods.techguns.GunStats.setWeaponZoom("ak47", 1.35, false, 0.7, false);
mods.techguns.GunStats.setWeaponHandType("ak47", "TWO_HANDED");
```
