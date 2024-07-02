#Loads in tree structure, sets gamerules
scoreboard objectives add spawn_tree_generated dummy
execute unless score spawn_tree spawn_tree_generated matches 0.. run gamerule spawnRadius 0
execute unless score spawn_tree spawn_tree_generated matches 0.. run function skyfactory_5:spawn_structure
execute unless score spawn_tree spawn_tree_generated matches 0.. run gamerule doWeatherCycle false
execute unless score spawn_tree spawn_tree_generated matches 0.. run gamerule doInsomnia false
execute unless score spawn_tree spawn_tree_generated matches 0.. run gamerule doTraderSpawning false
execute unless score spawn_tree spawn_tree_generated matches 0.. run gamerule doPatrolSpawning false
execute unless score spawn_tree spawn_tree_generated matches 0.. run function skyfactory_5:spawn_tree_score_update

#Loads teams for color glow effect
team add sf5_dark_red_team
team modify sf5_dark_red_team color dark_red

team add sf5_red_team
team modify sf5_red_team color red

team add sf5_gold_team
team modify sf5_gold_team color gold

team add sf5_yellow_team
team modify sf5_yellow_team color yellow

team add sf5_dark_green_team
team modify sf5_dark_green_team color dark_green

team add sf5_green_team
team modify sf5_green_team color green

team add sf5_aqua_team
team modify sf5_aqua_team color aqua

team add sf5_dark_aqua_team
team modify sf5_dark_aqua_team color dark_aqua

team add sf5_dark_blue_team
team modify sf5_dark_blue_team color dark_blue

team add sf5_blue_team
team modify sf5_blue_team color blue

team add sf5_light_purple_team
team modify sf5_light_purple_team color light_purple

team add sf5_dark_purple_team
team modify sf5_dark_purple_team color dark_purple

team add sf5_white_team
team modify sf5_white_team color white

team add sf5_gray_team
team modify sf5_gray_team color gray

team add sf5_dark_gray_team
team modify sf5_dark_gray_team color dark_gray

team add sf5_black_team
team modify sf5_black_team color black
