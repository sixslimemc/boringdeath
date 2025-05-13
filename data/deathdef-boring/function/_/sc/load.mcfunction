#> deathdef-boring:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add _deathdef-boring dummy

execute unless score *init _deathdef-boring matches 1 run data merge storage deathdef-boring:config {ignore_vanishing:false, initial_item_age:0s}
scoreboard players set *init _deathdef-boring 1