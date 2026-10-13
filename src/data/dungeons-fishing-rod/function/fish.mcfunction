# Store closest player's XZ pos and compare with bobber's
execute as @n[type=#dungeons-fishing-rod:can_be_stunned] store result score @s x run data get entity @s Pos[0] 10
execute as @n[type=#dungeons-fishing-rod:can_be_stunned] store result score @s z run data get entity @s Pos[2] 10
execute as @s store result score @s x run data get entity @s Pos[0] 10
execute as @s store result score @s z run data get entity @s Pos[2] 10

execute if score @s x = @n[type=#dungeons-fishing-rod:can_be_stunned] x if score @s z = @n[type=#dungeons-fishing-rod:can_be_stunned] z as @n[type=#dungeons-fishing-rod:can_be_stunned] run function dungeons-fishing-rod:stun

# Reset closest player's XZ pos scores
scoreboard players reset @n[type=#dungeons-fishing-rod:can_be_stunned] x
scoreboard players reset @n[type=#dungeons-fishing-rod:can_be_stunned] z

execute on origin run tag @s remove dungeons-fishing-rod.temp_attacker