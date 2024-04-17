gamestage add @s lime
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 02FD02
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 02FD02
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 02FD02
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 02FD02
execute as @e[type=player,distance=..64] run colorfulskies color @s sky 02FD02

execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#02FD02"}
title @s subtitle [{"text":"§lLime§r","color":"#02FD02"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
