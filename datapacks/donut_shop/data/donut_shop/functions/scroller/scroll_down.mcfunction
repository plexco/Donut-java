function donut_shop:scroller/move_down
execute as @e[type=armor_stand,tag=tail] at @s run tp ~ 62 ~
execute as @e[type=armor_stand,tag=tail] at @s run tag @s remove tail

#Update display
execute as @e[type=armor_stand,tag=station_main,sort=nearest,limit=1] at @s run function donut_shop:scroller/update_display