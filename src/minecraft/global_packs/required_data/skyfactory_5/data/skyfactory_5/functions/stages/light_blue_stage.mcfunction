gamestage add @s light_blue
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 3ab3da
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 3ab3da
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 3ab3da
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 3ab3da
execute as @e[type=player,distance=..64] run colorfulskies color @s sky 3ab3da

execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#3ab3da"}
title @s subtitle [{"text":"§lLight Blue§r","color":"#3ab3da"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
