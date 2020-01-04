tag @s add head
function donut_shop:scroller/move_up
execute as @e[type=armor_stand,tag=head] at @e[type=armor_stand,tag=tail] run tp ~ ~-1 ~
execute as @e[type=armor_stand,tag=tail] at @s run tag @s remove tail
execute as @e[type=armor_stand,tag=head] at @s run tag @s remove head