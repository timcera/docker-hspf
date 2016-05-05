
# ADUTIL.FOR
# EHUTLF90.FOR EHUTLH.FOR EHUTOT.FOR
# MSEXPT.FOR
# MSIMPT.FOR
# MSOPEN.FOR
# PRTFIL.FOR
# USYSIN95.FOR USYSLF90.FOR USYSLH.FOR USYSLX.FOR USYSOT.FOR USYSPC.FOR USYSPR.FOR USYSUX.FOR USYSVX.FOR
# UTWDMD.FOR
# UTWDMF.FOR
# UTWDT1.FOR
# WDATM1.FOR
# WDMCHK.FOR
# WDMESS.FOR
# WDOPGF95.FOR WDOPIN95.FOR WDOPLF90.FOR WDOPPC.FOR WDOPPR.FOR WDOPUX.FOR WDOPVX.FOR
# ZTWDMF.FOR

# What should I do about EHUT*?  Expert Help Utilities - old and likely unused. Links fine without.

set(
    SRCS
        ADUTIL.FOR
        MSEXPT.FOR
        MSIMPT.FOR
        MSOPEN.FOR
        PRTFIL.FOR
        USYS.FOR     # Generic Fortran2003
        UTWDMD.FOR
        UTWDMF.FOR
        UTWDT1.FOR
        WDATM1.FOR
        WDMCHK.FOR
        WDMESS.FOR
        ZTWDMF.FOR
        WDOP.FOR
    )



include(../abspath.cmake)

# The following is a test to make sure that the RECL was correctly set within
# WDOP.FOR.  It is only appropriate for the Intel compiler.

#set_source_files_properties(WDOP.FOR
#             PROPERTIES COMPILE_FLAGS "-assume byterecl"
#             )

