gamestage add @s orange
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud fb6b1d
execute as @e[type=player,distance=..64] run colorfulskies color @s sun fb6b1d
execute as @e[type=player,distance=..64] run colorfulskies color @s moon fb6b1d
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise fb6b1d

#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#fb6b1d"}
title @s subtitle [{"text":"§lOrange§r","color":"#fb6b1d"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
