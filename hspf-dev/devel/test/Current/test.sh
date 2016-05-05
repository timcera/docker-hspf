#!/bin/sh
rm test.difs
hspf test01.uci
pause
diff -b test01.ech ../Base/test01.ech >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test02.uci
pause
diff -b test02.ech ../Base/test02.ech >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test03.uci
pause
diff -b test03.ech ../Base/test03.ech >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test04.uci
pause
diff -b test04.ech ../Base/test04.ech >>test.difs
diff -b test04.d61 ../Base/test04.d61 >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test05.uci
pause
diff -b test05.ech ../Base/test05.ech >>test.difs
diff -b test05.out ../Base/test05.out >>test.difs
diff -b test05.d62 ../Base/test05.d62 >>test.difs
diff -b test05.p92 ../Base/test05.p92 >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test06.uci
pause
diff -b test06.ech ../Base/test06.ech >>test.difs
diff -b test06.out ../Base/test06.out >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test07.uci
pause
diff -b test07.ech ../Base/test07.ech >>test.difs
diff -b test07.out ../Base/test07.out >>test.difs
diff -b test07.d63 ../Base/test07.d63 >>test.difs
diff -b test07.d64 ../Base/test07.d64 >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test08.uci
pause
diff -b test08.ech ../Base/test08.ech >>test.difs
diff -b test08.out ../Base/test08.out >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test09.uci
pause
diff -b test09.ech ../Base/test09.ech >>test.difs
diff -b test09.out ../Base/test09.out >>test.difs
diff -b test09.d65 ../Base/test09.d65 >>test.difs
diff -b test09.p93 ../Base/test09.p93 >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test10.uci
pause
diff -b test10.ech ../Base/test10.ech >>test.difs
diff -b test10.out ../Base/test10.out >>test.difs
diff -b test10.d66 ../Base/test10.d66 >>test.difs
diff -b test10.p94 ../Base/test10.p94 >>test.difs
diff -b test10.p95 ../Base/test10.p95 >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test11.uci
pause
diff -b test11.ech ../Base/test11.ech >>test.difs
diff -b test11.eng ../Base/test11.eng >>test.difs
diff -b test11.met ../Base/test11.met >>test.difs
diff -b test11.d67 ../Base/test11.d67 >>test.difs
diff -b test11.p96 ../Base/test11.p96 >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test12.uci
pause
diff -b test12.ech ../Base/test12.ech >>test.difs
diff -b test12.out ../Base/test12.out >>test.difs
diff -b test12.d68 ../Base/test12.d68 >>test.difs
diff -b test12.p97 ../Base/test12.p97 >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test13.uci
pause
diff -b test13.ech ../Base/test13.ech >>test.difs
diff -b test13.out ../Base/test13.out >>test.difs
diff -b test13.d69 ../Base/test13.d69 >>test.difs
diff -b test13.p98 ../Base/test13.p98 >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test14.uci
pause
diff -b test14.ech ../Base/test14.ech >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
hspf test15.uci
pause
diff -b test15.ech ../Base/test15.ech >>test.difs
diff -b test15.out ../Base/test15.out >>test.difs
diff -b test15.dis ../Base/test15.dis >>test.difs
diff -b test15.plt ../Base/test15.plt >>test.difs
diff -b test15p.hbn ../Base/test15p.hbn >>test.difs
diff -b test15r.hbn ../Base/test15r.hbn >>test.difs
diff -b test.wdm ../Base/test.wdm >>test.difs
