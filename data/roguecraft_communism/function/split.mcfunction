#get players
execute store result score player_count rc.math run list

scoreboard players set skillpoint_total rc.math 0

#math
execute as @a run scoreboard players operation skillpoint_total rc.math += @s skillpoints
scoreboard players operation skillpoint_total rc.math /= player_count rc.math

#set all player skillpoints
execute as @a run scoreboard players operation @s skillpoints = skillpoint_total rc.math