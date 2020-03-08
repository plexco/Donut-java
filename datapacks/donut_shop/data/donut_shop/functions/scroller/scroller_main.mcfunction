#Executed each tick.

#Fetch input from buttons
execute as @e[type=armor_stand,tag=shape_station] at @s run function donut_shop:scroller/shape/get_input
execute as @e[type=armor_stand,tag=filling_station] at @s run function donut_shop:scroller/filling/get_input
execute as @e[type=armor_stand,tag=sauce_station] at @s run function donut_shop:scroller/sauce/get_input
execute as @e[type=armor_stand,tag=topping_station] at @s run function donut_shop:scroller/topping/get_input

#Player pushed UP button
execute as @e[type=armor_stand,tag=shape_station] at @s if score @s scroller matches 1 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_up 
execute as @e[type=armor_stand,tag=filling_station] at @s if score @s scroller matches 1 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_up 
execute as @e[type=armor_stand,tag=sauce_station] at @s if score @s scroller matches 1 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_up 
execute as @e[type=armor_stand,tag=topping_station] at @s if score @s scroller matches 1 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_up 

#Player pushed DOWN button
execute as @e[type=armor_stand,tag=shape_station] at @s if score @s scroller matches 2 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_down
execute as @e[type=armor_stand,tag=filling_station] at @s if score @s scroller matches 2 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_down 
execute as @e[type=armor_stand,tag=sauce_station] at @s if score @s scroller matches 2 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_down
execute as @e[type=armor_stand,tag=topping_station] at @s if score @s scroller matches 2 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_down 
