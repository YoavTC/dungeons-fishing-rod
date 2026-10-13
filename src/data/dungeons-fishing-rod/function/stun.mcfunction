particle crit ~ ~ ~ 0.1 0.1 0.1 0.5 20

# Level based results
$execute if predicate {type:"int_value_check",test:1,value:$(bobber_lvl)} run return run function dungeons-fishing-rod:stun/1
$execute if predicate {type:"int_value_check",test:2,value:$(bobber_lvl)} run return run function dungeons-fishing-rod:stun/2
$execute if predicate {type:"int_value_check",test:3,value:$(bobber_lvl)} run return run function dungeons-fishing-rod:stun/3