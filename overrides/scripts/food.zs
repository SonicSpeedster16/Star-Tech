#Name: food.zs
#Author: SonicSpeedster16
#Description: Changes related to food items
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("==== Initializing food.zs ====");

# Cakes must be made using Pam's recipe
recipes.removeByRecipeName("minecraft:cake");
recipes.removeByRecipeName("enderio:cake");
recipes.removeByRecipeName("forestry:cake_can");
recipes.removeByRecipeName("forestry:cake_capsule");
recipes.removeByRecipeName("forestry:cake_refractory");

# Chocolate Cake should use Pam's and Ore Dictionary items
recipes.remove(<actuallyadditions:item_food:8>);
recipes.addShaped("Chocolate Cake_oredict",
<actuallyadditions:item_food:8>, [
  [<ore:listAllmilk>, <ore:listAllmilk>, <ore:listAllmilk>],
  [<harvestcraft:cocoapowderitem>, <harvestcraft:cocoapowderitem>, <harvestcraft:cocoapowderitem>],
  [<ore:listAllegg>, <harvestcraft:doughitem>, <ore:listAllsugar>]
]);

# French Fries
recipes.remove(<actuallyadditions:item_food:4>);
recipes.addShaped("French Fries_oredict",
<actuallyadditions:item_food:4>, [
  [null, null, null],
  [<ore:foodFries>, <ore:foodFries>, <ore:foodFries>],
  [null, <actuallyadditions:item_misc:0>, null]
]);

# Fish 'N' Chips
recipes.remove(<actuallyadditions:item_food:3>);
recipes.addShaped("Fish 'N' Chips_oredict",
<actuallyadditions:item_food:3>, [
  [null, null, null],
  [<ore:foodFries>, <ore:listAllfishcooked>, <ore:foodFries>],
  [null, <actuallyadditions:item_misc:0>, null]
]);

# Toast o' Chocolate
recipes.remove(<actuallyadditions:item_food:19>);
recipes.addShaped("Toast o' Chocolate_oredict",
<actuallyadditions:item_food:19>, [
  [<ore:foodToast>, <ore:foodChocolatebar>, null]
]);

# Submarine Sandwich
recipes.remove(<actuallyadditions:item_food:11>);
recipes.addShaped("Submarine Sandwich_oredict",
<actuallyadditions:item_food:11>, [
  [null, <minecraft:bread>, null],
  [<ore:listAllveggie>, <ore:listAllmeatcooked>, <ore:listAllveggie>],
  [<ore:foodCheese>, <minecraft:bread>, <ore:foodCheese>]
]);

# Big Cookie
recipes.remove(<actuallyadditions:item_food:12>);
recipes.addShaped("Big Cookie_pam",
<actuallyadditions:item_food:12>, [
  [<harvestcraft:doughitem>, <harvestcraft:cocoapowderitem>, <harvestcraft:doughitem>],
  [<harvestcraft:cocoapowderitem>, <harvestcraft:doughitem>, <harvestcraft:cocoapowderitem>],
  [<harvestcraft:doughitem>, <harvestcraft:cocoapowderitem>, <harvestcraft:doughitem>]
]);

# Rice Dough
recipes.remove(<actuallyadditions:item_misc:9>);
recipes.addShaped("Rice Dough_pam",
<actuallyadditions:item_misc:9>, [
  [<ore:toolMixingbowl>, <ore:listAllwater>, null],
  [<ore:cropRice>, <ore:itemSalt>, null],
  [null, null, null]
]);

# Resonant Rice
recipes.remove(<actuallyadditions:item_resonant_rice>);
recipes.addShaped("Resonant Rice_oredict",
<actuallyadditions:item_resonant_rice>, [
  [<ore:cropRice>, <ore:nuggetEnderium>, null],
  [<minecraft:gunpowder>, null, null],
  [null, null, null]
]);

# Burgers
recipes.remove(<galacticraftcore:food:5>);
recipes.addShaped("Burger Bun_pam",
<galacticraftcore:food:5>, [
  [<harvestcraft:doughitem>, <harvestcraft:doughitem>, null],
  [<ore:listAllegg>, <ore:listAllmilk>, null],
  [null, null, null]
]);
recipes.remove(<harvestcraft:hamburgeritem>);
recipes.addShaped("Hamburger_custom",
<harvestcraft:hamburgeritem>, [
  [<harvestcraft:skilletitem>, <galacticraftcore:food:7>, null],
  [<galacticraftcore:food:5>, null, null],
  [null, null, null]
]);
recipes.remove(<harvestcraft:beetburgeritem>);
recipes.addShaped("Beet Burger_custom",
<harvestcraft:beetburgeritem>, [
  [<harvestcraft:cuttingboarditem>, <galacticraftcore:food:7>, <ore:cropBeet>],
  [<ore:foodFriedegg>, <ore:listAllporkcooked>, <ore:cropPineapple>],
  [<galacticraftcore:food:5>, null, null]
]);

