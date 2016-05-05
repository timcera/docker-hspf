lf90 -nfix DataSizeSpecs.f95 > compile_f95.out
lf90 -nfix consts.f95 >> compile_f95.out
lf90 -nfix macros.f95 >> compile_f95.out
lf90 -nfix error.f95 >> compile_f95.out
lf90 -nfix datetime.f95 >> compile_f95.out
lf90 -nfix text.f95 >> compile_f95.out
lf90 -nfix keywords.f95 >> compile_f95.out
lf90 -nfix enums.f95 >> compile_f95.out
lf90 -nfix infil.f95 >> compile_f95.out
lf90 -nfix objects.f95 >> compile_f95.out
lf90 -nfix globals.f95 >> compile_f95.out
lf90 -nfix swmm5futil.f95 >> compile_f95.out
lf90 -nfix headers.f95 >> compile_f95.out
lf90 -nfix report.f95 >> compile_f95.out
lf90 -nfix climate.f95 >> compile_f95.out
lf90 -nfix findroot.f95 >> compile_f95.out
lf90 -nfix XsectDat.f95 >> compile_f95.out
lf90 -nfix xsect.f95 >> compile_f95.out
lf90 -nfix forcemain.f95 >> compile_f95.out
lf90 -nfix link.f95 >> compile_f95.out
lf90 -nfix dynwave.f95 >> compile_f95.out
lf90 -nfix table.f95 >> compile_f95.out
lf90 -nfix inflow.f95 >> compile_f95.out
lf90 -nfix massbal.f95 >> compile_f95.out
lf90 -nfix node.f95 >> compile_f95.out
lf90 -nfix flowrout.f95 >> compile_f95.out
lf90 -nfix output.f95 >> compile_f95.out
lf90 -nfix project.f95 >> compile_f95.out
lf90 -nfix rain.f95 >> compile_f95.out
lf90 -nfix toposort.f95 >> compile_f95.out
lf90 -nfix stats.f95 >> compile_f95.out
lf90 -nfix routing.f95 >> compile_f95.out
lf90 -nfix swmm5f.f95 >> compile_f95.out
lf90 -nfix qualrout.f95 >> compile_f95.out
lf90 -nfix treatmnt.f95 >> compile_f95.out
lf90 -nfix driver.f95 >> compile_f95.out
copy *.obj D:\lib3.0\LF90LIBS\hspf124
copy *.lib D:\lib3.0\LF90LIBS
copy *.mod D:\lib3.0\LF90LIBS
del *.exe
del *.map

