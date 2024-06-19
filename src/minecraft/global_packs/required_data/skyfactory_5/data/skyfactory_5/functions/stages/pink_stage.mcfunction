gamestage add @s pink
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud f38caa
execute as @e[type=player,distance=..64] run colorfulskies color @s sun f38caa
execute as @e[type=player,distance=..64] run colorfulskies color @s moon f38caa
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise f38caa
execute as @e[type=player,distance=..64] run colorfulskies color @s sky f38caa

execute as @e[type=player,distance=..64] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#f38caa"}
title @s subtitle [{"text":"§lPink§r","color":"#f38caa"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
