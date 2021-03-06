#Name: OreDict.zs
#Author: SonicSpeedster16
#Description: Modify Ore Dictionary entries
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("==== Initializing OreDict.zs ====");

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Add missing Ore Dictionary entries
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
# Glass
<ore:blockGlassHardened>.add(<matteroverdrive:industrial_glass>);
<ore:blockGlassHardened>.add(<mekanism:basicblock:10>);
<ore:blockGlassHardened>.add(<mekanismgenerators:reactorglass>);
<ore:blockGlassHardened>.add(<bigreactors:reactorglass>);
<ore:blockGlassColorless>.add(<tconstruct:clear_glass>);
# Dirt
<ore:dirt>.add(<biomesoplenty:dirt:0>); /* Loamy Dirt */
<ore:dirt>.add(<biomesoplenty:dirt:8>); /* Coarse Loamy Dirt */
<ore:dirt>.add(<biomesoplenty:dirt:1>); /* Sandy Dirt */
<ore:dirt>.add(<biomesoplenty:dirt:9>); /* Coarse Sandy Dirt */
<ore:dirt>.add(<biomesoplenty:dirt:2>); /* Silty Dirt */
<ore:dirt>.add(<biomesoplenty:dirt:10>); /* Coarse Silty Dirt */
<ore:dirt>.add(<extraplanets:kepler22b:0>); /* Kepler22b Dirt */
<ore:dirt>.add(<moreplanets:cheese_coarse_dirt>); /* Cheese Coarse Dirt */
# Planks
<ore:plankWood>.add(<extraplanets:kepler22b_planks:0>);
<ore:plankWood>.add(<extraplanets:kepler22b_planks:1>);
<ore:plankWood>.add(<extraplanets:kepler22b_planks:2>);
<ore:plankWood>.add(<extraplanets:kepler22b_planks:3>);
<ore:plankWood>.add(<extraplanets:kepler22b_planks:4>);
<ore:plankWood>.add(<extraplanets:kepler22b_planks:5>);
# Infected items:
<ore:itemCoal>.add(<moreplanets:infected_coal>);
<ore:coal>.add(<moreplanets:infected_coal>);
<ore:itemCharcoal>.add(<moreplanets:infected_charcoal>);
<ore:charcoal>.add(<moreplanets:infected_charcoal>);
<ore:cropMelon>.add(<moreplanets:infected_melon>);
<ore:seed>.add(<moreplanets:infected_melon_seeds>);
<ore:seedMelon>.add(<moreplanets:infected_melon_seeds>);
<ore:listAllseed>.add(<moreplanets:infected_melon_seeds>);
<ore:seed>.add(<moreplanets:infected_wheat_seeds>);
<ore:seedWheat>.add(<moreplanets:infected_wheat_seeds>);
<ore:listAllseed>.add(<moreplanets:infected_wheat_seeds>);
<ore:dirt>.add(<moreplanets:infected_vines_dirt>);
<ore:dirt>.add(<moreplanets:infected_coarse_dirt>);
# Misc
<ore:mycelium>.add(<biomesoplenty:grass:8>);
<ore:cropEdibleRoot>.add(<biomesoplenty:plant_1:9>);

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Items that should be interchangeable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
# Sawdust == Wood Pulp
<ore:pulpWood>.add(<thermalfoundation:material:800>);
<ore:dustWood>.add(<forestry:wood_pulp>);
<ore:dustWood>.add(<extratrees:misc:0>);
<ore:itemSawdust>.add(<extratrees:misc:0>);
<ore:itemSawdust>.add(<mekanism:sawdust>);
<ore:itemSawdust>.add(<forestry:wood_pulp>);