# Bread
recipes.removeByRecipeName("moreplanets:bread_from_infected_wheat");
furnace.addRecipe(<minecraft:bread>, <harvestcraft:doughitem>, 0.7);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<minecraft:bread>, <harvestcraft:doughitem>, 1000);
mods.mekanism.smelter.addRecipe(<harvestcraft:doughitem>, <minecraft:bread>);

# Beef
mods.actuallyadditions.Crusher.addRecipe(<galacticraftcore:food:6> * 2, <minecraft:beef>);
mods.extrautils2.Crusher.add(<galacticraftcore:food:6> * 2, <minecraft:beef>);
mods.thermalexpansion.Pulverizer.addRecipe(<galacticraftcore:food:6> * 2, <minecraft:beef>, 1000);
mods.appliedenergistics2.Grinder.addRecipe(<galacticraftcore:food:6> * 2, <minecraft:beef>, 5);
mods.mekanism.crusher.addRecipe(<minecraft:beef>, <galacticraftcore:food:6> * 2);

# Chicken
mods.actuallyadditions.Crusher.addRecipe(<harvestcraft:groundchickenitem> * 2, <minecraft:chicken>);
mods.extrautils2.Crusher.add(<harvestcraft:groundchickenitem> * 2, <minecraft:chicken>);
mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:groundchickenitem> * 2, <minecraft:chicken>, 5);
mods.mekanism.crusher.addRecipe(<minecraft:chicken>, <harvestcraft:groundchickenitem> * 2);

# Mutton
mods.actuallyadditions.Crusher.addRecipe(<harvestcraft:groundmuttonitem> * 2, <minecraft:mutton>);
mods.extrautils2.Crusher.add(<harvestcraft:groundmuttonitem> * 2, <minecraft:mutton>);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundmuttonitem> * 2, <minecraft:mutton>, 1000);
mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:groundmuttonitem> * 2, <minecraft:mutton>, 5);
mods.mekanism.crusher.addRecipe(<minecraft:mutton>, <harvestcraft:groundmuttonitem> * 2);

# Pork
mods.actuallyadditions.Crusher.addRecipe(<harvestcraft:groundporkitem> * 2, <minecraft:porkchop>);
mods.extrautils2.Crusher.add(<harvestcraft:groundporkitem> * 2, <minecraft:porkchop>);
mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:groundporkitem> * 2, <minecraft:porkchop>, 5);
mods.mekanism.crusher.addRecipe(<minecraft:porkchop>, <harvestcraft:groundporkitem> * 2);

# Rabbit
mods.actuallyadditions.Crusher.addRecipe(<harvestcraft:groundrabbititem> * 2, <minecraft:rabbit>);
mods.extrautils2.Crusher.add(<harvestcraft:groundrabbititem> * 2, <minecraft:rabbit>);
mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:groundrabbititem> * 2, <minecraft:rabbit>, 5);
mods.mekanism.crusher.addRecipe(<minecraft:rabbit>, <harvestcraft:groundrabbititem> * 2);

# Venison
mods.actuallyadditions.Crusher.addRecipe(<harvestcraft:groundvenisonitem> * 2, <twilightforest:raw_venison>);
mods.extrautils2.Crusher.add(<harvestcraft:groundvenisonitem> * 2, <twilightforest:raw_venison>);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundvenisonitem> * 2, <twilightforest:raw_venison>, 1000);
mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:groundvenisonitem> * 2, <twilightforest:raw_venison>, 5);
mods.mekanism.crusher.addRecipe(<twilightforest:raw_venison>, <harvestcraft:groundvenisonitem> * 2);

# Flour - wheat
mods.actuallyadditions.Crusher.addRecipe(<harvestcraft:flouritem> * 2, <minecraft:wheat>);
mods.extrautils2.Crusher.add(<harvestcraft:flouritem> * 2, <minecraft:wheat>);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:flouritem> * 2, <minecraft:wheat>, 1000);
mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:flouritem> * 2, <minecraft:wheat>, 5);
mods.mekanism.crusher.addRecipe(<minecraft:wheat>, <harvestcraft:flouritem> * 2);

# Flour - potato
mods.actuallyadditions.Crusher.addRecipe(<harvestcraft:flouritem> * 2, <minecraft:potato>);
mods.extrautils2.Crusher.add(<harvestcraft:flouritem> * 2, <minecraft:potato>);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:flouritem> * 2, <minecraft:potato>, 1000);
mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:flouritem> * 2, <minecraft:potato>, 5);
mods.mekanism.crusher.addRecipe(<minecraft:wheat>, <harvestcraft:flouritem> * 2);

