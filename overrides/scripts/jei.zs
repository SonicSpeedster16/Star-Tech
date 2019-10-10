#Name: jei.zs
#Author: SonicSpeedster16
#Description: Hide/add tooltips to items in JEI
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

print("==== Initializing jei.zs ====");

/* ~~~~~~~~~~~~ 
Custom Tooltips
~~~~~~~~~~~~~~*/
# Notes
<hatchery:animalnet>.addTooltip(format.gold("This net can only capture chickens"));
<matteroverdrive:microwave>.addTooltip(format.yellow("Decorative only"));
<conarm:armorforge>.addTooltip(format.yellow("Can be made from any metal block"));
<tconstruct:toolforge>.addTooltip(format.yellow("Can be made from any metal block"));
<thermalfoundation:material:771>.addTooltip(format.yellow("Can be used in a furnace as fuel")); /* Sulfur */
<thermalfoundation:material:832>.addTooltip(format.yellow("Can be used in a furnace as fuel")); /* Rosin */
<minecraft:fire_charge>.addTooltip(format.yellow("Can be used in a furnace as fuel"));

# Locational tips
<galacticraftcore:dungeonfinder>.addTooltip(format.aqua("Can be obtained in Survival Mode from Tier 2 Treasure Chests on Mars"));
<appliedenergistics2:sky_stone_block>.addTooltip(format.aqua("Sky Stone can only be obtained from fallen meteors in the Mining Dimension"));
<appliedenergistics2:sky_compass>.addTooltip(format.aqua("AE2 meteors can only be found in the Mining Dimension"));
<lightningcraft:material:11>.addTooltip(format.aqua("Can be found in structures on the ceiling of the Underworld")); /* Ichor */

# Warnings
<extrautils2:goldenlasso>.addTooltip(format.red("WARNING! Mobs may disappear when released! Recommend you use Animal Nets or Ender IO soul vials instead."));
<moreplanets:ion_cannon_schematic>.addTooltip(format.red("NOTE: The ION Cannon is not yet implemented, making this schematic unusable."));

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Remove non-generated items and items with known issues
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

# Remove ores that are not generated in the world
JEI.removeAndHide(<forestry:resources:1>); /* Copper Ore */
JEI.removeAndHide(<forestry:resources:2>); /* Tin Ore */
JEI.removeAndHide(<iceandfire:silver_ore>); /* Silver Ore */
JEI.removeAndHide(<bigreactors:oreanglesite>); /* Anglesite Ore */
JEI.removeAndHide(<bigreactors:orebenitoite>); /* Benitoite Ore */

# Remove items that are exploitable or are known to cause crashes
JEI.removeAndHide(<twilightforest:uncrafting_table>); /* Exploitable */
JEI.removeAndHide(<netherex:obsidian_boat>); /* Exploitable */
JEI.removeAndHide(<hooked:hook:3>); /* Causes server crashes */
JEI.removeAndHide(<lightningcraft:lightning_miner>); /* World crashes */
JEI.removeAndHide(<matteroverdrive:matter_pipe>); /* Broken - item doesn't work */
JEI.removeAndHide(<matteroverdrive:heavy_matter_pipe>); /* Broken - item doesn't work */

# Remove other items that are not needed
JEI.removeAndHide(<biomesoplenty:biome_finder>); /* Functionality provided by Nature's Compass */

# Remove extra Blocks of Charcoal
JEI.removeAndHide(<actuallyadditions:block_misc:5>);
JEI.removeAndHide(<chisel:block_charcoal2:1>);
JEI.removeAndHide(<forestry:charcoal>);
JEI.removeAndHide(<mekanism:basicblock:3>);

# Remove Logistics Pipes items that have no uses
JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_mj>);
JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_eu_lv>);
JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_eu_hv>);
JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_eu_mv>);
JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_eu_ev>);
JEI.removeAndHide(<logisticspipes:power_provider_eu>);
JEI.removeAndHide(<logisticspipes:power_provider_mj>);

print("==== Initialized jei.zs ====");
