execute in roguecraft:infinite_garden run playsound minecraft:entity.enderman.teleport master @a 0 64 0 0.5 1.25
execute in roguecraft:infinite_garden run particle minecraft:reverse_portal 0 64 0 0 0 0 10 300 force
#execute in roguecraft:infinite_garden run playsound minecraft:entity.player.levelup master @a[tag=!hub,tag=!garden] 0 64 0 1 1

function custom_ender_dragon:generate/generate_init
function roguecraft:ender_dragon/reset_dragon_attacks
bossbar set minecraft:dragon players @a[tag=olkjahsoihaef]
bossbar set minecraft:phase_4_mobs players @a[tag=olkjahsoihaef]
function roguecraft:bosses/remove_bossbars/init

tag @a remove victory
tag @a remove return_to_hub

scoreboard players add @a[tag=!garden,tag=!hub] skillpoints 15
execute as @a[tag=!garden,tag=!hub] run tellraw @s {"translate":"roguecraft.skillpoint.main","bold":true,"italic":false,"color":"aqua","with":[{"translate":"roguecraft.skillpoint.boss"},"15",{"score":{"name":"@s","objective":"skillpoints"}}]}

effect clear @a[tag=!hub,tag=!garden]


#execute as @a[tag=!garden,tag=!hub] unless score #roguecraft_master beam_amount > #roguecraft_master beam_max run function roguecraft:infinite_garden/prepare_marker_1
execute as @a run function roguecraft:infinite_garden/prepare_beam_1

data modify storage roguecraft:master run_active set value 0
data modify storage roguecraft:master bosses_checked set value 0b
data modify storage roguecraft:master end set value 0

# ---- implant from roguecraft communism ---- #
function roguecraft_communism:split
# ---- implant from roguecraft communism ---- #

execute as @e[type=minecraft:marker,tag=giant] at @s run function roguecraft:giant/disable with entity @s data
function roguecraft:giant/raid/disable_all

function roguecraft:ender_dragon/reset_dragon_attacks
bossbar set minecraft:dragon players @a[tag=olkjahsoihaef]
bossbar set minecraft:phase_4_mobs players @a[tag=olkjahsoihaef]
function roguecraft:bosses/remove_bossbars/init

execute as @a[tag=!garden,tag=!hub] run function roguecraft:game_loop/run_end_singular {message:"{\"translate\":\"roguecraft.title.victory\",\"bold\":true,\"color\":\"green\"}",sound:"minecraft:entity.player.levelup master @s[tag=!hub,tag=!garden] 0 64 0 1 1"}

tag @a remove return_to_hub

schedule function roguecraft:infinite_garden/hub/check_bosses 1s

bossbar set minecraft:difficulty players @s[tag=how_tf_did_this_video_get_over_200k_views_sdigfhwshje]
