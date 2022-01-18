execute if score Map m.Variables matches 2 positioned -2.5 15 -2.5 as @a[x=0,tag=Claiming] unless entity @s[distance=0..,dx=5,dz=5,dy=20] run tellraw @a[x=0] [{"selector": "@s"}, {"text": " is no longer claiming the point."}]
execute if score Map m.Variables matches 2 positioned -2.5 15 -2.5 as @a[x=0,tag=!Claiming] if entity @s[distance=0..,dx=5,dz=5,dy=20,gamemode=!spectator] run tellraw @a[x=0] [{"selector": "@s"}, {"text": " is claiming the point."}]
execute unless score Map m.Variables matches 2 positioned -2.5 15 -2.5 as @a[x=0,tag=Claiming] unless entity @s[distance=0..,dx=5,dz=5,dy=35] run tellraw @a[x=0] [{"selector": "@s"}, {"text": " is no longer claiming the point."}]
execute unless score Map m.Variables matches 2 positioned -2.5 15 -2.5 as @a[x=0,tag=!Claiming] if entity @s[distance=0..,dx=5,dz=5,dy=35,gamemode=!spectator] run tellraw @a[x=0] [{"selector": "@s"}, {"text": " is claiming the point."}]
tag @a[x=0] remove Claiming
execute if score Map m.Variables matches 2 positioned -2.5 15 -2.5 run tag @a[distance=0..,dx=5,dz=5,dy=20,gamemode=!spectator] add Claiming
execute unless score Map m.Variables matches 2 positioned -2.5 15 -2.5 run tag @a[distance=0..,dx=5,dz=5,dy=35,gamemode=!spectator] add Claiming

execute positioned -2.5 15 -2.5 run effect give @a[distance=0..,tag=Claiming] glowing 1 0 true
execute positioned -2.5 15 -2.5 as @a[x=0,tag=Claiming,team=m.Blue] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.BlueScore 1
execute positioned -2.5 15 -2.5 as @a[x=0,tag=Claiming,team=m.Green] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.GreenScore 1
execute positioned -2.5 15 -2.5 as @a[x=0,tag=Claiming,team=m.Red] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.RedScore 1
execute positioned -2.5 15 -2.5 as @a[x=0,tag=Claiming,team=m.Purple] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.PurpleScore 1