# Flour - rye
mods.actuallyadditions.Crusher.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:ryeitem>);
mods.extrautils2.Crusher.add(<harvestcraft:flouritem> * 2, <harvestcraft:ryeitem>);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:ryeitem>, 1000);
mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:ryeitem>, 5);
mods.mekanism.crusher.addRecipe(<harvestcraft:ryeitem>, <harvestcraft:flouritem> * 2);

# Flour - barley
mods.actuallyadditions.Crusher.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:barleyitem>);
mods.extrautils2.Crusher.add(<harvestcraft:flouritem> * 2, <harvestcraft:barleyitem>);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:barleyitem>, 1000);
mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:barleyitem>, 5);
mods.mekanism.crusher.addRecipe(<harvestcraft:barleyitem>, <harvestcraft:flouritem> * 2);

# Flour - almond
mods.actuallyadditions.Crusher.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:almonditem>);
mods.extrautils2.Crusher.add(<harvestcraft:flouritem> * 2, <harvestcraft:almonditem>);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:almonditem>, 1000);
mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:almonditem>, 5);
mods.mekanism.crusher.addRecipe(<harvestcraft:almonditem>, <harvestcraft:flouritem> * 2);

# Flour - coconut
mods.actuallyadditions.Crusher.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:coconutitem>);
mods.extrautils2.Crusher.add(<harvestcraft:flouritem> * 2, <harvestcraft:coconutitem>);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:coconutitem>, 1000);
mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:coconutitem>, 5);
mods.mekanism.crusher.addRecipe(<harvestcraft:coconutitem>, <harvestcraft:flouritem> * 2);

# Flour - oats
mods.actuallyadditions.Crusher.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:oatsitem>);
mods.extrautils2.Crusher.add(<harvestcraft:flouritem> * 2, <harvestcraft:oatsitem>);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:oatsitem>, 1000);
mods.appliedenergistics2.Grinder.addRecipe(<harvestcraft:flouritem> * 2, <harvestcraft:oatsitem>, 5);
mods.mekanism.crusher.addRecipe(<harvestcraft:oatsitem>, <harvestcraft:flouritem> * 2);

/*~~~~~~~~~~~~
The Mighty Pam
~~~~~~~~~~~~~*/

# Readd missing Salt recipe using Mek's Salt instead
recipes.addShaped("Craftable Salt",
<mekanism:salt>, [
  [<ore:toolPot>, <ore:listAllWater>, null]
]);

# Add missing recipe for Berry Vinaigrette Salad
recipes.addShaped("Berry Vinaigrette Salad_oredict",
<harvestcraft:berryvinaigrettesaladitem>, [
  [<ore:toolCuttingboard>, <ore:listAllberry>, null],
  [<ore:listAllberry>, <ore:cropLettuce>, null],
  [null, null, null]
]);

# Giga Pickle -> Giga Pickle Seed
recipes.addShapeless("Giga Pickle to Giga Pickle Seed", 
<harvestcraft:gigapickleseeditem>, [<harvestcraft:gigapickleitem>]);

# Kale -> Kale Seed
recipes.addShapeless("Kale to Kale Seed", 
<harvestcraft:kaleseeditem>, [<harvestcraft:kaleitem>]);

# Tomatillo -> Tomatillo Seed
recipes.addShapeless("Tomatillo to Tomatillo Seed", 
<harvestcraft:tomatilloseeditem>, [<harvestcraft:tomatilloitem>]);

# Pam, how does chopping vegetables produce 3 slices of Pizza?
recipes.removeShapeless(<harvestcraft:pizzasliceitem>, [<harvestcraft:cuttingboarditem>, <ore:listAllgreenveggie>]);

# Why can Pam's Cotton be crafted to itself?
recipes.remove(<harvestcraft:cottonitem>);

