
# What to do with GKSINT*?

# GKSINT.FOR GKSINTX.FOR
# GRAXIS.FOR
# GRCAXE.FOR
# GRCCRV.FOR
# GRCLAY.FOR
# GRCMEG.FOR
# GRCOMN.FOR
# GRCVAR.FOR
# GRDATA.FOR
# GRDUMP.FOR
# GRGKS.FOR
# GRMARK.FOR
# GRSYDG.FOR GRSYLH.FOR GRSYPC.FOR GRSYPR.FOR GRSYUX.FOR
# GRTEXT.FOR
# GRUTIL.FOR


set(
    SRCS
        GRAXIS.FOR
        GRCAXE.FOR
        GRCCRV.FOR
        GRCLAY.FOR
        GRCMEG.FOR
        GRCOMN.FOR
        GRCVAR.FOR
        GRDATA.FOR
        GRDUMP.FOR
        GRGKS.FOR
        GRMARK.FOR
        GRSYUX.FOR
        GRTEXT.FOR
        GRUTIL.FOR
)

if (UNIX)
    set(
        ${SRCS}
        GRSYUX.FOR
        )
endif (UNIX)

if (WIN32)
    set(
        ${SRCS}
        GRSYPC.FOR
        )
endif (WIN32)

include(../abspath.cmake)

#add_library(
#    anne_graph 
#        ${SRCS}
#    )

#install (TARGETS anne_graph LIBRARY DESTINATION lib)

