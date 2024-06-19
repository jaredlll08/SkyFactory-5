gamestage add @s lime
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 80c71f
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 80c71f
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 80c71f
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 80c71f
execute as @e[type=player,distance=..64] run colorfulskies color @s sky 80c71f

execute as @e[type=player,distance=..64] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#80c71f"}
title @s subtitle [{"text":"§lLime§r","color":"#80c71f"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
