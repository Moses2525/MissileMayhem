xp set @a 100 levels
effect give @a minecraft:haste 2 255 true
scoreboard players enable @a Start

gamemode adventure @a[tag=!Editor]
gamemode survival @a[tag=Editor]

execute as @e[type=tnt,nbt={Fuse:1s},x=34,y=94,z=3,dx=8,dy=7,dz=23] at @s run playsound entity.generic.explode block @a ~ ~ ~ 1
execute as @e[type=tnt,nbt={Fuse:1s},x=34,y=94,z=3,dx=8,dy=7,dz=23] at @s run particle explosion ~ ~ ~
kill @e[type=tnt,nbt={Fuse:1s},x=34,y=94,z=3,dx=8,dy=7,dz=23]

execute unless block -4 100 0 lectern run setblock -4 100 0 lectern[facing=east,has_book=true]{Book:{id:written_book,Count:1b,tag:{author:"Summoner",title:"Summoned Book",pages:['{"text":"Normal"}','{"text":"No Walls"}','{"text":"Small"}']}}}
clear @a written_book

scoreboard players set @a deathCheck 0

function missilewars:start/check_start

execute as @e[x=0, y=100,z=5,distance=0..2,team=!Blue] run function missilewars:start/join_blue
execute as @e[x=0, y=100,z=-5,distance=0..2,team=!Green] run function missilewars:start/join_green

function missilewars:maps/select_map

function missilewars:custom_missile/save_and_load

execute if score Running Constants matches 0 run function missilewars:main/set_map