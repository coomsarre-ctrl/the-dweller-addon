#Dweller 1 Flee Behavior
#When spotted, run away from nearest player and seek cover

#Face away from nearest player
execute at @s run tp @s ~ ~ ~ facing away

#Increase movement speed
effect give @s speed 10 2 true

#Apply event to switch behavior
event entity @s dweller:on_spotted

#Remove spotted tag after 3 seconds
schedule function dweller:dweller_1_unspot 60 replace
