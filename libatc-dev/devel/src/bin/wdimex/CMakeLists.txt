

add_executable(wdimex WDIMEX.FOR WDIMEZ.FOR)
target_link_libraries(wdimex hass_ent)

install (PROGRAMS ${CMAKE_CURRENT_BINARY_DIR}/wdimex DESTINATION bin)

