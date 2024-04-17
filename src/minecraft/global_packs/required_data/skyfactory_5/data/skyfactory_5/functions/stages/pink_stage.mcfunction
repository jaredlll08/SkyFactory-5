gamestage add @s pink
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud FFC0CB
execute as @e[type=player,distance=..64] run colorfulskies color @s sun FFC0CB
execute as @e[type=player,distance=..64] run colorfulskies color @s moon FFC0CB
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise FFC0CB
execute as @e[type=player,distance=..64] run colorfulskies color @s sky FFC0CB

execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#FFC0CB"}
title @s subtitle [{"text":"§lPink§r","color":"#FFC0CB"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
