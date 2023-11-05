gamestage add @s colorless
#Sets cloud, sun, and moon to green and disables sunrise colors
colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 919191
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 919191
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 919191
execute as @e[type=player,distance=..64] run colorfulskies color @s sunrise 919191

#Reloads inControl until a fix is pushed from mcjty
function skyfactory_5:incontrol_reload
