gamestage add @s cyan
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 30e1b9
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 30e1b9
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 30e1b9
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 30e1b9

execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#30e1b9"}
title @s subtitle [{"text":"§lCyan§r","color":"#30e1b9"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
