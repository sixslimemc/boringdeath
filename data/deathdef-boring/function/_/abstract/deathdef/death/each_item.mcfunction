# IMPL > deathdef-boring : deathdef <&> death
# each_item

summon item ~ ~ ~ {Item:{id:'minecraft:slime_ball', count:1b}, Tags:[_deathdef-boring.item]}
execute as @n[type=item, distance=0..0.1, tag=_deathdef-boring.item] run function deathdef-boring:_/abstract/deathdef/death/on_item

data remove storage deathdef:abstract/in death.items[-1]
execute if data storage deathdef:abstract/in death.items[0] run function deathdef-boring:_/abstract/deathdef/death/each_item
