#teleport each list entity up one block recursively and give the end of the list tag "tail"
tag @s add visited
tp ~ ~1 ~
execute at @s positioned ~ ~-2 ~ unless entity @e[type=armor_stand,tag=!visited,distance=..0.5] run tag @s add tail
execute at @s positioned ~ ~-2 ~ as @e[type=armor_stand,tag=!visited,distance=..0.5] run function donut_shop:scroller/move_up
tag @s remove visited