gamestage add @s gray
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 474f52
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 474f52
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 474f52
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 474f52
execute as @e[type=player,distance=..64] run colorfulskies color @s sky 474f52


execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#474f52"}
title @s subtitle [{"text":"§lGray§r","color":"#474f52"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
