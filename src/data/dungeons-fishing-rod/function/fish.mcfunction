say aye!
particle heart

# Store closest player's XZ pos and compare with bobber's
execute as @p store result score @s x run data get entity @s Pos[0] 10
execute as @p store result score @s z run data get entity @s Pos[2] 10
execute as @s store result score @s x run data get entity @s Pos[0] 10
execute as @s store result score @s z run data get entity @s Pos[2] 10

execute if score @s x = @p x if score @s z = @p z as @p run function dungeons-fishing-rod:stun

execute on origin run tag @s remove dungeons-fishing-rod.temp_attacker