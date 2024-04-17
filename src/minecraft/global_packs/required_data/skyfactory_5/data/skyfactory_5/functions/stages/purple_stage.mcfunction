gamestage add @s purple
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 800080
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 800080
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 800080
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 800080
execute as @e[type=player,distance=..64] run colorfulskies color @s sky 800080

execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#800080"}
title @s subtitle [{"text":"§lPurple§r","color":"#800080"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
