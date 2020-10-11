#########################################################################################################
#【掠奪時代II:黃金帝國 】
# 作者: 灰塵
#########################################################################################################
function noop_cm:chat_clear
execute @e[tag=building,c=1,r=4,team=blue] ~ ~ ~ tellraw @p ["",{"translate":"aop.menu.del","color":"red","clickEvent":{"action":"run_command","value":"/trigger bdel set 1"}},{"text":" "}]
give @p[team=blue] minecraft:iron_door 1 0 {display:{Name:"§9开启建筑",Lore:["(拿着在要开启的建筑旁按Q使用)可以开启建筑功能"]},bluebopt :1b,ench:[{id:71,lvl:3}]}
execute @e[tag=blue1,c=1,r=4] ~ ~ ~ function noop_cm:build/b1
execute @e[tag=blue5,c=1,r=4] ~ ~ ~ function noop_cm:build/b5
execute @e[tag=blue7,c=1,r=4] ~ ~ ~ function noop_cm:build/b7
execute @e[tag=blue8,c=1,r=4] ~ ~ ~ function noop_cm:build/b8
execute @e[tag=blue2,c=1,r=4] ~ ~ ~ function noop_cm:build/b2
execute @e[tag=blue6,c=1,r=4] ~ ~ ~ function noop_cm:build/b6
#藍隊建築開啟音效
execute @e[tag=blue1,c=1,r=4] ~ ~ ~ playsound custom.towncenter ambient @p ~ ~ ~ 5 1 1
execute @e[tag=blue5,c=1,r=4] ~ ~ ~ playsound custom.barracks ambient @p ~ ~ ~ 5 1 1
execute @e[tag=blue7,c=1,r=4] ~ ~ ~ playsound custom.stable ambient @p ~ ~ ~ 5 1 1
execute @e[tag=blue8,c=1,r=4] ~ ~ ~ playsound custom.archeryrange ambient @p ~ ~ ~ 5 1 1
execute @e[tag=blue2,c=1,r=4] ~ ~ ~ playsound custom.castle ambient @p ~ ~ ~ 5 1 1
execute @e[tag=blue3,c=1,r=4] ~ ~ ~ playsound custom.tower ambient @p ~ ~ ~ 5 1 1

#---軍營升級
execute @e[tag=cmd,score_baslvl_min=1,score_baslvl=1,score_lva5b_min=2] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.a5v2","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ba5lvl set 1"}},{"text":" 30 ","color":"dark_red"},{"text":"10","color":"gold"},{"text":"\n "}]
execute @e[tag=cmd,score_baslvl_min=2,score_baslvl=2,score_lva5b_min=3] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.a5v3","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ba5lvl set 2"}},{"text":" 40 ","color":"dark_red"},{"text":"15","color":"gold"},{"text":"\n "}]
execute @e[tag=cmd,score_baslvl_min=3,score_baslvl=3,score_lva5b_min=4] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.a5v4","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ba5lvl set 3"}},{"text":" 50 ","color":"dark_red"},{"text":"20","color":"gold"},{"text":"\n "}]
execute @e[tag=cmd,score_baslvl_min=1,score_baslvl=1,score_lva5b=1] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"}]
execute @e[tag=cmd,score_baslvl_min=2,score_baslvl=2,score_lva5b=2] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"}]
execute @e[tag=cmd,score_baslvl_min=3,score_baslvl=3,score_lva5b=3] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"}]
execute @e[tag=cmd,score_baslvl_min=4,score_baslvl=4] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"}]

