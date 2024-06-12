gamestage add @s cyan
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 169c9d
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 169c9d
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 169c9d
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 169c9d
execute as @e[type=player,distance=..64] run colorfulskies color @s sky 169c9d

execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#169c9d"}
title @s subtitle [{"text":"§lCyan§r","color":"#169c9d"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
