gamestage add @s blue
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 3c44a9
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 3c44a9
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 3c44a9
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 3c44a9
execute as @e[type=player,distance=..64] run colorfulskies color @s sky 3c44a9

#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#3c44a9"}
title @s subtitle [{"text":"§lBlue§r","color":"#3c44a9"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]

function skyfactory_5:rain
