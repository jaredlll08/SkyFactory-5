gamestage add @s magenta
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud FF00FF
execute as @e[type=player,distance=..64] run colorfulskies color @s sun FF00FF
execute as @e[type=player,distance=..64] run colorfulskies color @s moon FF00FF
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise FF00FF

execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#FF00FF"}
title @s subtitle [{"text":"§lMagenta§r","color":"#FF00FF"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
