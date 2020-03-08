#Execute at station main armorstand to update its display

#mark list armorstands to use:
tag @e[type=armor_stand,tag=list,sort=nearest,limit=1] add source_top
execute at @e[type=armor_stand,tag=source_top] positioned ~ ~-1 ~ run tag @e[type=armor_stand,tag=list,sort=nearest,limit=1] add source_middle
execute at @e[type=armor_stand,tag=source_middle] positioned ~ ~-1 ~ run tag @e[type=armor_stand,tag=list,sort=nearest,limit=1] add source_bottom

#modify display armor stands
data modify entity @e[type=armor_stand,tag=display_top,sort=nearest,limit=1] ArmorItems[3] merge from entity @e[type=armor_stand,tag=source_top,sort=nearest,limit=1] ArmorItems[3]
data modify entity @e[type=armor_stand,tag=display_middle,sort=nearest,limit=1] ArmorItems[3] merge from entity @e[type=armor_stand,tag=source_middle,sort=nearest,limit=1] ArmorItems[3]
data modify entity @e[type=armor_stand,tag=display_bottom,sort=nearest,limit=1] ArmorItems[3] merge from entity @e[type=armor_stand,tag=source_bottom,sort=nearest,limit=1] ArmorItems[3]

#remove tags
tag @e[type=armor_stand,tag=source_top] remove source_top
tag @e[type=armor_stand,tag=source_middle] remove source_middle
tag @e[type=armor_stand,tag=source_bottom] remove source_bottom
