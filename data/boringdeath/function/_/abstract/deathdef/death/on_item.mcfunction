# IMPL > boringdeath : deathdef <&> death
# on_item

tag @s remove _boringdeath.item

data modify entity @s Item set from storage deathdef:abstract/in death.items[-1]
data modify entity @s Age set from storage boringdeath:config initial_item_age
