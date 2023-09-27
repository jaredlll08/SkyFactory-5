gamestage add @s yellow
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud ffff00
execute as @e[type=player,distance=..64] run colorfulskies color @s sun ffff00
execute as @e[type=player,distance=..64] run colorfulskies color @s moon ffff00
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise ffff00

#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#ffff00"}
title @s subtitle [{"text":"§lYellow§r","color":"#ffff00"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
