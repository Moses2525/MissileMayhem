scoreboard players operation WinningScore m.Variables = WinningScore m.Constants
execute as @a[team=m.Blue,x=0] run scoreboard players add WinningScore m.Variables 1000
execute unless score @s m.BlueWin matches 1 if score @s m.BlueScore >= WinningScore m.Variables run scoreboard players set @s m.PreBlueWin 1
scoreboard players operation WinningScore m.Variables = WinningScore m.Constants
execute as @a[team=m.Green,x=0] run scoreboard players add WinningScore m.Variables 1000
execute unless score @s m.GreenWin matches 1 if score @s m.GreenScore >= WinningScore m.Variables run scoreboard players set @s m.PreGreenWin 1
scoreboard players operation WinningScore m.Variables = WinningScore m.Constants
execute as @a[team=m.Red,x=0] run scoreboard players add WinningScore m.Variables 1000
execute unless score @s m.RedWin matches 1 if score @s m.RedScore >= WinningScore m.Variables run scoreboard players set @s m.PreRedWin 1
scoreboard players operation WinningScore m.Variables = WinningScore m.Constants
execute as @a[team=m.Purple,x=0] run scoreboard players add WinningScore m.Variables 1000
execute unless score @s m.PurpleWin matches 1 if score @s m.PurpleScore >= WinningScore m.Variables run scoreboard players set @s m.PrePurpleWin 1
execute if score @s m.PreBlueWin matches 1 run scoreboard players set @s m.BlueWin 1
execute if score @s m.PreGreenWin matches 1 run scoreboard players set @s m.GreenWin 1
execute if score @s m.PreRedWin matches 1 run scoreboard players set @s m.RedWin 1
execute if score @s m.PrePurpleWin matches 1 run scoreboard players set @s m.PurpleWin 1
execute if score @s m.PreBlueWin matches 1 if score @s m.PurpleScore matches 0 if score @s m.GreenScore matches 0 if score @s m.RedScore matches 0 run advancement grant @a[team=m.Blue,x=0] only missilewars:perfect_koth
execute if score @s m.PreGreenWin matches 1 if score @s m.BlueScore matches 0 if score @s m.PurpleScore matches 0 if score @s m.RedScore matches 0 run advancement grant @a[team=m.Green,x=0] only missilewars:perfect_koth
execute if score @s m.PreRedWin matches 1 if score @s m.BlueScore matches 0 if score @s m.GreenScore matches 0 if score @s m.PurpleScore matches 0 run advancement grant @a[team=m.Red,x=0] only missilewars:perfect_koth
execute if score @s m.PrePurpleWin matches 1 if score @s m.BlueScore matches 0 if score @s m.GreenScore matches 0 if score @s m.RedScore matches 0 run advancement grant @a[team=m.Purple,x=0] only missilewars:perfect_koth

function missilewars:game_modes/4teams/end_game