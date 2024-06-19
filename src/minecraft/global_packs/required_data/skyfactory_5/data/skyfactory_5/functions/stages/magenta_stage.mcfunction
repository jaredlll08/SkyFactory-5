gamestage add @s magenta
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud c64fbd
execute as @e[type=player,distance=..64] run colorfulskies color @s sun c64fbd
execute as @e[type=player,distance=..64] run colorfulskies color @s moon c64fbd
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise c64fbd
execute as @e[type=player,distance=..64] run colorfulskies color @s sky c64fbd

execute as @e[type=player,distance=..64] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#c64fbd"}
title @s subtitle [{"text":"§lMagenta§r","color":"#c64fbd"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
