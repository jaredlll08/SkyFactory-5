execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @e[type=player,distance=..64] ~ ~ ~ 1.0 1.0
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 0080ff
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 0080ff
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 0080ff
gamerule doWeatherCycle true
weather rain