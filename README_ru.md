<div dir=rtl align=center>

### [**English 🇺🇸**](README.md) / **Русский 🇷🇺**
</div>

<p align="center"><img src="https://cdn.modrinth.com/data/cached_images/706d4415e491f921e6d9c5e8628a81bde5adf93f.png" alt="Logo" width="800"></p>

<h4 align="center">
    <a href="https://www.curseforge.com/minecraft/mc-mods/techguns-ce"><img src="http://cf.way2muchnoise.eu/1417575.svg" alt="CF"></a>
    <a href="https://modrinth.com/mod/techguns"><img src="https://img.shields.io/modrinth/dt/techguns?logo=modrinth&label=&suffix=%20&style=flat&color=242629&labelColor=5ca424&logoColor=1c1c1c" alt="Modrinth"></a>
	<a href="https://discord.gg/TAqk3wJEyp"><img src="https://img.shields.io/discord/332546158108868620?color=5865f2&label=Discord&style=flat" alt="Discord"></a>
</h4>

# **Продолжение** одного из самых популярных модов на оружие на 1.12, [Techguns](https://www.curseforge.com/minecraft/mc-mods/techguns).

> [!IMPORTANT]
> **Поскольку этот форк считается неофициальным, заслуга принадлежит [оригинальному автору!](https://github.com/pWn3d1337)**

ㅤ
![Description](https://cdn.modrinth.com/data/cached_images/fbaf69ad4f9a3b7862fec787242a4bf8f8e6356a.png)
ㅤ

Этот мод - обновлённая версия оригинального заброшенного **Techguns-а** на 1.12.2, постепенно осовременивающийся и преобразующийся в нечто завершённое. Изначальной целью был фикс разных старых багов и доделка оставленных pwn3d-ом незавершённых вещей в моде. Затем это издание продолжило изменяться, а код начал медленно и основательно переделываться, отчего это издание приобрело своё название - Community Edition.


## Изменения, привнесённые этим изданием:
- **Добавлены** недостающие крафты вместе с новыми частями для: MK2 брони; адской боевой брони; УФ-излучателя
- **Супермутанты** теперь появляются в Энде; их фарм необходим для крафта УФ-излучателя, т.к. с них выпадает УФ-элемент!
- **Была изменена** прогрессия в моде: паровую броню стало дороже крафтить и содержать, тем самым остальная броня стала вполне неплохой опцией; с кибердемонов напрямую больше не выпадают кибердетали - с них падает только плоть кибердемона, т.е. они открывают доступ только к фабрикатору; для реакционной камеры же нужен чертёж, который можно найти в адской крепости!
- **Исправлен** старый дюп улучшений посредством металлургического пресса
- **Решены** различные проблемы, связанные с CraftTweaker-ом; например, в крафте в метал. прессе можно выставить несколько предметов вместо "по одному" (например, 2 медные пластины и 5 стальных, чтобы скрафтить песок душ!); также в фабрикаторе можно нормально выставить предметы с .nbt-тегом (например, можно добавить крафт уже заряженной MK2-брони)
- **Исправлен краш** при входе в Незер
- **Гастлинги** теперь действительно _спавнятся_, также они стреляют **ракетами** вместо маленьких огненных зарядов
- **Переработано** большинство GUI, включая: металлургический пресс/пресс для боеприпасов, хим. лабораторию, измельчитель, фабрикатор и реакционную камеру; **переработан** HUD для патронов (который можно изменить в конфигах!)
- **Упрощена** работа реакционной камеры - теперь ей не нужно жёсткое ограничение по кол-ву жидкости!
- **Добавлены** 2 новых данжа: Депо и Большой заводской дом
- **Исправлен краш** при попытке наложить радиацию на сервере
- **Исправлено** отсутствие крафта у **микрореакторов**
- **Улучшены** кластеры руд: теперь их добыча по умолчанию потребляет 80% энергии от предыдущих значений, а также они дают в 2 раза больше ресурсов!
- Многие мобы стали **умнее и/или сложнее для убийства**, особенно живые; они могут сами **открывать двери**, они перестали убивать друг друга, у них появился **слух** и они перестали так охотно падать в фармилки для мобов!
- **Исправлено** выпадение больше одной пилы с Психопата Стива
- Система радиации скорректирована, чтобы она была более **опасной** + исправлены грамм. ошибки, не позволяшие урану быть дейстивтельно радиоактивными -> система радиации по умолчанию **включена** (что можно изменить в конфигах!)
- **Вертолёты** стали куда более опасны - они стали прочнее и стреляют куда большим кол-вом ракет
- **Добавлены** новые камуфляжи для разных сетов брони!
- В общем - **более завершённый и доделанный** Techguns и даже больше!


## Важная заметка: мод не полностью исправлен в вопросе багов; могли остаться некоторые незначительные ошибки/визуальные баги. О них можно сообщить [во вкладке "Issues" в этом репозитории](https://github.com/TheSlize/Techguns2-Completion-Update/issues)!

## CraftTweaker: настройка брони

В этом форке есть методы `mods.techguns.ArmorStats` для настройки брони через скрипты.

Доступные методы:
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

Методы оружия (`mods.techguns.GunStats`):
- `setWeaponStat(String weaponname, String fieldname, float value)` (`DAMAGE`, `DAMAGE_MIN`, `DAMAGE_DROP_START`, `DAMAGE_DROP_END`, `BULLET_SPEED`, `BULLET_DISTANCE`, `GRAVITY`, `MINING_SPEED`, `MIN_FIRE_TIME`, `ACCURACY`, `SPREAD`, `PENETRATION`, `CLIP_SIZE`, `AMMO_COUNT`, `BULLET_COUNT`, `RELOAD_TIME`)
- `setWeaponDamageDrop(String weaponname, float start, float end, float minDamage)`
- `setWeaponZoom(String weaponname, float zoomMult, boolean toggleZoom, float zoomSpreadMultiplier, boolean fireCenteredZoomed)`
- `setWeaponShotgunSpread(String weaponname, int bulletCount, float spread, boolean burst)`
- `setWeaponSilenced(String weaponname, boolean value)`
- `setWeaponShootWithLeftClick(String weaponname, boolean value)`
- `setWeaponHandType(String weaponname, String handType)` (`ONE_HANDED` / `TWO_HANDED`)
- `setWeaponAIStats(String weaponname, float attackRange, int attackTime, int burstCount, int burstAttackTime)`

Пример (`scripts/techguns_armor.zs`):

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
