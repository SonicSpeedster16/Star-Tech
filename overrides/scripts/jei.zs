#Name: jei.zs
#Author: SonicSpeedster16
#Description: Hide/add tooltips to items in JEI
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

print("==== Initializing jei.zs ====");

# Custom Tooltips
<tconstruct:toolforge>.addTooltip(format.yellow("Can be made from any metal block"));
<conarm:armorforge>.addTooltip(format.yellow("Can be made from any metal block"));
<extrautils2:goldenlasso>.addTooltip(format.red("WARNING! Mobs may disappear when released! Recommend you use Animal Nets or Ender IO soul vials instead"));
<galacticraftcore:dungeonfinder>.addTooltip(format.yellow("Can be obtained in Survival Mode from Tier 2 Treasure Chests on Mars"));
<matteroverdrive:microwave>.addTooltip(format.yellow("Decorative only"));
<lightningcraft:material:11>.addTooltip(format.yellow("Can be found in structures on the ceiling of the Underworld"));
<minecraft:nether_wart>.addTooltip(format.aqua("Nether Wart must be grown on tilled soul sand with lava nearby to hydrate"));
<appliedenergistics2:sky_stone_block>.addTooltip(format.aqua("You can only get this from fallen meteors in the Mining Dimension"));
<appliedenergistics2:sky_compass>.addTooltip(format.aqua("You can find AE2 meteors only in the Mining Dimension"));
<hatchery:animalnet>.addTooltip(format.yellow("This net can only capture chickens"));
<liquid:sulfuricacid>.addTooltip(format.yellow("Can be used as fuel in a Tinkers smeltery"));
<liquid:astralsorcery.liquidstarlight>.addTooltip(format.yellow("Can be used as fuel in a Tinkers smeltery"));
<liquid:pyrotheum>.addTooltip(format.yellow("Can be used as fuel in a Tinkers smeltery"));

# Hide ores not used in world gen
JEI.removeAndHide(<forestry:resources:1>); /* Copper Ore */
JEI.removeAndHide(<forestry:resources:2>); /* Tin Ore */
JEI.removeAndHide(<iceandfire:silver_ore>); /* Silver Ore */
JEI.removeAndHide(<bigreactors:oreanglesite>); /* Anglesite Ore */
JEI.removeAndHide(<bigreactors:orebenitoite>); /* Benitoite Ore */

# Hide items that are exploitable or cause crashes
JEI.removeAndHide(<hooked:hook:3>); /* Causes server crashes */
JEI.removeAndHide(<twilightforest:uncrafting_table>); /* Explotable */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
Hide other modded items (such as particles, items with no uses, etc.):
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

# Extreme Reactors
JEI.removeAndHide(<bigreactors:mineralanglesite>); /* Anglesite Crystal */
JEI.removeAndHide(<bigreactors:mineralbenitoite>); /* Benitoite Crystal */

# Matter Overdrive
JEI.removeAndHide(<matteroverdrive:matter_pipe>); /* Broken - item doesn't work */
JEI.removeAndHide(<matteroverdrive:heavy_matter_pipe>); /* Broken - item doesn't work */

# MeeCreeps
JEI.removeAndHide(<meecreeps:portalblock>);
JEI.removeAndHide(<meecreeps:projectile>);

# Monk Mod
JEI.removeAndHide(<monk:monk_level>);

# More Planets
JEI.removeAndHide(<moreplanets:fronos_iron_ore>);
JEI.removeAndHide(<moreplanets:fronos_copper_ore>);
JEI.removeAndHide(<moreplanets:fronos_tin_ore>);
JEI.removeAndHide(<moreplanets:fronos_lead_ore>);
JEI.removeAndHide(<moreplanets:fronos_silicon_ore>);
JEI.removeAndHide(<moreplanets:fronos_quartz_ore>);
JEI.removeAndHide(<moreplanets:fronos_coal_ore>);
JEI.removeAndHide(<moreplanets:fronos_grass_block>);
JEI.removeAndHide(<moreplanets:fronos_dirt>);
JEI.removeAndHide(<moreplanets:fronos_coarse_dirt>);
JEI.removeAndHide(<moreplanets:fronos_stone>);
JEI.removeAndHide(<moreplanets:fronos_cobblestone>);
JEI.removeAndHide(<moreplanets:fronos_stone_bricks>);
JEI.removeAndHide(<moreplanets:fronos_mossy_stone_bricks>);
JEI.removeAndHide(<moreplanets:fronos_cracked_stone_bricks>);
JEI.removeAndHide(<moreplanets:fronos_chiseled_stone_bricks>);
JEI.removeAndHide(<moreplanets:fronos_dungeon_brick>);
JEI.removeAndHide(<moreplanets:fronos_farmland>);

print("==== Initialized jei.zs ====");
