#Executed at every station's main armorstand.

#Fetch input from buttons
execute as @s[tag=shape_station] run function donut_shop:scroller/shape/get_input
execute as @s[tag=filling_station] run function donut_shop:scroller/filling/get_input
execute as @s[tag=sauce_station] run function donut_shop:scroller/sauce/get_input
execute as @s[tag=sprinkles_station] run function donut_shop:scroller/sprinkles/get_input

#Player pushed UP button
execute if score @s[tag=shape_station] scroller matches 1 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_up 
execute if score @s[tag=filling_station] scroller matches 1 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_up 
execute if score @s[tag=sauce_station] scroller matches 1 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_up 
execute if score @s[tag=sprinkles_station] scroller matches 1 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_up 

#Player pushed DOWN button
execute if score @s[tag=shape_station] scroller matches 2 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_down
execute if score @s[tag=filling_station] scroller matches 2 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_down 
execute if score @s[tag=sauce_station] scroller matches 2 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_down
execute if score @s[tag=sprinkles_station] scroller matches 2 as @e[type=armor_stand,tag=list,sort=nearest,limit=1] at @s run function donut_shop:scroller/scroll_down 