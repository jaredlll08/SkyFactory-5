gamestage add @s brown
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 5A3713
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 5A3713
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 5A3713
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 5A3713

#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 1.0

title @s title {"text":"","color":"#964B00"}
title @s subtitle [{"text":"§lBrown§r","color":"#964B00"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
