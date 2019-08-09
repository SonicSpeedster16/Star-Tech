#Name: OreDict.zs
#Author: SonicSpeedster16
#Description: Modify Ore Dictionary entries
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("==== Initializing OreDict.zs ====");

# Add Block of Charcoal from Forestry to the Ore Dictionary
<ore:blockCharcoal>.add(<forestry:charcoal>);

# Add Silver Ore from Ice and Fire to the Ore Dictionary
<ore:oreSilver>.add(<iceandfire:silver_ore>);

# Add Chisel and Extra Planets Marble to the Ore Dictionary
<ore:blockMarble>.add(<chisel:marble2:7>);
<ore:blockMarble>.add(<extraplanets:decorative_blocks>);

# Add all chocolate bars to the Ore Dictionary
<ore:foodChocolatebar>.add(<extraplanets:chocolate_bar>);
<ore:foodChocolatebar>.add(<moreplanets:chocolate_bar>);
<ore:foodChocolatebar>.add(<actuallyadditions:item_food:9>);

# Add Extra Planets caramel to the Ore Dictionary
<ore:foodCaramel>.add(<extraplanets:caramel_bar>);

# Add Additional Cheese to the Ore Dictionary
<ore:foodCheese>.add(<actuallyadditions:item_food:0>);
<ore:foodCheese>.add(<moreplanets:cheese_milk_curd>);

# Add more Meats to the Ore Dictionary
<ore:listAllmeatraw>.add(<moreplanets:raw_shlime_meat>);
<ore:listAllmeatcooked>.add(<moreplanets:cooked_shlime_meat>);
<ore:listAllmeatraw>.add(<moreplanets:raw_cheese_beef>);
<ore:foodMeat>.add(<moreplanets:raw_cheese_beef>);
<ore:listAllbeefraw>.add(<moreplanets:raw_cheese_beef>);
<ore:listAllmeatcooked>.add(<moreplanets:cooked_cheese_beef>);
<ore:foodMeat>.add(<moreplanets:cooked_cheese_beef>);
<ore:listAllbeefcooked>.add(<moreplanets:cooked_cheese_beef>);
<ore:listAllmeatraw>.add(<galacticraftcore:food:6>);
<ore:listAllbeefraw>.add(<galacticraftcore:food:6>);
<ore:foodGroundbeef>.add(<galacticraftcore:food:6>);

# Matter Overdrive Industrial Glass should be hard
<ore:blockGlassHardened>.add(<matteroverdrive:industrial_glass>);

# Wood Pulp == Sawdust
<ore:pulpWood>.add(<thermalfoundation:material:800>);
<ore:dustWood>.add(<forestry:wood_pulp>);

# Add mushrooms to the Ore Dictionary
<ore:listAllmushroom>.add(<biomesoplenty:mushroom:4>);
<ore:listAllmushroom>.add(<nex:elder_mushroom>);
<ore:listAllmushroom>.add(<nex:elder_mushroom:1>);

# Add some Infected items to Ore Dictionary
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

# String != flax
<ore:cropFlax>.remove(<minecraft:string>);

print("=== Initialized OreDict.zs ====");
