effect give @s minecraft:haste 2 255 true
scoreboard players reset @s Leave
scoreboard players reset @s JoinSpectators
scoreboard players reset @s JoinGreen
scoreboard players reset @s JoinBlue
scoreboard players reset @s JoinRed
scoreboard players reset @s JoinPurple
scoreboard players reset @s ClearPractice
scoreboard players reset @s Heal
execute unless score @s ChooseMissileSet matches -2147483648..2147483647 run scoreboard players set @s ChooseMissileSet -2
scoreboard players enable @s ToggleRanked

execute unless entity @s[scores={m.points=-2147483648..2147483647}] run scoreboard players set @s m.points 1000
execute unless entity @s[scores={m.GameCreationStage=-2147483648..2147483647}] run scoreboard players set @s m.GameCreationStage 0

tag @s remove carrier

gamemode adventure @s[gamemode=!creative]
execute in missilewars:lobby positioned 10 108 40 run function hub:main/death/spawnpoint
execute unless predicate missilewars:in_lobby in missilewars:lobby run tp @s 10 108 40
effect give @s saturation 2 0 true

execute if block ~ ~ ~ wheat run function missilewars:main/wheat_tp
execute if block ~ ~-1 ~ wheat run function missilewars:main/wheat_tp
execute if block ~ ~-2 ~ wheat run function missilewars:main/wheat_tp

execute as @s[scores={ChooseMissileSet=-1}] run function missilewars:start/choose_missile_set
execute if entity @s[scores={ChooseMissileSet=0..3}] run scoreboard players operation @s m.MissileSet = @s ChooseMissileSet
scoreboard players enable @s ChooseMissileSet
scoreboard players set @s ChooseMissileSet -2
function missilewars:start/missile_set_display

execute as @s[scores={ToggleRanked=1}] run function missilewars:start/toggle_ranked
execute as @s[scores={ToggleRanked=1}] run scoreboard players set @s ToggleRanked 0


execute as @s[tag=Editor] run function missilewars:main/lobby_editor
scoreboard players set @s m.tntCount 0
scoreboard players set @s m.tntBroke 0

tag @s remove InBox
execute at @s at @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1,y_rotation=-90] positioned ~-3 ~ ~-10 if entity @s[dx=7,dy=25,dz=21] run tag @s add InBox
execute at @s at @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1,y_rotation=90] positioned ~-3 ~ ~-10 if entity @s[dx=7,dy=25,dz=21] run tag @s add InBox
execute at @s at @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1,y_rotation=0] positioned ~-10 ~ ~-3 if entity @s[dx=21,dy=25,dz=7] run tag @s add InBox
execute at @s at @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1,y_rotation=-180] positioned ~-10 ~ ~-3 if entity @s[dx=21,dy=25,dz=7] run tag @s add InBox
execute as @s[tag=!InBox,tag=Editor] run function missilewars:main/clear_inv
tag @s[tag=!InBox] remove Editor

execute positioned -6.5 82 6.5 run playsound minecraft:entity.player.attack.sweep master @s[distance=..2] ~ ~ ~ 100 2 1
execute positioned -6.5 82 6.5 run tp @s[distance=..2] 10 108.5 40
execute positioned -6.5 82 6.5 run particle portal ~ ~ ~ 0 0 0 2 1 normal @s

execute as @s[tag=InBox] run clear @s written_book{display:{Name:'{"text":"Custom Missile"}'}}
execute as @s[tag=InBox,nbt=!{Inventory:[{id:"minecraft:writable_book"}]}] run function missilewars:custom_missile/move_off_head
execute as @s[tag=!InBox,nbt={Inventory:[{id:"minecraft:writable_book"}]}] run function missilewars:custom_missile/attempt_move_to_head

execute if entity @s[team=m.Lobby,x=-5,y=109,z=-23,dx=20,dy=20,dz=20] run team join m.Sumo
execute unless entity @s[team=m.Sumo,x=-5,y=109,z=-23,dx=20,dy=20,dz=20] run team join m.Lobby

scoreboard players enable @s CreateGame
execute as @s[scores={CreateGame=1..,m.GameCreationStage=0}] run function missilewars:game_modes/create_game/start
execute as @s[scores={CreateGame=1..5,m.GameCreationStage=1}] run function missilewars:game_modes/create_game/choose_mode
execute as @s[scores={CreateGame=1..3,m.GameCreationStage=2}] run function missilewars:game_modes/create_game/choose_teams
scoreboard players set @s CreateGame 0

tag @s[y=103,dy=3,x=-36,dx=72,z=-1000,dz=2000] remove Parkour

scoreboard players set @s m.deathCheck 0