# Fertilizer
<ore:fertilizer>.add(<actuallyadditions:item_fertilizer>);
<ore:fertilizer>.add(<forestry:fertilizer_compound>);
<ore:fertilizer>.add(<hatchery:chickenmanure>);

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Make Marble from other mods compatibile with Astral Sorcery
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
<ore:blockMarble>.add(<chisel:marble2:7>);
<ore:blockMarble>.add(<extraplanets:decorative_blocks:0>);
<ore:blockMarble>.add(<extraplanets:decorative_blocks:1>);
<ore:blockMarble>.add(<extraplanets:decorative_blocks:6>);
<ore:blockMarble>.add(<extraplanets:decorative_blocks:7>);
<ore:stoneMarble>.add(<extraplanets:decorative_blocks:0>);
<ore:stoneMarble>.add(<extraplanets:decorative_blocks:1>);
<ore:stoneMarble>.add(<extraplanets:decorative_blocks:6>);
<ore:stoneMarble>.add(<extraplanets:decorative_blocks:7>);

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Make Food items from other mods compatible with Pam's
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
# Chocolate bars
<ore:foodChocolatebar>.add(<extraplanets:chocolate_bar>);
<ore:foodChocolatebar>.add(<moreplanets:chocolate_bar>);
# Caramel
<ore:foodCaramel>.add(<extraplanets:caramel_bar>);
# Cheese
<ore:foodCheese>.add(<moreplanets:cheese_milk_curd>);
# Meat
<ore:foodMeat>.add(<moreplanets:raw_cheese_beef>);
<ore:foodMeat>.add(<moreplanets:cooked_cheese_beef>);
<ore:foodMeat>.add(<twilightforest:raw_venison>);
<ore:foodMeat>.add(<twilightforest:cooked_venison>);
<ore:foodMeat>.add(<twilightforest:raw_meef>);
<ore:foodMeat>.add(<twilightforest:cooked_meef>);
# Raw Meat
<ore:listAllmeatraw>.add(<moreplanets:raw_shlime_meat>);
<ore:listAllmeatraw>.add(<moreplanets:raw_cheese_beef>);
<ore:listAllmeatraw>.add(<galacticraftcore:food:6>);
<ore:listAllmeatraw>.add(<twilightforest:raw_venison>);
<ore:listAllmeatraw>.add(<twilightforest:raw_meef>);
# Cooked Meat
<ore:listAllmeatcooked>.add(<moreplanets:cooked_shlime_meat>);
<ore:listAllmeatcooked>.add(<moreplanets:cooked_cheese_beef>);
<ore:listAllmeatcooked>.add(<twilightforest:cooked_venison>);
<ore:listAllmeatcooked>.add(<twilightforest:cooked_meef>);
# Beef
<ore:listAllbeefraw>.add(<moreplanets:raw_cheese_beef>);
<ore:listAllbeefraw>.add(<galacticraftcore:food:6>);
<ore:listAllbeefcooked>.add(<moreplanets:cooked_cheese_beef>);
<ore:foodGroundbeef>.add(<galacticraftcore:food:6>);
<ore:foodBeefjerky>.add(<tconstruct:edible:11>);
# Venison
<ore:listAllvenisonraw>.add(<twilightforest:raw_venison>);
<ore:listAllvenisoncooked>.add(<twilightforest:cooked_venison>);
<ore:foodVenisonraw>.add(<twilightforest:raw_venison>);
<ore:foodVenisoncooked>.add(<twilightforest:cooked_venison>);
# Grains
<ore:listAllgrain>.add(<biomesoplenty:double_plant:3>);
<ore:cropOats>.add(<biomesoplenty:double_plant:3>);
<ore:cropRice>.add(<biomesoplenty:plant_1:3>); /* Wild Rice */
# Mushrooms
<ore:listAllmushroom>.add(<biomesoplenty:mushroom:4>); /* Flat Mushroom */
<ore:listAllmushroom>.add(<biomesoplenty:mushroom:2>); /* Milk Caps */
<ore:cropWhitemushroom>.add(<biomesoplenty:mushroom:1>); /* Portobella */
<ore:listAllmushroom>.add(<biomesoplenty:mushroom:0>); /* Toadstool */
<ore:listAllmushroom>.add(<biomesoplenty:mushroom:1>); /* Portobella */
<ore:listAllmushroom>.add(<netherex:brown_elder_mushroom>);
<ore:listAllmushroom>.add(<netherex:red_elder_mushroom>);
# Fruit
<ore:listAllfruit>.add(<forestry:fruits:0>); /* Cherry */
<ore:listAllfruit>.add(<forestry:fruits:3>); /* Lemon */
<ore:listAllcitrus>.add(<forestry:fruits:3>);
<ore:listAllfruit>.add(<forestry:fruits:4>); /* Plum */
<ore:listAllfruit>.add(<forestry:fruits:5>); /* Date */
<ore:listAllfruit>.add(<forestry:fruits:6>); /* Papaya */
# Berries
<ore:listAllberry>.add(<biomesoplenty:berries>);
<ore:listAllfruit>.add(<biomesoplenty:berries>);
<ore:listAllberry>.add(<moreplanets:cheese_spore_berry>);
<ore:listAllberry>.add(<moreplanets:alien_berry>);
<ore:listAllberry>.add(<moreplanets:golden_alien_berry>);
<ore:listAllberry>.add(<moreplanets:terraberry>);
<ore:cropStrawberry>.add(<moreplanets:strawberry>);
<ore:listAllberry>.add(<moreplanets:strawberry>);
<ore:cropBlueberry>.add(<moreplanets:giant_blueberry>);
<ore:listAllberry>.add(<moreplanets:giant_blueberry>);
# Nuts
<ore:listAllnut>.add(<forestry:fruits:1>); /* Walnut */
<ore:listAllnut>.add(<forestry:fruits:2>); /* Chestnut */
# Kelp
<ore:cropSeaweed>.add(<biomesoplenty:seaweed>);
<ore:listAllgreenveggie>.add(<biomesoplenty:seaweed>);
<ore:listAllveggie>.add(<biomesoplenty:seaweed>);
# Cookies
<ore:listAllcookie>.add(<minecraft:cookie>);
<ore:listAllcookie>.add(<actuallyadditions:item_food:12>);
<ore:listAllcookie>.add(<harvestcraft:meringuecookieitem>);

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Remove Ore Dictionary entries
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
<ore:cropFlax>.remove(<minecraft:string>); /* String != flax */
<ore:flourEqualswheat>.remove(<minecraft:wheat>); /* Wheat != flour */
<ore:blockGlassWhite>.remove(<enderio:block_fused_glass>);  /* Quite CLEAR Glass is not white */
<ore:nuggetSilver>.remove(<iceandfire:silver_nugget>); /* Removed in favor of Thermal Silver */
# Remove OreDict entries from Pam's Ground Beef in favor of Ground Beef from Galacticraft
<ore:listAllbeefraw>.remove(<harvestcraft:groundbeefitem>);
<ore:listAllmeatraw>.remove(<harvestcraft:groundbeefitem>);
<ore:foodGroundbeef>.remove(<harvestcraft:groundbeefitem>);
# Remove OreDict entries from Pam's Salt and extraneous entries from Mekanism Salt
<ore:dustSalt>.remove(<harvestcraft:saltitem>);
<ore:itemSalt>.remove(<harvestcraft:saltitem>);
<ore:foodSalt>.remove(<harvestcraft:saltitem>);
<ore:itemSalt>.remove(<mekanism:salt>);
<ore:foodSalt>.remove(<mekanism:salt>);

print("=== Initialized OreDict.zs ====");
