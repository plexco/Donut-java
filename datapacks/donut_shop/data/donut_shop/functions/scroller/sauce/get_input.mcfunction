#Reset 
scoreboard players set @s scroller 0 
#UP button pushed
execute if block 7 67 4 minecraft:stone_button[powered=true] run scoreboard players set @s scroller 1
execute if block 7 67 4 minecraft:stone_button[powered=true] run setblock 7 67 4 minecraft:stone_button
#DOWN button pushed
execute if block 7 69 4 minecraft:stone_button[powered=true] run scoreboard players set @s scroller 2
execute if block 7 69 4 minecraft:stone_button[powered=true] run setblock 7 69 4 minecraft:stone_button