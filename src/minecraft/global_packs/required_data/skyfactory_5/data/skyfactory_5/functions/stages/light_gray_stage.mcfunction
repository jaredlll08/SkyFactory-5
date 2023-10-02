gamestage add @s light_gray
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud D3D3D3
execute as @e[type=player,distance=..64] run colorfulskies color @s sun D3D3D3
execute as @e[type=player,distance=..64] run colorfulskies color @s moon D3D3D3
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise D3D3D3

execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#D3D3D3"}
title @s subtitle [{"text":"§lLight Gray§r","color":"#D3D3D3"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
