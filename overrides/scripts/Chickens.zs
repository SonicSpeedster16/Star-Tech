#Name: Chickens.zs
#Author: SonicSpeedster16
#Description: Add recipes for tier 1 chickens and modify colored egg recipes
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("==== Initializing Chickens.zs ====");

/*~~~~~~~~~~~~~~~~~
Tier 1 chicken eggs
~~~~~~~~~~~~~~~~~~*/

recipes.addShaped("Flint Chicken Egg",
<chickens:spawn_egg>.withTag({
  ChickenType: {
    id: "chickens:flintchicken"
  }
}), [
  [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>],
  [<minecraft:flint>, <minecraft:egg>, <minecraft:flint>],
  [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>]
]);

recipes.addShaped("Sand Chicken Egg",
<chickens:spawn_egg>.withTag({
  ChickenType: {
    id: "chickens:sandchicken"
  }
}), [
  [<minecraft:sand>, <minecraft:sand>, <minecraft:sand>],
  [<minecraft:sand>, <minecraft:egg>, <minecraft:sand>],
  [<minecraft:sand>, <minecraft:sand>, <minecraft:sand>]
]);

recipes.addShaped("Log Chicken Egg",
<chickens:spawn_egg>.withTag({
  ChickenType: {
    id: "chickens:logchicken"
  }
}), [
  [<minecraft:log>, <minecraft:log>, <minecraft:log>],
  [<minecraft:log>, <minecraft:egg>, <minecraft:log>],
  [<minecraft:log>, <minecraft:log>, <minecraft:log>]
]);

recipes.addShaped("Soul Sand Chicken Egg",
<chickens:spawn_egg>.withTag({
  ChickenType: {
    id: "chickens:soulsandchicken"
  }
}), [
  [<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>],
  [<minecraft:soul_sand>, <minecraft:egg>, <minecraft:soul_sand>],
  [<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>]
]);

recipes.addShaped("Nether Quartz Chicken Egg",
<chickens:spawn_egg>.withTag({
  ChickenType: {
    id: "chickens:quartzchicken"
  }
}), [
  [<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>],
  [<minecraft:quartz>, <minecraft:egg>, <minecraft:quartz>],
  [<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>]
]);

/*~~~~~~~~~~
Colored eggs
~~~~~~~~~~~*/

