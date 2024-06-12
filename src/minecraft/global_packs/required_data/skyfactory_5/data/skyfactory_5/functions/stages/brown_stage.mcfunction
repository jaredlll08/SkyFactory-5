gamestage add @s brown
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 825432
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 825432
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 825432
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 825432
execute as @e[type=player,distance=..64] run colorfulskies color @s sky 825432


#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#825432"}
title @s subtitle [{"text":"§lBrown§r","color":"#825432"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
