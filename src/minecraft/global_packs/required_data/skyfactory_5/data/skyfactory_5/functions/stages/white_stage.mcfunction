gamestage add @s white
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud ffffff
execute as @e[type=player,distance=..64] run colorfulskies color @s sun ffffff
execute as @e[type=player,distance=..64] run colorfulskies color @s moon ffffff
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise ffffff
execute as @e[type=player,distance=..64] run colorfulskies color @s sky ffffff

#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#ffffff"}
title @s subtitle [{"text":"§lWhite§r","color":"#ffffff"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
