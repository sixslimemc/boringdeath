# IMPL > boringdeath : deathdef <&> death
# each_item

summon item ~ ~ ~ {Item:{id:'minecraft:slime_ball', count:1b}, Tags:[_boringdeath.item]}
execute as @n[type=item, distance=0..0.1, tag=_boringdeath.item] run function boringdeath:_/abstract/deathdef/death/on_item

data remove storage deathdef:abstract/in death.items[-1]
execute if data storage deathdef:abstract/in death.items[0] run function boringdeath:_/abstract/deathdef/death/each_item
