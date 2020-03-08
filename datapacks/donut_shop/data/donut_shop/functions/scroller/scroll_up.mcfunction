tag @s add head
function donut_shop:scroller/move_up
execute as @e[type=armor_stand,tag=head] at @e[type=armor_stand,tag=tail] run tp ~ ~-1 ~
execute as @e[type=armor_stand,tag=tail] at @s run tag @s remove tail
execute as @e[type=armor_stand,tag=head] at @s run tag @s remove head

#Update display
execute as @e[type=armor_stand,tag=station_main,sort=nearest,limit=1] at @s run function donut_shop:scroller/update_display