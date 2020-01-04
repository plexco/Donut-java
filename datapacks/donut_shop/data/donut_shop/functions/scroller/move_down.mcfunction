#teleport each list entity down one block recursively and give the end of the list tag "tail"
tag @s add visited
tp ~ ~-1 ~
execute at @s unless entity @e[type=armor_stand,tag=!visited,distance=..0.5] run tag @s add tail
execute at @s as @e[type=armor_stand,tag=!visited,distance=..0.5] run function donut_shop:scroller/scroll_down
tag @s remove visited