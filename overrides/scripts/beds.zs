#Name: beds.zs
#Author: SonicSpeedster16
#Description: Modify recipes to allow any color (not only white) bed, sleeping bag or hammock to be dyed
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("==== Initializing beds.zs ====");

/*~~
Beds
~~*/

# Remove current recipes
recipes.removeByRecipeName("minecraft:orange_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:magenta_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:light_blue_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:yellow_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:lime_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:pink_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:gray_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:light_gray_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:cyan_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:purple_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:blue_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:brown_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:green_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:red_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:black_bed_from_white_bed");
recipes.removeByRecipeName("minecraft:orange_bed_from_white_bed");

# Readd recipes using Ore Dictionaried items
recipes.addShaped(<minecraft:bed:0>, [
  [<ore:bed>, <ore:dyeWhite>, null]
]);

recipes.addShaped(<minecraft:bed:1>, [
  [<ore:bed>, <ore:dyeOrange>, null]
]);

recipes.addShaped(<minecraft:bed:2>, [
  [<ore:bed>, <ore:dyeMagenta>, null]
]);

recipes.addShaped(<minecraft:bed:3>, [
  [<ore:bed>, <ore:dyeLightBlue>, null]
]);

recipes.addShaped(<minecraft:bed:4>, [
  [<ore:bed>, <ore:dyeYellow>, null]
]);

recipes.addShaped(<minecraft:bed:5>, [
  [<ore:bed>, <ore:dyeLime>, null]
]);

recipes.addShaped(<minecraft:bed:6>, [
  [<ore:bed>, <ore:dyePink>, null]
]);

recipes.addShaped(<minecraft:bed:7>, [
  [<ore:bed>, <ore:dyeGray>, null]
]);

recipes.addShaped(<minecraft:bed:8>, [
  [<ore:bed>, <ore:dyeLightGray>, null]
]);

recipes.addShaped(<minecraft:bed:9>, [
  [<ore:bed>, <ore:dyeCyan>, null]
]);

recipes.addShaped(<minecraft:bed:10>, [
  [<ore:bed>, <ore:dyePurple>, null]
]);

recipes.addShaped(<minecraft:bed:11>, [
  [<ore:bed>, <ore:dyeBlue>, null]
]);

recipes.addShaped(<minecraft:bed:12>, [
  [<ore:bed>, <ore:dyeBrown>, null]
]);

recipes.addShaped(<minecraft:bed:13>, [
  [<ore:bed>, <ore:dyeGreen>, null]
]);

recipes.addShaped(<minecraft:bed:14>, [
  [<ore:bed>, <ore:dyeRed>, null]
]);

recipes.addShaped(<minecraft:bed:15>, [
  [<ore:bed>, <ore:dyeBlack>, null]
]);

/*~~~~~~~~~~~
Sleeping Bags
~~~~~~~~~~~~*/

# Remove current recipes
recipes.removeByRecipeName("comforts:sleeping_bag_orange_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_magenta_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_lightblue_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_yellow_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_lime_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_pink_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_gray_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_lightgray_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_cyan_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_purple_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_blue_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_brown_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_green_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_red_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_black_from_white");
recipes.removeByRecipeName("comforts:sleeping_bag_orange_from_white");

