#execute as @a[tag=!garden,tag=!hub] unless score #roguecraft_master beam_amount > #roguecraft_master beam_max run function roguecraft:infinite_garden/prepare_marker_1
#execute as @a run function roguecraft:infinite_garden/prepare_beam_1

data modify storage roguecraft:master run_active set value 0
data modify storage roguecraft:master bosses_checked set value 0b
data modify storage roguecraft:master end set value 0
data modify storage roguecraft:master sleep set value 0b

# ---- implant from roguecraft communism ---- #
function roguecraft_communism:split
# ---- implant from roguecraft communism ---- #

execute as @e[type=minecraft:marker,tag=giant] at @s run function roguecraft:giant/disable with entity @s data
function roguecraft:giant/raid/disable_all

function roguecraft:ender_dragon/reset_dragon_attacks
bossbar set minecraft:dragon players @a[tag=olkjahsoihaef]
bossbar set minecraft:phase_4_mobs players @a[tag=olkjahsoihaef]
function roguecraft:bosses/remove_bossbars/init

execute if data storage roguecraft:master {end_generation:{visited:1b}} run function custom_ender_dragon:generate/generate_init

execute as @a[tag=!garden,tag=!hub] run function roguecraft:game_loop/run_end_singular {message:"{translate:\"roguecraft.title.defeat\",bold:true,color:\"dark_red\"}",sound:"minecraft:entity.wither.spawn master @s[tag=!garden,tag=!hub] 0.00 64 0.00 0.2 0.75"}

tag @a remove return_to_hub

schedule function roguecraft:infinite_garden/hub/check_bosses 1s

bossbar set minecraft:difficulty players @s[tag=how_tf_did_this_video_get_over_200k_views_sdigfhwshje]