function cpaladeds3:animacion/main
execute as @a[scores={cpala.totem=1..}] run function cpaladeds3:totem

execute as @e[tag=fogata_h] at @s if score @s cpala.ded3s.anim matches 200 run playsound cpaladeds3:revivir master @a ~ ~ ~ 4 1 1
execute as @e[tag=fogata_h] at @s if score @s cpala.ded3s.anim matches 200 run particle campfire_cosy_smoke ~ ~1 ~ 0.0 0.0 0.0 0.2 30 force @a
execute as @e[tag=fogata_h] at @s if score @s cpala.ded3s.anim matches 180 run particle campfire_cosy_smoke ~ ~1 ~ 0.0 0.0 0.0 0.2 30 force @a
execute as @e[tag=fogata_h] at @s if score @s cpala.ded3s.anim matches 160 run summon armor_stand ~ ~2 ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["fogata_steve"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20}}],body_armor_item:{id:"minecraft:stick",count:1}}
execute as @e[tag=fogata_h] at @s if score @s cpala.ded3s.anim matches 160 run particle campfire_cosy_smoke ~ ~1 ~ 0.0 0.0 0.0 0.2 30 force @a
execute as @e[tag=fogata_h] at @s if score @s cpala.ded3s.anim matches ..160 run particle minecraft:dust 255 255 255 1 ~ ~ ~ 5 5 5 0 50
execute as @e[tag=fogata_h] at @s if score @s cpala.ded3s.anim matches ..160 as @e[tag=fogata_steve] at @s run tp @s ~ ~0.025 ~
execute as @e[tag=fogata_h] at @s positioned ~ ~2 ~ if score @s cpala.ded3s.anim matches ..160 run function cpaladeds3:animacion/fire_tornado
execute as @e[tag=fogata_h] at @s positioned ~ ~6 ~2 if score @s cpala.ded3s.anim matches 140 run summon lightning_bolt ~ ~ ~
execute as @e[tag=fogata_h] at @s positioned ~2 ~6 ~ if score @s cpala.ded3s.anim matches 110 run summon lightning_bolt ~ ~ ~
execute as @e[tag=fogata_h] at @s positioned ~ ~6 ~-2 if score @s cpala.ded3s.anim matches 90 run summon lightning_bolt ~ ~ ~
execute as @e[tag=fogata_h] at @s positioned ~-2 ~6 ~ if score @s cpala.ded3s.anim matches 60 run summon lightning_bolt ~ ~ ~

execute as @e[tag=fogata_h] if score @s cpala.ded3s.anim matches 1.. run scoreboard players remove @s cpala.ded3s.anim 1
execute as @e[tag=fogata_h] if score @s cpala.ded3s.anim matches 0 run kill @e[tag=fogata_steve]
scoreboard players reset @e[tag=fogata_h,scores={cpala.ded3s.anim=0}] cpala.ded3s.anim