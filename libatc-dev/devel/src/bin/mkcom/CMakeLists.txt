

add_executable(mkcom MKCOM.FOR)
#install (PROGRAMS mkcom DESTINATION bin)
install(TARGETS mkcom DESTINATION bin)
target_link_libraries(mkcom hass_ent)