execute @e[tag=cmd,score_bbslvl_min=1,score_bbslvl=1,score_lvb5b_min=2] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade.a5v5","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger bb5lvl set 1"}},{"text":" 30","color":"dark_red"},{"text":" 20\n-----------------","color":"gold"}]
execute @e[tag=cmd,score_bbslvl_min=2,score_bbslvl=2,score_lvb5b_min=3] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade.a5v6","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger bb5lvl set 2"}},{"text":" 30","color":"dark_red"},{"text":" 20\n-----------------","color":"gold"}]
execute @e[tag=cmd,score_bbslvl_min=3,score_bbslvl=3,score_lvb5b_min=4] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade.a5v7","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger bb5lvl set 3"}},{"text":" 30","color":"dark_red"},{"text":" 20\n-----------------","color":"gold"}]
execute @e[tag=cmd,score_bbslvl_min=1,score_bbslvl=1,score_lvb5b=1] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-----------------","color":"gold"}]
execute @e[tag=cmd,score_bbslvl_min=2,score_bbslvl=2,score_lvb5b=2] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-----------------","color":"gold"}]
execute @e[tag=cmd,score_bbslvl_min=3,score_bbslvl=3,score_lvb5b=3] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-----------------","color":"gold"}]
execute @e[tag=cmd,score_bbslvl_min=4,score_bbslvl=4] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue5,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-----------------","color":"gold"}]
#---]
#---防禦塔升級
execute @e[tag=cmd,score_btlvl_min=1,score_btlvl=1,score_lv3b_min=2] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue3,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"text":"---","color":"gold"},{"translate":"aop.build3","color":"gold"},{"text":"----------","color":"gold"},{"text":"\n"},{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.a3v2","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger b3lvl set 1"}},{"text":" 30","color":"dark_green"},{"text":" 30\n-----------------","color":"gold"}]
execute @e[tag=cmd,score_btlvl_min=2,score_btlvl=2,score_lv3b_min=3] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue3,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"text":"---","color":"gold"},{"translate":"aop.build3","color":"gold"},{"text":"----------","color":"gold"},{"text":"\n"},{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.a3v3","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger b3lvl set 2"}},{"text":" 30","color":"dark_green"},{"text":" 30\n-----------------","color":"gold"}]
execute @e[tag=cmd,score_btlvl_min=1,score_btlvl=1,score_lv3b=1] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue3,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"text":"---","color":"gold"},{"translate":"aop.build3","color":"gold"},{"text":"----------","color":"gold"},{"text":"\n"},{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-----------------","color":"gold"}]
execute @e[tag=cmd,score_btlvl_min=2,score_btlvl=2,score_lv3b=2] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue3,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"text":"---","color":"gold"},{"translate":"aop.build3","color":"gold"},{"text":"----------","color":"gold"},{"text":"\n"},{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-----------------","color":"gold"}]
execute @e[tag=cmd,score_btlvl_min=3,score_btlvl=3] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue3,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"text":"---","color":"gold"},{"translate":"aop.build3","color":"gold"},{"text":"----------","color":"gold"},{"text":"\n"},{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-----------------","color":"gold"}]
#---]
#---馬廄
execute @e[tag=cmd,score_bahlvl_min=1,score_bahlvl=1,score_lva7b_min=2] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue7,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.a7v2","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ba7lvl1 set 1"}},{"text":" 60","color":"dark_red"},{"text":" 40","color":"gold"}]
execute @e[tag=cmd,score_bahlvl_min=1,score_bahlvl=1,score_lva7b=1] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue7,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"}]
execute @e[tag=cmd,score_bahlvl_min=2,score_bahlvl=2] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue7,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"}]

execute @e[tag=cmd,score_bbhlvl_min=1,score_bbhlvl=1,score_lvb7b_min=2] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue7,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.a7v4","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger bb7lvl1 set 1"}},{"text":" 60","color":"dark_red"},{"text":" 40\n-----------------","color":"gold"}]
execute @e[tag=cmd,score_bbhlvl_min=1,score_bbhlvl=1,score_lvb7b=1] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue7,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-------------------","color":"gold"}]
execute @e[tag=cmd,score_bbhlvl_min=2,score_bbhlvl=2] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue7,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-------------------","color":"gold"}]
#---]
#---射箭場
execute @e[tag=cmd,score_brlvl_min=1,score_brlvl=1,score_lv8b_min=2] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue8,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.a8v2","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger b8lvl set 1"}},{"text":" 30","color":"dark_green"},{"text":" 10","color":"yellow"},{"text":"\n"},{"text":"--------------------","color":"gold"}]
execute @e[tag=cmd,score_brlvl_min=2,score_brlvl=2,score_lv8b_min=3] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue8,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.a8v3","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger b8lvl set 2"}},{"text":" 30","color":"dark_green"},{"text":" 10","color":"yellow"},{"text":"\n"},{"text":"--------------------","color":"gold"}]
execute @e[tag=cmd,score_brlvl_min=3,score_brlvl=3,score_lv8b_min=4] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue8,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.a8v4","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger b8lvl set 3"}},{"text":" 30","color":"dark_green"},{"text":" 10","color":"yellow"},{"text":"\n"},{"text":"--------------------","color":"gold"}]

execute @e[tag=cmd,score_brlvl_min=1,score_brlvl=1,score_lv8b=1] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue8,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-------------------","color":"gold"}]
execute @e[tag=cmd,score_brlvl_min=2,score_brlvl=2,score_lv8b=2] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue8,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-------------------","color":"gold"}]
execute @e[tag=cmd,score_brlvl_min=3,score_brlvl=3,score_lv8b=3] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue8,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-------------------","color":"gold"}]
execute @e[tag=cmd,score_brlvl_min=4,score_brlvl=4] ~ ~ ~ execute @e[tag=bluebopt] ~ ~ ~ execute @e[tag=blue8,c=1,r=4] ~ ~ ~ tellraw @p[team=blue] ["",{"translate":"aop.opbuild.upgrade","color":"dark_green"},{"text":"\n"},{"translate":"aop.opbuild.upgrade.max","color":"dark_red"},{"text":"\n"},{"text":"-------------------","color":"gold"}]
#---]
kill @e[tag=bluebopt]