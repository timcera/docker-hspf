
# HASS_DUM.FOR
# HASS_ENT.F90
# Himutil.F90
# Hspsta.FOR
# noxgks.f
# SCENMOD.F90
# TIMERPG.FOR
# VB_SCEN.F90

set(
    SRCS
        noxgks.f
        #HASS_DUM.FOR # perfectly fine qfclos in AIDE/QTFILE.FOR
        HASS_ENT.F90
    )

#if (WIN32)
#    set( SRCS
#        WIN32MOD.F90
#        Hspsta.FOR
#        SCENMOD.F90
#        VB_SCEN.F90
#        Himutil.F90
#        ${SRCS}
#        )
#endif()

set(HASSLIB_SRCS ${SRCS} ${HASSLIB_SRCS})

add_library(
    hass_ent SHARED
    ${HASSLIB_SRCS}
    )

target_link_libraries(hass_ent
    hec
    )

#if (WIN32)
#  target_link_libraries (hass_ent kernel32.lib)
#endif()

install (TARGETS hass_ent DESTINATION lib)

