

# CKFSDG.FOR CKFSPC.FOR
# DTTM90.FOR DTTMDC.FOR DTTMDG.FOR DTTMPC.FOR DTTMSG.FOR DTTMSN.FOR
# USCNLF90.FOR USCNLH.FOR USCNOT.FOR USCNPC.FOR USCNUX.FOR USCNVT.FOR
# UTCHAR.FOR
# UTCP90.FOR UTCPGN.FOR
# UTDATE.FOR
# UTGNRL.FOR
# UTNUMB.FOR
# UTSCDG.FOR UTSCDG_M.FOR UTSCIN.FOR UTSCLF90.FOR UTSCLH.FOR UTSCOT.FOR UTSCPC.FOR UTSCVX.FOR
# UTSCXXDL.FOR
# UTSCXX.FOR
# UTSCXXIN.FOR
# UTSORT.FOR

set(
    SRCS
        DTTM90.FOR
        UTCHAR.FOR
        UTCP90.FOR
        UTDATE.FOR
        UTGNRL.FOR
        UTNUMB.FOR
        UTSCXX.FOR
        UTSORT.FOR
    )
        
if (UNIX)
    set(
        SRCS
            ${SRCS}
            dirlis_.c
            FileName.c
            getdir_.c
            Malloc.c
            ttyux.c
            CKFSDG.FOR
            USCNVT.FOR
            UTSCDG.FOR
    )
endif ()

if (WIN32)
    set(
        SRCS
            ${SRCS}
            CKFSPC.FOR
            #     USCNPC.FOR # Really strange stuff in here
            USCNVT.FOR # replaces USCNPC.FOR
            UTSCPC.FOR
    )
endif ()

include(../abspath.cmake)
