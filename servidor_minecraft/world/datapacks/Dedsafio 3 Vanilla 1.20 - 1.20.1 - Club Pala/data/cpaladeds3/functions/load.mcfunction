scoreboard objectives add cpala.ded3s.anim dummy
scoreboard objectives add cpala.ded3s.score dummy
scoreboard players set . cpala.ded3s.score 0
scoreboard objectives add cpala.totem minecraft.used:minecraft.totem_of_undying
gamerule doImmediateRespawn true
execute as @a at @s run playsound block.note_block.bit master @s ~ ~ ~ 4 2 1
tellraw @a ["\n",{"text":"[☠]","color":"gray"}," ",{"text":"Dedsafio 3 Vanilla","color":"yellow"}," - ",{"text":"Club Pala","color":"gold"},"\n",{"text":"[☠] ","color":"gray"},{"text":"Youtube","clickEvent":{"action":"open_url","value":"https://www.youtube.com/@itssos"},"color":"red"},{"text":" ","color":"gray"},{"text":"-","color":"white"},{"text":" ","color":"gray"},{"text":"Discord","clickEvent":{"action":"open_url","value":"https://www.discord.gg/dJN9ud7fh2"},"color":"#0099cc"}]