# Readd recipes using Ore Dictionaried items
recipes.addShaped(<comforts:sleeping_bag:0>, [
  [<ore:sleepingBag>, <ore:dyeWhite>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:1>, [
  [<ore:sleepingBag>, <ore:dyeOrange>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:2>, [
  [<ore:sleepingBag>, <ore:dyeMagenta>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:3>, [
  [<ore:sleepingBag>, <ore:dyeLightBlue>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:4>, [
  [<ore:sleepingBag>, <ore:dyeYellow>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:5>, [
  [<ore:sleepingBag>, <ore:dyeLime>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:6>, [
  [<ore:sleepingBag>, <ore:dyePink>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:7>, [
  [<ore:sleepingBag>, <ore:dyeGray>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:8>, [
  [<ore:sleepingBag>, <ore:dyeLightGray>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:9>, [
  [<ore:sleepingBag>, <ore:dyeCyan>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:10>, [
  [<ore:sleepingBag>, <ore:dyePurple>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:11>, [
  [<ore:sleepingBag>, <ore:dyeBlue>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:12>, [
  [<ore:sleepingBag>, <ore:dyeBrown>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:13>, [
  [<ore:sleepingBag>, <ore:dyeGreen>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:14>, [
  [<ore:sleepingBag>, <ore:dyeRed>, null]
]);

recipes.addShaped(<comforts:sleeping_bag:15>, [
  [<ore:sleepingBag>, <ore:dyeBlack>, null]
]);

/*~~~~~~
Hammocks
~~~~~~~*/

# Remove current recipes
recipes.removeByRecipeName("comforts:hammock_orange_from_white");
recipes.removeByRecipeName("comforts:hammock_magenta_from_white");
recipes.removeByRecipeName("comforts:hammock_lightblue_from_white");
recipes.removeByRecipeName("comforts:hammock_yellow_from_white");
recipes.removeByRecipeName("comforts:hammock_lime_from_white");
recipes.removeByRecipeName("comforts:hammock_pink_from_white");
recipes.removeByRecipeName("comforts:hammock_gray_from_white");
recipes.removeByRecipeName("comforts:hammock_lightgray_from_white");
recipes.removeByRecipeName("comforts:hammock_cyan_from_white");
recipes.removeByRecipeName("comforts:hammock_purple_from_white");
recipes.removeByRecipeName("comforts:hammock_blue_from_white");
recipes.removeByRecipeName("comforts:hammock_brown_from_white");
recipes.removeByRecipeName("comforts:hammock_green_from_white");
recipes.removeByRecipeName("comforts:hammock_red_from_white");
recipes.removeByRecipeName("comforts:hammock_black_from_white");
recipes.removeByRecipeName("comforts:hammock_orange_from_white");

# Readd recipes using Ore Dictionaried items
recipes.addShaped(<comforts:hammock:0>, [
  [<ore:hammock>, <ore:dyeWhite>, null]
]);

recipes.addShaped(<comforts:hammock:1>, [
  [<ore:hammock>, <ore:dyeOrange>, null]
]);

recipes.addShaped(<comforts:hammock:2>, [
  [<ore:hammock>, <ore:dyeMagenta>, null]
]);

recipes.addShaped(<comforts:hammock:3>, [
  [<ore:hammock>, <ore:dyeLightBlue>, null]
]);

recipes.addShaped(<comforts:hammock:4>, [
  [<ore:hammock>, <ore:dyeYellow>, null]
]);

recipes.addShaped(<comforts:hammock:5>, [
  [<ore:hammock>, <ore:dyeLime>, null]
]);

recipes.addShaped(<comforts:hammock:6>, [
  [<ore:hammock>, <ore:dyePink>, null]
]);

recipes.addShaped(<comforts:hammock:7>, [
  [<ore:hammock>, <ore:dyeGray>, null]
]);

recipes.addShaped(<comforts:hammock:8>, [
  [<ore:hammock>, <ore:dyeLightGray>, null]
]);

recipes.addShaped(<comforts:hammock:9>, [
  [<ore:hammock>, <ore:dyeCyan>, null]
]);

recipes.addShaped(<comforts:hammock:10>, [
  [<ore:hammock>, <ore:dyePurple>, null]
]);

recipes.addShaped(<comforts:hammock:11>, [
  [<ore:hammock>, <ore:dyeBlue>, null]
]);

recipes.addShaped(<comforts:hammock:12>, [
  [<ore:hammock>, <ore:dyeBrown>, null]
]);

recipes.addShaped(<comforts:hammock:13>, [
  [<ore:hammock>, <ore:dyeGreen>, null]
]);

recipes.addShaped(<comforts:hammock:14>, [
  [<ore:hammock>, <ore:dyeRed>, null]
]);

recipes.addShaped(<comforts:hammock:15>, [
  [<ore:hammock>, <ore:dyeBlack>, null]
]);

print("==== Initialized beds.zs ====");
