#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "GTest::gtest" for configuration "Debug"
set_property(TARGET GTest::gtest APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(GTest::gtest PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "Threads::Threads"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib64/libgtestd.so"
  IMPORTED_SONAME_DEBUG "libgtestd.so"
  )

list(APPEND _cmake_import_check_targets GTest::gtest )
list(APPEND _cmake_import_check_files_for_GTest::gtest "${_IMPORT_PREFIX}/lib64/libgtestd.so" )

# Import target "GTest::gtest_main" for configuration "Debug"
set_property(TARGET GTest::gtest_main APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(GTest::gtest_main PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "Threads::Threads;GTest::gtest"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib64/libgtest_maind.so"
  IMPORTED_SONAME_DEBUG "libgtest_maind.so"
  )

list(APPEND _cmake_import_check_targets GTest::gtest_main )
list(APPEND _cmake_import_check_files_for_GTest::gtest_main "${_IMPORT_PREFIX}/lib64/libgtest_maind.so" )

# Import target "GTest::gmock" for configuration "Debug"
set_property(TARGET GTest::gmock APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(GTest::gmock PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "Threads::Threads;GTest::gtest"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib64/libgmockd.so"
  IMPORTED_SONAME_DEBUG "libgmockd.so"
  )

list(APPEND _cmake_import_check_targets GTest::gmock )
list(APPEND _cmake_import_check_files_for_GTest::gmock "${_IMPORT_PREFIX}/lib64/libgmockd.so" )

# Import target "GTest::gmock_main" for configuration "Debug"
set_property(TARGET GTest::gmock_main APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(GTest::gmock_main PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "Threads::Threads;GTest::gmock"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib64/libgmock_maind.so"
  IMPORTED_SONAME_DEBUG "libgmock_maind.so"
  )

list(APPEND _cmake_import_check_targets GTest::gmock_main )
list(APPEND _cmake_import_check_files_for_GTest::gmock_main "${_IMPORT_PREFIX}/lib64/libgmock_maind.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
