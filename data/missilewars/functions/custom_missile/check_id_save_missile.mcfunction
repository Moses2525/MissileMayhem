execute positioned 0 0 0 as @e[type=marker,tag=UUIDHolder,distance=..5] store result score @s m.UUID1 run data get entity @s data.OwnerUUID
execute positioned 0 0 0 if score @s m.UUID1 = @e[type=marker,tag=UUIDHolder,distance=..5,limit=1] m.UUID1 at @s run function missilewars:custom_missile/save_missile
execute positioned 0 0 0 unless score @s m.UUID1 = @e[type=marker,tag=UUIDHolder,distance=..5,limit=1] m.UUID1 run tellraw @s {"color":"red","text": "Another player has taken this missile name, please choose another one."}
execute positioned 0 0 0 unless score @s m.UUID1 = @e[type=marker,tag=UUIDHolder,distance=..5,limit=1] m.UUID1 at @s run playsound minecraft:block.note_block.guitar block @s ~ ~ ~ 1 0