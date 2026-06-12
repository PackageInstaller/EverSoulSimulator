if(EXISTS "${INJECTOR}")
  execute_process(
    COMMAND "${INJECTOR}" "${SO}" "${SERVER}"
    RESULT_VARIABLE _rc)
  if(NOT _rc EQUAL 0)
    message(WARNING "eversoul_injector exited with code ${_rc}")
  endif()
else()
  message(STATUS "eversoul_injector not found at ${INJECTOR} — skipping injection")
  message(STATUS "  build the desktop target first, then rebuild the Android target")
endif()
