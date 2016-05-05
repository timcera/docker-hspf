

add_executable(wdmrx PATCH1.FOR WDMRX.FOR)
#install (PROGRAMS wdmrx DESTINATION bin)
install(TARGETS wdmrx DESTINATION bin)
target_link_libraries(wdmrx hass_ent)
