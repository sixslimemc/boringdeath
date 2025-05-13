# IMPL > deathdef-boring : deathdef <&> death
# on_item

tag @s remove _deathdef-boring.item

data modify entity @s Item set from storage deathdef:abstract/in death.items[-1]
data modify entity @s Age set from storage deathdef-boring:config initial_item_age
