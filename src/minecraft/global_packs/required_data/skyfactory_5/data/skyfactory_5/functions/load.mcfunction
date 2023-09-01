scoreboard objectives add testing dummy
execute unless score spawn_tree testing matches 0.. run function skyfactory_5:spawn_structure
gamerule doWeatherCycle false
gamerule doInsomnia false


#Loads up teams related to Gateway Spawning
#team add sf5_gold_team
#team modify sf5_gold_team color gold
#sf5_gold_team