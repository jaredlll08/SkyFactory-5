gamestage add @s purple
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud 8932b7
execute as @e[type=player,distance=..16] run colorfulskies color @s sun 8932b7
execute as @e[type=player,distance=..16] run colorfulskies color @s moon 8932b7
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise 8932b7
execute as @e[type=player,distance=..16] run colorfulskies color @s sky 8932b7

execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#8932b7"}
title @s subtitle [{"text":"§lPurple§r","color":"#8932b7"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
