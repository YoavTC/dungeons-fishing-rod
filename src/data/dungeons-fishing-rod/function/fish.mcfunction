# Store bobber level
execute store result entity @s data.dungeons-fishing-rod.bobber_lvl int 1 on origin run function dungeons-fishing-rod:get_bobber_lvl

execute if items entity @s weapon.mainhand minecraft:fishing_rod
execute store result score @s dungeons-fishing-rod.bobber_lvl on origin run data get entity @s equipment.mainhand.components."minecraft:enchantments"."dungeons-fishing-rod:stunning"

# Store closest player's XZ pos and compare with bobber's
execute as @n[type=#dungeons-fishing-rod:can_be_stunned] store result score @s dungeons-fishing-rod.x run data get entity @s Pos[0] 10
execute as @n[type=#dungeons-fishing-rod:can_be_stunned] store result score @s dungeons-fishing-rod.z run data get entity @s Pos[2] 10
execute as @s store result score @s dungeons-fishing-rod.x run data get entity @s Pos[0] 10
execute as @s store result score @s dungeons-fishing-rod.z run data get entity @s Pos[2] 10

# Apply stun if XZ positions match
execute if score @s dungeons-fishing-rod.x = @n[type=#dungeons-fishing-rod:can_be_stunned] dungeons-fishing-rod.x if score @s dungeons-fishing-rod.z = @n[type=#dungeons-fishing-rod:can_be_stunned] dungeons-fishing-rod.z as @n[type=#dungeons-fishing-rod:can_be_stunned] positioned as @s run function dungeons-fishing-rod:stun with entity @n[type=fishing_bobber] data.dungeons-fishing-rod

# Reset closest player's XZ pos scores
scoreboard players reset @n[type=#dungeons-fishing-rod:can_be_stunned] dungeons-fishing-rod.x
scoreboard players reset @n[type=#dungeons-fishing-rod:can_be_stunned] dungeons-fishing-rod.z

execute on origin run tag @s remove dungeons-fishing-rod.temp_attacker