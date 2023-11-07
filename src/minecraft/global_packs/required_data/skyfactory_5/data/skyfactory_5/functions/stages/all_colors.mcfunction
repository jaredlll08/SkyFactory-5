gamestage add @s all_colors
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud clear
execute as @e[type=player,distance=..64] run colorfulskies color @s sun clear
execute as @e[type=player,distance=..64] run colorfulskies color @s moon clear
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise clear

#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 0.35

#title @s title {"text":"","color":"#ff0000"}
#title @s subtitle [{"text":"§lRed§r","color":"#ff0000"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]
