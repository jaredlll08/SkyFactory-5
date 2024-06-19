gamestage add @s red
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud b02e26
execute as @e[type=player,distance=..64] run colorfulskies color @s sun b02e26
execute as @e[type=player,distance=..64] run colorfulskies color @s moon b02e26
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise b02e26
execute as @e[type=player,distance=..64] run colorfulskies color @s sky b02e26

#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#b02e26"}
title @s subtitle [{"text":"§lRed§r","color":"#b02e26"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
