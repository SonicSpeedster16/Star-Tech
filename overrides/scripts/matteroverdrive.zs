#Name: matteroverdrive.zs
#Author: SonicSpeedster16
#Description: Add missing recipes for items from Matter Overdrive
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("==== Initializing matteroverdrive.zs ====");

# Industrial Glass
recipes.addShaped(<matteroverdrive:industrial_glass> * 3, [
  [<matteroverdrive:tritanium_plate>, null, <matteroverdrive:tritanium_plate>],
  [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
  [<matteroverdrive:tritanium_plate>, null, <matteroverdrive:tritanium_plate>]
]);
mods.thermalexpansion.InductionSmelter.addRecipe(<matteroverdrive:industrial_glass>, <minecraft:glass>, <matteroverdrive:tritanium_ingot>, 8000);

# Microwave
recipes.addShaped(<matteroverdrive:microwave>, [
  [null, null, null],
  [<matteroverdrive:tritanium_plate>, <minecraft:glass_pane>, <matteroverdrive:tritanium_plate>],
  [null, null, null]
]);

/*~~~~~~~~~~~~~~~
Tritanium Crates:
~~~~~~~~~~~~~~~~*/
# White
recipes.addShaped(<matteroverdrive:tritanium_crate_white>, [
  [<ore:dyeWhite>, null, <ore:dyeWhite>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_white>, [
  [<ore:dyeWhite>, null, <ore:dyeWhite>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Orange
recipes.addShaped(<matteroverdrive:tritanium_crate_orange>, [
  [<ore:dyeOrange>, null, <ore:dyeOrange>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_orange>, [
  [<ore:dyeOrange>, null, <ore:dyeOrange>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Magenta
recipes.addShaped(<matteroverdrive:tritanium_crate_magenta>, [
  [<ore:dyeMagenta>, null, <ore:dyeMagenta>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_magenta>, [
  [<ore:dyeMagenta>, null, <ore:dyeMagenta>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Light Blue
recipes.addShaped(<matteroverdrive:tritanium_crate_light_blue>, [
  [<ore:dyeLightBlue>, null, <ore:dyeLightBlue>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_light_blue>, [
  [<ore:dyeLightBlue>, null, <ore:dyeLightBlue>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Yellow
recipes.remove(<matteroverdrive:tritanium_crate_yellow>);
recipes.addShaped(<matteroverdrive:tritanium_crate_yellow>, [
  [<ore:dyeYellow>, null, <ore:dyeYellow>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_yellow>, [
  [<ore:dyeYellow>, null, <ore:dyeYellow>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Lime
recipes.addShaped(<matteroverdrive:tritanium_crate_lime>, [
  [<ore:dyeLime>, null, <ore:dyeLime>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_lime>, [
  [<ore:dyeLime>, null, <ore:dyeLime>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Pink
recipes.addShaped(<matteroverdrive:tritanium_crate_pink>, [
  [<ore:dyePink>, null, <ore:dyePink>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_pink>, [
  [<ore:dyePink>, null, <ore:dyePink>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Gray
recipes.addShaped(<matteroverdrive:tritanium_crate_gray>, [
  [<ore:dyeGray>, null, <ore:dyeGray>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_gray>, [
  [<ore:dyeGray>, null, <ore:dyeGray>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Light Gray
recipes.addShaped(<matteroverdrive:tritanium_crate_silver>, [
  [<ore:dyeLightGray>, null, <ore:dyeLightGray>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_silver>, [
  [<ore:dyeLightGray>, null, <ore:dyeLightGray>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Cyan
recipes.addShaped(<matteroverdrive:tritanium_crate_cyan>, [
  [<ore:dyeCyan>, null, <ore:dyeCyan>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_cyan>, [
  [<ore:dyeCyan>, null, <ore:dyeCyan>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Purple
recipes.addShaped(<matteroverdrive:tritanium_crate_purple>, [
  [<ore:dyePurple>, null, <ore:dyePurple>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_purple>, [
  [<ore:dyePurple>, null, <ore:dyePurple>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Blue
recipes.addShaped(<matteroverdrive:tritanium_crate_blue>, [
  [<ore:dyeBlue>, null, <ore:dyeBlue>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_blue>, [
  [<ore:dyeBlue>, null, <ore:dyeBlue>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Brown
recipes.addShaped(<matteroverdrive:tritanium_crate_brown>, [
  [<ore:dyeBrown>, null, <ore:dyeBrown>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_brown>, [
  [<ore:dyeBrown>, null, <ore:dyeBrown>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Green
recipes.addShaped(<matteroverdrive:tritanium_crate_green>, [
  [<ore:dyeGreen>, null, <ore:dyeGreen>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_green>, [
  [<ore:dyeGreen>, null, <ore:dyeGreen>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Red
recipes.addShaped(<matteroverdrive:tritanium_crate_red>, [
  [<ore:dyeRed>, null, <ore:dyeRed>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_red>, [
  [<ore:dyeRed>, null, <ore:dyeRed>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

# Black
recipes.addShaped(<matteroverdrive:tritanium_crate_black>, [
  [<ore:dyeBlack>, null, <ore:dyeBlack>],
  [<matteroverdrive:tritanium_plate>, <minecraft:chest>, <matteroverdrive:tritanium_plate>],
  [null, <matteroverdrive:tritanium_plate>, null]
]);
recipes.addShaped(<matteroverdrive:tritanium_crate_black>, [
  [<ore:dyeBlack>, null, <ore:dyeBlack>],
  [null, <matteroverdrive:tritanium_crate>, null],
  [null, null, null]
]);

/*~~~~~~~~~~~~
Color Modules:
~~~~~~~~~~~~~~*/
# Red
recipes.addShaped(<matteroverdrive:weapon_module_color>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeRed>, <matteroverdrive:tritanium_plate>],
]);

# Green
recipes.addShaped(<matteroverdrive:weapon_module_color:1>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeGreen>, <matteroverdrive:tritanium_plate>],
]);

# Blue
recipes.addShaped(<matteroverdrive:weapon_module_color:2>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeBlue>, <matteroverdrive:tritanium_plate>],
]);

# Brown
recipes.addShaped(<matteroverdrive:weapon_module_color:3>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeBrown>, <matteroverdrive:tritanium_plate>],
]);

# Pink
recipes.addShaped(<matteroverdrive:weapon_module_color:4>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyePink>, <matteroverdrive:tritanium_plate>],
]);

# Sky Blue
recipes.addShaped(<matteroverdrive:weapon_module_color:5>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeLightBlue>, <matteroverdrive:tritanium_plate>],
]);

# Gold
recipes.addShaped(<matteroverdrive:weapon_module_color:6>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeYellow>, <matteroverdrive:tritanium_plate>],
]);

# Lime Green
recipes.addShaped(<matteroverdrive:weapon_module_color:7>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeLime>, <matteroverdrive:tritanium_plate>],
]);

# Black
recipes.addShaped(<matteroverdrive:weapon_module_color:8>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeBlack>, <matteroverdrive:tritanium_plate>],
]);

# Gray
recipes.addShaped(<matteroverdrive:weapon_module_color:9>, [
  [<matteroverdrive:tritanium_plate>, <ore:dyeGray>, <matteroverdrive:tritanium_plate>],
]);

print("==== Initialized matteroverdrive.zs ====");
