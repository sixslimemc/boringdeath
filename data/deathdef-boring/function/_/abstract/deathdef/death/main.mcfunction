#> deathdef-boring : deathdef <&> death
#--------------------
# -> items[]: containedItem
# -> vanishing_items[]: containedItem
# -> xp: int
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# .
#--------------------

execute store result score *x _deathdef-boring run data get storage deathdef:abstract/in death.xp
execute if score *x _deathdef-boring matches 1.. summon experience_orb store result entity @s Value short 1 run scoreboard players get *x _deathdef-boring

execute if data storage deathdef-boring:config {ignore_vanishing:true} run data modify storage deathdef:abstract/in death.items append from storage deathdef:abstract/in death.vanishing_items[]

data remove storage deathdef:abstract/in death.items[].Slot
execute if data storage deathdef:abstract/in death.items[0] run function deathdef-boring:_/abstract/deathdef/death/each_item
