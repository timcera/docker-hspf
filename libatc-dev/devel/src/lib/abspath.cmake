
foreach(src ${SRCS})
    get_filename_component(isrc ${src} ABSOLUTE)
    set(LSRCS ${LSRCS} ${isrc})
    endforeach()

set(HASSLIB_SRCS ${HASSLIB_SRCS} ${LSRCS} PARENT_SCOPE)
