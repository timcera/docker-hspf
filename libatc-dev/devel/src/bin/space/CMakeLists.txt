

add_executable(space SPACE.FOR)
target_link_libraries(space hass_ent)

install (PROGRAMS ${CMAKE_CURRENT_BINARY_DIR}/space DESTINATION bin)

