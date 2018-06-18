install(FILES CMakeLists.txt DESTINATION foo COMPONENT test)

if(PACKAGING_TYPE STREQUAL "MONOLITHIC")
  set(CPACK_RPM_USER_BINARY_SPECFILE "${CMAKE_CURRENT_LIST_DIR}/custom.spec.in")
elseif(PACKAGING_TYPE STREQUAL "COMPONENT")
  install(FILES CMakeLists.txt DESTINATION bar COMPONENT test2)
  set(CPACK_RPM_TEST_USER_BINARY_SPECFILE
    "${CMAKE_CURRENT_LIST_DIR}/custom.spec.in")
endif()