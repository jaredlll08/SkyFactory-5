gamestage add @s orange
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud f9801d
execute as @e[type=player,distance=..64] run colorfulskies color @s sun f9801d
execute as @e[type=player,distance=..64] run colorfulskies color @s moon f9801d
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise f9801d
execute as @e[type=player,distance=..64] run colorfulskies color @s sky f9801d

#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#f9801d"}
title @s subtitle [{"text":"§lOrange§r","color":"#f9801d"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
