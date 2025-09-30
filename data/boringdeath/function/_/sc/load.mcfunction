#> boringdeath:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add _boringdeath dummy

execute unless score *init _boringdeath matches 1 run data merge storage boringdeath:config {ignore_vanishing:false, initial_item_age:0s}
scoreboard players set *init _boringdeath 1