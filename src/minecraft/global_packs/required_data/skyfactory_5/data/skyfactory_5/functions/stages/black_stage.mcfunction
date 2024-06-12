gamestage add @s black
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 1d1c21
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 1d1c21
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 1d1c21
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 1d1c21
execute as @e[type=player,distance=..64] run colorfulskies color @s sky 1d1c21


#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#1d1c21"}
title @s subtitle [{"text":"§lBlack§r","color":"#1d1c21"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
