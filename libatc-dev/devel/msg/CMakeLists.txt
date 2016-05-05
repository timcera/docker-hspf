
# Out of source builds are a little problematic with wdimex
# I need the *.seq files in their subdirectories.
file(GLOB_RECURSE seqfiles 
    RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
    *.SEQ *.seq)
foreach(seqfile ${seqfiles})
    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/${seqfile}
                   ${CMAKE_CURRENT_BINARY_DIR}/${seqfile} COPYONLY)
endforeach()

# Find wdimex which will be somewhere available to the build process.
get_target_property(wdimexlocation wdimex LOCATION)

# Create each WDM in turn for the *.in files using wdimex.
foreach(infile message hspfmsg)
    # *.wdm files must be deleted to be recreated.
    add_custom_target(${infile}
                      ALL
                      COMMAND ${CMAKE_COMMAND} -E remove ${PROJECT_BINARY_DIR}/msg/${infile}.wdm
                      COMMAND ${wdimexlocation} < ${PROJECT_SOURCE_DIR}/msg/${infile}.in
                      COMMENT "Creating the ${infile} file."
                      VERBATIM)
    install (FILES ${PROJECT_BINARY_DIR}/msg/${infile}.wdm DESTINATION share/usgs)
endforeach()

