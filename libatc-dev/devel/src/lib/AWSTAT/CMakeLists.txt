

# A193.FOR
# A193IO.FOR
# A193PL.FOR
# A193UT.FOR
# PKPLOT.FOR
# PROFDR.FOR
# STUTIL.FOR
# TSCBAT.FOR
# TSCMPR.FOR

#add_library(
#    anne_awstat 
set(SRCS
        A193.FOR
        A193IO.FOR
        A193PL.FOR
        A193UT.FOR
        PKPLOT.FOR
        PROFDR.FOR
        STUTIL.FOR
        TSCBAT.FOR
        TSCMPR.FOR
    )

include(../abspath.cmake)
#install (TARGETS anne_awstat LIBRARY DESTINATION lib)

