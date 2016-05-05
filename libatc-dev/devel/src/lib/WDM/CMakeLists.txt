
# Left the following out of libanne_wdm
# WDSPTM_DEBUG.FOR 

#add_library(
#    anne_wdm 
set(SRCS
        TSBUFR.FOR
        WDATM2.FOR
        WDATRB.FOR
        WDATRU.FOR
        WDBTCH.FOR
        WDDLG.FOR
        WDEXPT.FOR
        WDIMPT.FOR
        WDMID.FOR
        WDSPTM.FOR
        WDTBL2.FOR
        WDTBLE.FOR
        WDTMS1.FOR
        WDTMS2.FOR
        WDTMS3.FOR
    )

include(../abspath.cmake)
#install (TARGETS anne_wdm LIBRARY DESTINATION lib)

