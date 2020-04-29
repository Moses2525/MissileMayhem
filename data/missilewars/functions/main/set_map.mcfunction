# platform
fill 34 97 13 30 100 17 air
fill 30 96 17 34 96 13 minecraft:obsidian
fill 35 94 17 35 95 13 minecraft:obsidian
fill 34 94 13 30 94 17 minecraft:obsidian
fill 34 95 13 30 95 13 minecraft:obsidian
fill 34 95 17 30 95 17 minecraft:obsidian
fill 30 95 16 30 95 14 minecraft:obsidian

setblock 35 96 17 minecraft:ender_chest[facing=east]
setblock 35 96 13 minecraft:anvil

setblock 31 98 13 minecraft:oak_wall_sign[facing=south]{Text1:'{"text":"Click to","clickEvent":{"action":"run_command","value":"function missilewars:custom_missile/save_missile"}}',Text2:'{"text":"Save"}'}

setblock 31 98 17 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Click to","clickEvent":{"action":"run_command","value":"function missilewars:custom_missile/load_missile"}}',Text2:'{"text":"Load"}'}

fill 31 95 14 32 95 16 minecraft:shulker_box

# custom missile area
fill 36 95 24 36 94 5 minecraft:obsidian
fill 40 95 24 40 94 5 minecraft:obsidian
fill 36 95 5 40 94 5 minecraft:obsidian
fill 36 95 24 40 94 24 minecraft:obsidian
fill 37 95 23 39 95 6 minecraft:barrier

fill 35 94 25 41 99 25 air
fill 41 94 4 41 99 25 air
fill 41 94 4 35 99 4 air
fill 41 99 4 35 99 25 air

fill 35 94 25 35 99 18 air
fill 35 94 12 35 99 4 air
fill 35 94 12 29 99 12 air
fill 35 94 18 29 99 18 air
fill 27 94 12 29 99 18 air replace #missilewars:not_sign_quartz
setblock 28 95 15 minecraft:oak_wall_sign[facing=east]{"Text1":'{"text":"Back To Hub","clickEvent":{"action":"run_command","value":"function missilewars:main/tp_hub"}}'}

# parkour
setblock 27 95 15 minecraft:quartz_pillar
setblock 23 95 15 minecraft:quartz_pillar
setblock 23 94 11 minecraft:quartz_pillar
setblock 23 95 7 minecraft:quartz_pillar
setblock 8 101 0 minecraft:quartz_pillar
setblock 12 101 0 minecraft:quartz_pillar
setblock 15 102 0 minecraft:quartz_pillar
setblock 19 102 1 minecraft:quartz_pillar

# starting area
fill 3 99 -6 -3 99 6 minecraft:barrier

fill -1 99 6 1 99 4 minecraft:blue_stained_glass
setblock 0 99 5 minecraft:diamond_block
fill 0 99 3 0 99 1 minecraft:blue_stained_glass

fill -1 99 -6 1 99 -4 minecraft:green_stained_glass
setblock 0 99 -5 minecraft:emerald_block
fill 0 99 -3 0 99 -1 minecraft:green_stained_glass

fill -4 99 0 3 99 0 minecraft:gray_stained_glass
setblock 0 99 0 minecraft:white_stained_glass

setblock 3 101 1 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":"^"}',Text2:'{"text":"To Custom Missile"}',Text3:'{"text":"Maker and"}',Text4:'{"text":"Parkour"}'}
setblock 3 101 -1 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":"To Start use:"}',Text2:'{"text":"/trigger Start","clickEvent":{"action":"run_command","value":"/trigger Start"}}',Text3:'{"text":"or"}',Text4:'{"text":"Click Sign"}'}
setblock 4 100 0 minecraft:quartz_stairs[facing=east]
setblock 5 101 0 minecraft:quartz_stairs[facing=east]
setblock 5 100 0 minecraft:ender_chest[facing=east]

fill -5 101 1 -5 102 -1 minecraft:quartz_pillar[axis=x]
setblock -4 101 0 stone_button[facing=east,powered=false]
fill -4 99 1 -4 99 -1 minecraft:gray_stained_glass
setblock -4 102 0 minecraft:oak_wall_sign[facing=east]{Text1:'{"text":""}',Text2:'{"text":"Maps","clickEvent":{"action":"run_command","value":"trigger ChooseMap"}}',Text3:'{"text":""}',Text4:'{"text":""}'}

execute unless entity @a[x=-5,dx=2,y=104,dy=2,z=-1,dz=2] run setblock -5 101 2 minecraft:barrier
execute if entity @a[x=-5,dx=2,y=104,dy=2,z=-1,dz=2] run setblock -5 101 2 minecraft:air
setblock -6 100 0 minecraft:barrier
setblock -6 101 -1 minecraft:barrier
setblock -6 101 0 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":"Secret Sign!","clickEvent":{"action":"run_command","value":"function missilewars:main/tp_maker"}}'}