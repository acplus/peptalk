load 1AWR.pdb
load 1AWR.A.pdb_.pred_final
load /vol/ek/londonir/CleanPeptiDB/analysis/soaking/bound/1AWR.map.pdb
load /vol/ek/dattias/PeptideDocking/PlacementProtocol/CastPAnalysis/data/1AWR/1AWR.allPocAtoms
load /vol/ek/dattias/PeptideDocking/PlacementProtocol/CastPAnalysis/data/1AWR/1AWR.biggestPocAtoms
util.color_chains("(1AWR)")
cmd.show_as("cartoon"   ,"1AWR")
cmd.show_as("mesh"      ,"1AWR.allPocAtoms")
cmd.disable('1AWR.allPocAtoms')
cmd.enable('1AWR.allPocAtoms',1)
cmd.color(4,"1AWR.allPocAtoms")
cmd.show_as("mesh"      ,"1AWR.biggestPocAtoms")
cmd.color(2,"1AWR.biggestPocAtoms")
cmd.disable('1AWR.allPocAtoms')
cmd.set('seq_view',1)
cmd.hide("sticks"    ,"all")
cmd.hide("sticks"    ,"all")
cmd.disable('protein')
cmd.enable('protein',1)
cmd.hide("everything","protein")
cmd.disable('1AWR.A.pdb_.pred_final')
cmd.enable('1AWR.A.pdb_.pred_final',1)
cmd.hide("sticks"    ,"1AWR.A.pdb_.pred_final")
cmd.hide("lines"     ,"1AWR.A.pdb_.pred_final")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1)")
cmd.select('sele','none')
_ cmd.select("sele","((byresi(?sele)) or byresi(_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`2)")
_ cmd.select("sele","((byresi(?sele)) or byresi(_seeker))")
_ cmd.delete("_seeker")
_ cmd.select("sele","((byresi(?sele)) and not byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`3)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`4|1AWR.A.pdb_.pred_final`5)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`6)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`7|1AWR.A.pdb_.pred_final`8)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`9)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`10)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`11)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`12)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`13)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`14)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`15)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`16)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`17)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`18)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`19)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`20)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`21)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`22)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`23)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`24)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`25)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.color("white","sele")
cmd.show("spheres"   ,"sele")
cmd.set('seq_view',0)
cmd.disable('1AWR.A.pdb_.pred_final')
cmd.enable('1AWR.A.pdb_.pred_final',1)
cmd.set('seq_view',1)
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1325)")
_ cmd.select("sele","((byresi(?sele)) or byresi(_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1326)")
_ cmd.select("sele","((byresi(?sele)) or byresi(_seeker))")
_ cmd.delete("_seeker")
_ cmd.select("sele","((byresi(?sele)) and not byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1327)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1328|1AWR.A.pdb_.pred_final`1329)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1330)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1331|1AWR.A.pdb_.pred_final`1332|1AWR.A.pdb_.pred_final`1333)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1334|1AWR.A.pdb_.pred_final`1335|1AWR.A.pdb_.pred_final`1336|1AWR.A.pdb_.pred_final`1337)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1338|1AWR.A.pdb_.pred_final`1339)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1340|1AWR.A.pdb_.pred_final`1341)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1342|1AWR.A.pdb_.pred_final`1343)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1344|1AWR.A.pdb_.pred_final`1345)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1346)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1347)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1348)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1349)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1350)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1351)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1352)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1353|1AWR.A.pdb_.pred_final`1354)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1355)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1356)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1357)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1358)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1359)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1360)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1361)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1362)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1363)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1364)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1365)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1366)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1367)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1368)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1369)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1370)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1371)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1372)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1373)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.select("_seeker","(1AWR.A.pdb_.pred_final`1374)")
_ cmd.select("sele","((byresi(?sele)) or byresi(?_seeker))")
_ cmd.delete("_seeker")
cmd.set('seq_view',0)
cmd.enable('1AWR.allPocAtoms',1)
cmd.disable('1AWR.allPocAtoms')
