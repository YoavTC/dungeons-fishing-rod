advancement revoke @s only dungeons-fishing-rod:_events/on_fish

tag @s add dungeons-fishing-rod.temp_attacker
execute positioned as @s rotated as @s anchored eyes positioned ^ ^ ^3 as @e[type=fishing_bobber,distance=..34] positioned as @s if function dungeons-fishing-rod:check_bobber run function dungeons-fishing-rod:fish