recipes.remove(<chickens:colored_egg>);
recipes.addShaped("Black Colored Egg",
<chickens:colored_egg>, [
  [<ore:dyeBlack>, <ore:dyeBlack>, <ore:dyeBlack>],
  [<ore:dyeBlack>, <minecraft:egg>, <ore:dyeBlack>],
  [<ore:dyeBlack>, <ore:dyeBlack>, <ore:dyeBlack>]
]);
recipes.remove(<chickens:colored_egg:1>);
recipes.addShaped("Red Colored Egg",
<chickens:colored_egg:1>, [
  [<ore:dyeRed>, <ore:dyeRed>, <ore:dyeRed>],
  [<ore:dyeRed>, <minecraft:egg>, <ore:dyeRed>],
  [<ore:dyeRed>, <ore:dyeRed>, <ore:dyeRed>]
]);
recipes.remove(<chickens:colored_egg:2>);
recipes.addShaped("Green Colored Egg",
<chickens:colored_egg:2>, [
  [<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>],
  [<ore:dyeGreen>, <minecraft:egg>, <ore:dyeGreen>],
  [<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>]
]);
recipes.remove(<chickens:colored_egg:3>);
recipes.addShaped("Brown Colored Egg",
<chickens:colored_egg:3>, [
  [<ore:dyeBrown>, <ore:dyeBrown>, <ore:dyeBrown>],
  [<ore:dyeBrown>, <minecraft:egg>, <ore:dyeBrown>],
  [<ore:dyeBrown>, <ore:dyeBrown>, <ore:dyeBrown>]
]);
recipes.remove(<chickens:colored_egg:4>);
recipes.addShaped("Blue Colored Egg",
<chickens:colored_egg:4>, [
  [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
  [<ore:dyeBlue>, <minecraft:egg>, <ore:dyeBlue>],
  [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>]
]);
recipes.remove(<chickens:colored_egg:5>);
recipes.addShaped("Purple Colored Egg",
<chickens:colored_egg:5>, [
  [<ore:dyePurple>, <ore:dyePurple>, <ore:dyePurple>],
  [<ore:dyePurple>, <minecraft:egg>, <ore:dyePurple>],
  [<ore:dyePurple>, <ore:dyePurple>, <ore:dyePurple>]
]);
recipes.remove(<chickens:colored_egg:6>);
recipes.addShaped("Cyan Colored Egg",
<chickens:colored_egg:6>, [
  [<ore:dyeCyan>, <ore:dyeCyan>, <ore:dyeCyan>],
  [<ore:dyeCyan>, <minecraft:egg>, <ore:dyeCyan>],
  [<ore:dyeCyan>, <ore:dyeCyan>, <ore:dyeCyan>]
]);
recipes.remove(<chickens:colored_egg:7>);
recipes.addShaped("Light Gray Colored Egg",
<chickens:colored_egg:7>, [
  [<ore:dyeLightGray>, <ore:dyeLightGray>, <ore:dyeLightGray>],
  [<ore:dyeLightGray>, <minecraft:egg>, <ore:dyeLightGray>],
  [<ore:dyeLightGray>, <ore:dyeLightGray>, <ore:dyeLightGray>]
]);
recipes.remove(<chickens:colored_egg:8>);
recipes.addShaped("Gray Colored Egg",
<chickens:colored_egg:8>, [
  [<ore:dyeGray>, <ore:dyeGray>, <ore:dyeGray>],
  [<ore:dyeGray>, <minecraft:egg>, <ore:dyeGray>],
  [<ore:dyeGray>, <ore:dyeGray>, <ore:dyeGray>]
]);
recipes.remove(<chickens:colored_egg:9>);
recipes.addShaped("Pink Colored Egg",
<chickens:colored_egg:9>, [
  [<ore:dyePink>, <ore:dyePink>, <ore:dyePink>],
  [<ore:dyePink>, <minecraft:egg>, <ore:dyePink>],
  [<ore:dyePink>, <ore:dyePink>, <ore:dyePink>]
]);
recipes.remove(<chickens:colored_egg:10>);
recipes.addShaped("Lime Colored Egg",
<chickens:colored_egg:10>, [
  [<ore:dyeLime>, <ore:dyeLime>, <ore:dyeLime>],
  [<ore:dyeLime>, <minecraft:egg>, <ore:dyeLime>],
  [<ore:dyeLime>, <ore:dyeLime>, <ore:dyeLime>]
]);
recipes.remove(<chickens:colored_egg:11>);
recipes.addShaped("Yellow Colored Egg",
<chickens:colored_egg:11>, [
  [<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>],
  [<ore:dyeYellow>, <minecraft:egg>, <ore:dyeYellow>],
  [<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>]
]);
recipes.remove(<chickens:colored_egg:12>);
recipes.addShaped("Light Blue Colored Egg",
<chickens:colored_egg:12>, [
  [<ore:dyeLightBlue>, <ore:dyeLightBlue>, <ore:dyeLightBlue>],
  [<ore:dyeLightBlue>, <minecraft:egg>, <ore:dyeLightBlue>],
  [<ore:dyeLightBlue>, <ore:dyeLightBlue>, <ore:dyeLightBlue>]
]);
recipes.remove(<chickens:colored_egg:13>);
recipes.addShaped("Magenta Colored Egg",
<chickens:colored_egg:13>, [
  [<ore:dyeMagenta>, <ore:dyeMagenta>, <ore:dyeMagenta>],
  [<ore:dyeMagenta>, <minecraft:egg>, <ore:dyeMagenta>],
  [<ore:dyeMagenta>, <ore:dyeMagenta>, <ore:dyeMagenta>]
]);
recipes.remove(<chickens:colored_egg:14>);
recipes.addShaped("Orange Colored Egg",
<chickens:colored_egg:14>, [
  [<ore:dyeOrange>, <ore:dyeOrange>, <ore:dyeOrange>],
  [<ore:dyeOrange>, <minecraft:egg>, <ore:dyeOrange>],
  [<ore:dyeOrange>, <ore:dyeOrange>, <ore:dyeOrange>]
]);
recipes.remove(<chickens:colored_egg:15>);
recipes.addShaped("White Colored Egg",
<chickens:colored_egg:15>, [
  [<ore:dyeWhite>, <ore:dyeWhite>, <ore:dyeWhite>],
  [<ore:dyeWhite>, <minecraft:egg>, <ore:dyeWhite>],
  [<ore:dyeWhite>, <ore:dyeWhite>, <ore:dyeWhite>]
]);

print("==== Initialized Chickens.zs ====");
