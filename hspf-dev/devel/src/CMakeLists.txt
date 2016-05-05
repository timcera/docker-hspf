
set(CMAKE_PREFIX_PATH ${CMAKE_BINARY_DIR}/libatc)

add_executable(hspf
                   hspfbat.f
                   hspsta.f
              )

install(TARGETS hspf RUNTIME DESTINATION bin)

find_library(hass_ent_lib
    hass_ent
    )

find_library(hec_lib
    hec
    )

target_link_libraries(hspf
                          ${hass_ent_lib}
                          ${hec_lib}
                     )
