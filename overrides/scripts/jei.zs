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
<logisticspipes:sign_creator>.addTooltip(format.red("WARNING: May cause severe FPS lag!"));
<extrautils2:goldenlasso>.addTooltip(format.red("WARNING: Mobs may disappear when released! Recommend you use Animal Nets or Ender IO soul vials instead."));
<moreplanets:ion_cannon_schematic>.addTooltip(format.red("NOTE: The ION Cannon is not yet implemented, making this schematic unusable."));

/* ~~~~~~~~~
Remove items
~~~~~~~~~~~*/

# Remove ores that are not generated in the world
JEI.removeAndHide(<forestry:resources:1>); /* Copper Ore */
JEI.removeAndHide(<forestry:resources:2>); /* Tin Ore */
JEI.removeAndHide(<iceandfire:silver_ore>); /* Silver Ore */
JEI.removeAndHide(<mekanism:oreblock:1>); /* Copper Ore */
JEI.removeAndHide(<mekanism:oreblock:2>); /* Tin Ore */
JEI.removeAndHide(<bigreactors:oreanglesite>); /* Anglesite Ore */
JEI.removeAndHide(<bigreactors:orebenitoite>); /* Benitoite Ore */

# Remove duplicate items
JEI.removeAndHide(<actuallyadditions:block_misc:5>); /* Block of Charcoal */
JEI.removeAndHide(<chisel:block_charcoal2:1>); /* Block of Charcoal */
JEI.removeAndHide(<forestry:charcoal>); /* Block of Charcoal */
JEI.removeAndHide(<mekanism:basicblock:3>); /* Block of Charcoal */
JEI.removeAndHide(<biomesoplenty:gem:6>); /* Extra Sapphire gem */
JEI.removeAndHide(<biomesoplenty:gem_block:6>); /* Extra Block of Sapphire */
JEI.removeAndHide(<iceandfire:silver_nugget>); /* Extra Silver Nugget */
JEI.removeAndHide(<iceandfire:silver_ingot>); /* Extra Silver Ingot */
JEI.removeAndHide(<iceandfire:silver_block>); /* Extra Block of Silver */
// Food
JEI.removeAndHide(<harvestcraft:groundbeefitem>); /* Removed in favor of Galacticraft's Ground Beef */
JEI.removeAndHide(<actuallyadditions:item_food:0>); /* Removed in favor of Pam's Cheese */
JEI.removeAndHide(<actuallyadditions:item_misc:4>); /* Removed in favor of Pam's Dough */
JEI.removeAndHide(<actuallyadditions:item_food:7>); /* Removed in favor of Pam's Noodles */
JEI.removeAndHide(<actuallyadditions:item_food:2>); /* Removed in favor of Pam's Carrot Juice */
JEI.removeAndHide(<actuallyadditions:item_food:6>); /* Removed in favor of Pam's Spaghetti */
JEI.removeAndHide(<actuallyadditions:item_food:5>); /* Removed in favor of Pam's Fries */
JEI.removeAndHide(<actuallyadditions:item_food:9>); /* Removed in favor of Pam's Chocolate */
JEI.removeAndHide(<actuallyadditions:item_food:10>); /* Removed in favor of Pam's Toast */
JEI.removeAndHide(<actuallyadditions:item_food:13>); /* Removed in favor of Pam's Burgers */
JEI.removeAndHide(<galacticraftcore:food:8>); /* Removed in favor of Pam's Burgers */
JEI.removeAndHide(<actuallyadditions:item_food:14>); /* Removed in favor of Pam's Pizza */
JEI.removeAndHide(<enderio:item_material:21>); /* Removed in favor of Pam's flour */
JEI.removeAndHide(<appliedenergistics2:material:4>); /* Removed in favor of Pam's flour */
JEI.removeAndHide(<harvestcraft:saltitem>); /* Removed in favor of Mekanism Salt */
JEI.removeAndHide(<actuallyadditions:item_food:20>); /* Removed in favor of Tinkers Bacon Jerky */
JEI.removeAndHide(<actuallyadditions:item_food:15>); /* Baguette */
JEI.removeAndHide(<actuallyadditions:item_food:18>); /* Doughnut */


# Remove items that are exploitable or are known to cause crashes
JEI.removeAndHide(<twilightforest:uncrafting_table>); /* Exploitable */
JEI.removeAndHide(<netherex:obsidian_boat>); /* Exploitable */
JEI.removeAndHide(<minecraft:record_11>); /* Exploitable */
JEI.removeAndHide(<hooked:hook:3>); /* Can cause server crashes */
JEI.removeAndHide(<lightningcraft:lightning_miner>); /* Causes world-breaking crashes */
JEI.removeAndHide(<matteroverdrive:matter_pipe>); /* Broken - item doesn't work */
JEI.removeAndHide(<matteroverdrive:heavy_matter_pipe>); /* Broken - item doesn't work */

# Remove items that could potentially be exploited to get space materials early
JEI.removeAndHide(<extrabees:honey_comb:40>); /* Zinc Comb */
JEI.removeAndHide(<extrabees:misc:14>); /* Zinc Grains */
JEI.removeAndHide(<extrabees:honey_comb:41>); /* Titanium Comb */
JEI.removeAndHide(<extrabees:misc:15>); /* Titanium Grains */
JEI.removeAndHide(<extrabees:honey_comb:42>); /* Tungsten Comb */
JEI.removeAndHide(<extrabees:misc:16>); /* Tungsten Grains */

# Remove other items that are not needed
JEI.removeAndHide(<biomesoplenty:biome_finder>); /* Removed in favor of Nature's Compass */
JEI.removeAndHide(<galacticraftcore:fluid_tank>); /* Worthless compared to other fluid tanks in the pack */
JEI.removeAndHide(<enderio:item_material:70>); /* Removed item in favor of Pam's Cake recipe */

# Remove items that have no uses
JEI.removeAndHide(<harvestcraft:royaljellyitem>);
JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_mj>);
JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_eu_lv>);
JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_eu_hv>);
JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_eu_mv>);
JEI.removeAndHide(<logisticspipes:upgrade_power_supplier_eu_ev>);
JEI.removeAndHide(<logisticspipes:power_provider_eu>);
JEI.removeAndHide(<logisticspipes:power_provider_mj>);
// Colored sticks
JEI.removeAndHide(<extraplanets:tier11_items:7>);
JEI.removeAndHide(<extraplanets:tier11_items:8>);
JEI.removeAndHide(<extraplanets:tier11_items:9>);
JEI.removeAndHide(<extraplanets:tier11_items:10>);
JEI.removeAndHide(<extraplanets:tier11_items:11>);
JEI.removeAndHide(<extraplanets:tier11_items:12>);
// Actually Additions Knife
JEI.removeAndHide(<actuallyadditions:item_misc:2>);
JEI.removeAndHide(<actuallyadditions:item_misc:3>);
JEI.removeAndHide(<actuallyadditions:item_knife>);

print("==== Initialized jei.zs ====");
