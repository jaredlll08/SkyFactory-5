gamestage add @s blue
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 0080ff
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 0080ff
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 0080ff
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 0080ff

#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#0080ff"}
title @s subtitle [{"text":"§lBlue§r","color":"#0080ff"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
