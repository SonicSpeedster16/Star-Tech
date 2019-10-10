#Name: elevators.zs
#Author: SonicSpeedster16
#Description: Modify elevator recipes to use Ore Dictionary dyes
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("==== Initializing elevators.zs ====");

# Remove current recipes
recipes.removeByRecipeName("elevatorid:redye_white");
recipes.removeByRecipeName("elevatorid:redye_orange");
recipes.removeByRecipeName("elevatorid:redye_magenta");
recipes.removeByRecipeName("elevatorid:redye_light_blue");
recipes.removeByRecipeName("elevatorid:redye_yellow");
recipes.removeByRecipeName("elevatorid:redye_lime");
recipes.removeByRecipeName("elevatorid:redye_pink");
recipes.removeByRecipeName("elevatorid:redye_gray");
recipes.removeByRecipeName("elevatorid:redye_silver");
recipes.removeByRecipeName("elevatorid:redye_cyan");
recipes.removeByRecipeName("elevatorid:redye_purple");
recipes.removeByRecipeName("elevatorid:redye_blue");
recipes.removeByRecipeName("elevatorid:redye_brown");
recipes.removeByRecipeName("elevatorid:redye_green");
recipes.removeByRecipeName("elevatorid:redye_red");
recipes.removeByRecipeName("elevatorid:redye_black");

# Readd recipes using Ore Dictionaried dyes
recipes.addShaped("Dye Elevator White",
<elevatorid:elevator_white>, [
  [<ore:blockElevator>, <ore:dyeWhite>, null]
]);

recipes.addShaped("Dye Elevator Orange",
<elevatorid:elevator_orange>, [
  [<ore:blockElevator>, <ore:dyeOrange>, null]
]);

recipes.addShaped("Dye Elevator Magenta",
<elevatorid:elevator_magenta>, [
  [<ore:blockElevator>, <ore:dyeMagenta>, null]
]);

recipes.addShaped("Dye Elevator Light Blue",
<elevatorid:elevator_light_blue>, [
  [<ore:blockElevator>, <ore:dyeLightBlue>, null]
]);

recipes.addShaped("Dye Elevator Yellow",
<elevatorid:elevator_yellow>, [
  [<ore:blockElevator>, <ore:dyeYellow>, null]
]);

recipes.addShaped("Dye Elevator Lime",
<elevatorid:elevator_lime>, [
  [<ore:blockElevator>, <ore:dyeLime>, null]
]);

recipes.addShaped("Dye Elevator Pink",
<elevatorid:elevator_pink>, [
  [<ore:blockElevator>, <ore:dyePink>, null]
]);

recipes.addShaped("Dye Elevator Gray",
<elevatorid:elevator_gray>, [
  [<ore:blockElevator>, <ore:dyeGray>, null]
]);

recipes.addShaped("Dye Elevator Light Gray",
<elevatorid:elevator_silver>, [
  [<ore:blockElevator>, <ore:dyeLightGray>, null]
]);

recipes.addShaped("Dye Elevator Cyan",
<elevatorid:elevator_cyan>, [
  [<ore:blockElevator>, <ore:dyeCyan>, null]
]);

recipes.addShaped("Dye Elevator Purple",
<elevatorid:elevator_purple>, [
  [<ore:blockElevator>, <ore:dyePurple>, null]
]);

recipes.addShaped("Dye Elevator Blue",
<elevatorid:elevator_blue>, [
  [<ore:blockElevator>, <ore:dyeBlue>, null]
]);

recipes.addShaped("Dye Elevator Brown",
<elevatorid:elevator_brown>, [
  [<ore:blockElevator>, <ore:dyeBrown>, null]
]);

recipes.addShaped("Dye Elevator Green",
<elevatorid:elevator_green>, [
  [<ore:blockElevator>, <ore:dyeGreen>, null]
]);

recipes.addShaped("Dye Elevator Red",
<elevatorid:elevator_red>, [
  [<ore:blockElevator>, <ore:dyeRed>, null]
]);

recipes.addShaped("Dye Elevator Black",
<elevatorid:elevator_black>, [
  [<ore:blockElevator>, <ore:dyeBlack>, null]
]);

print("==== Initialized elevators.zs ====");