# OreDict some Pam's recipes
recipes.remove(<harvestcraft:strawberryjuiceitem>);
recipes.addShaped("Strawberry Juice_oredict",
<harvestcraft:strawberryjuiceitem>, [
  [<ore:toolJuicer>, <ore:cropStrawberry>, null],
  [<ore:cropStrawberry>, null, null],
  [null, null, null]
]);
recipes.remove(<harvestcraft:strawberrysmoothieitem>);
recipes.addShaped("Strawberry Smoothie_oredict",
<harvestcraft:strawberrysmoothieitem>, [
  [<ore:toolJuicer>, <ore:cropStrawberry>, null],
  [<ore:cropStrawberry>, <minecraft:snowball>, null],
  [null, null, null]
]);
recipes.remove(<harvestcraft:strawberrypieitem>);
recipes.addShaped("Strawberry Pie_oredict",
<harvestcraft:strawberrypieitem>, [
  [<ore:toolBakeware>, <ore:cropStrawberry>, null],
  [<ore:foodDough>, <ore:listAllsugar>, null],
  [null, null, null]
]);
recipes.remove(<harvestcraft:strawberrysaladitem>);
recipes.addShaped("Strawberry Salad_oredict", 
<harvestcraft:strawberrysaladitem>, [
  [<ore:cropStrawberry>, <harvestcraft:fruitsaladitem>, null]
]);
recipes.remove(<harvestcraft:chocolatestrawberryitem>);
recipes.addShaped("Chocolate Strawberry_oredict",
<harvestcraft:chocolatestrawberryitem>, [
  [<ore:toolSaucepan>, <ore:cropStrawberry>, null],
  [<ore:foodChocolatebar>, null, null],
  [null, null, null]
]);
recipes.remove(<harvestcraft:strawberryyogurtitem>);
recipes.addShaped("Strawberry Yogurt_oredict", 
<harvestcraft:strawberryyogurtitem>, [
  [<ore:cropStrawberry>, <ore:foodPlainyogurt>, null]
]);
recipes.remove(<harvestcraft:strawberryjellyitem>);
recipes.addShaped("Strawberry Jelly_oredict",
<harvestcraft:strawberryjellyitem>, [
  [<ore:toolSaucepan>, <ore:cropStrawberry>, null],
  [<ore:listAllsugar>, null, null],
  [null, null, null]
]);
recipes.remove(<harvestcraft:strawberryicecreamitem>);
recipes.addShaped("Strawberry Ice Cream_oredict",
<harvestcraft:strawberryicecreamitem>, [
  [<ore:toolMixingbowl>, <ore:listAllicecream>, null],
  [<ore:cropStrawberry>, null, null],
  [null, null, null]
]);
recipes.remove(<harvestcraft:strawberrymilkshakeitem>);
recipes.addShaped("Strawberry Milkshake_oredict",
<harvestcraft:strawberrymilkshakeitem>, [
  [<ore:toolJuicer>, <ore:listAllmilk>, null],
  [<ore:cropStrawberry>, <minecraft:snowball>, null],
  [null, null, null]
]);
recipes.remove(<harvestcraft:strawberryrhubarbpieitem>);
recipes.addShaped("Strawberry Rhubarb Pie_oredict",
<harvestcraft:strawberryrhubarbpieitem>, [
  [<ore:toolBakeware>, <ore:foodDough>, <ore:listAllsugar>],
  [<ore:cropStrawberry>, <ore:cropRhubarb>, null],
  [null, null, null]
]);
recipes.remove(<harvestcraft:strawberrycupcakeitem>);
recipes.addShaped("Strawberry Cupcake_oredict",
<harvestcraft:strawberrycupcakeitem>, [
  [<ore:toolBakeware>, <ore:foodBatter>, <ore:listAllsugar>],
  [<ore:listAllheavycream>, <ore:foodButter>, <ore:cropStrawberry>],
  [null, null, null]
]);

# Fix Gourmet Pattys to use the correct Mustard Seed*s*
recipes.remove(<harvestcraft:gourmetbeefpattyitem>);
recipes.addShaped("Gourmet Beef Patty_custom",
<harvestcraft:gourmetbeefpattyitem>, [
  [<ore:toolMixingbowl>, <ore:foodGroundbeef>, <ore:foodBlackpepper>],
  [<harvestcraft:spiceleafitem>, <harvestcraft:mustardseedsitem>, <ore:itemSalt>],
  [null, null, null]
]);
recipes.remove(<harvestcraft:gourmetmuttonpattyitem>);
recipes.addShaped("Gourmet Mutton Patty_custom",
<harvestcraft:gourmetmuttonpattyitem>, [
  [<ore:toolMixingbowl>, <harvestcraft:groundmuttonitem>, <ore:foodBlackpepper>],
  [<harvestcraft:spiceleafitem>, <harvestcraft:mustardseedsitem>, <ore:itemSalt>],
  [null, null, null]
]);
recipes.remove(<harvestcraft:gourmetporkpattyitem>);
recipes.addShaped("Gourmet Pork Patty_custom",
<harvestcraft:gourmetporkpattyitem>, [
  [<ore:toolMixingbowl>, <harvestcraft:groundporkitem>, <ore:foodBlackpepper>],
  [<harvestcraft:spiceleafitem>, <harvestcraft:mustardseedsitem>, <ore:itemSalt>],
  [null, null, null]
]);
recipes.remove(<harvestcraft:gourmetvenisonpattyitem>);
recipes.addShaped("Gourmet Venison Patty_custom",
<harvestcraft:gourmetvenisonpattyitem>, [
  [<ore:toolMixingbowl>, <harvestcraft:groundvenisonitem>, <ore:foodBlackpepper>],
  [<harvestcraft:spiceleafitem>, <harvestcraft:mustardseedsitem>, <ore:itemSalt>],
  [null, null, null]
]);

print("==== Initialized food.zs ====");
