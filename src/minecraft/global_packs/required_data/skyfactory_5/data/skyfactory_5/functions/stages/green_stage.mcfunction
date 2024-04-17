gamestage add @s green
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 06A800
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 06A800
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 06A800
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 06A800
execute as @e[type=player,distance=..64] run colorfulskies color @s sky 06A800

execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#165F16"}
title @s subtitle [{"text":"§lGreen§r","color":"#165F16"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
