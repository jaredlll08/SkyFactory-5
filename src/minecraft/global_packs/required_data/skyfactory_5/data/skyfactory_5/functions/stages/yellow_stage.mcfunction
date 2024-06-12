gamestage add @s yellow
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud ffd83d
execute as @e[type=player,distance=..64] run colorfulskies color @s sun ffd83d
execute as @e[type=player,distance=..64] run colorfulskies color @s moon ffd83d
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise ffd83d
execute as @e[type=player,distance=..64] run colorfulskies color @s sky ffd83d

#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#ffd83d"}
title @s subtitle [{"text":"§lYellow§r","color":"#ffd83d"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
