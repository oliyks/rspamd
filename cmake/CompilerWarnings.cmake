CHECK_C_COMPILER_FLAG(-Wall SUPPORT_WALL)
CHECK_C_COMPILER_FLAG(-Wextra SUPPORT_WEXTRA)
CHECK_C_COMPILER_FLAG(-Wpointer-arith SUPPORT_WPOINTER)
CHECK_C_COMPILER_FLAG(-Wno-unused-parameter SUPPORT_WPARAM)
CHECK_C_COMPILER_FLAG(-Wno-unused-function SUPPORT_WFUNCTION)
CHECK_C_COMPILER_FLAG(-Wno-strict-aliasing SUPPORT_WSTRICT_ALIASING)
CHECK_C_COMPILER_FLAG(-Wunused-variable SUPPORT_WUNUSED_VAR)
CHECK_C_COMPILER_FLAG(-Wno-pointer-sign SUPPORT_WPOINTER_SIGN)
CHECK_C_COMPILER_FLAG(-Wno-sign-compare SUPPORT_WSIGN_COMPARE)
CHECK_C_COMPILER_FLAG(-Wstrict-prototypes SUPPORT_WSTRICT_PROTOTYPES)
CHECK_C_COMPILER_FLAG(-pedantic SUPPORT_PEDANTIC_FLAG)
CHECK_C_COMPILER_FLAG(-Wno-unused-const-variable SUPPORT_WNO_UNUSED_CONST)
CHECK_C_COMPILER_FLAG(-Wmissing-noreturn SUPPORT_WMISSING_NORETURN)
CHECK_C_COMPILER_FLAG(-Wmissing-format-attribute SUPPORT_WMISSING_FORMAT_ATTRIBUTE)
# GCC 6 specific
CHECK_C_COMPILER_FLAG(-Wnull-dereference SUPPORT_WNULL_DEREFERENCE)
CHECK_C_COMPILER_FLAG(-Wduplicated-cond SUPPORT_WDUPLICATED_COND)
# GCC 7 specific
CHECK_C_COMPILER_FLAG(-Wimplicit-fallthrough SUPPORT_WIMPLICIT_FALLTHROUGH)
# Special check for deprecated declarations, as since OpenSSL 3.0 they
# just poison output for no good reason
CHECK_C_COMPILER_FLAG(-Wdeprecated-declarations SUPPORT_WDEPRECATED_DECLARATIONS)

IF(SUPPORT_WEXTRA)
    ADD_COMPILE_OPTIONS("-Wextra")
ENDIF(SUPPORT_WEXTRA)
IF(SUPPORT_WALL)
    ADD_COMPILE_OPTIONS("-Wall")
ENDIF(SUPPORT_WALL)
IF(SUPPORT_WPOINTER)
    ADD_COMPILE_OPTIONS("-Wpointer-arith")
ENDIF(SUPPORT_WPOINTER)
IF(SUPPORT_WPARAM)
    ADD_COMPILE_OPTIONS("-Wno-unused-parameter")
ENDIF(SUPPORT_WPARAM)
IF(SUPPORT_WFUNCTION)
    ADD_COMPILE_OPTIONS("-Wno-unused-function")
ENDIF(SUPPORT_WFUNCTION)
IF(SUPPORT_WUNUSED_VAR)
    ADD_COMPILE_OPTIONS("-Wunused-variable")
ENDIF(SUPPORT_WUNUSED_VAR)
IF(SUPPORT_WPOINTER_SIGN)
    # only valid for C
    ADD_COMPILE_OPTIONS($<$<COMPILE_LANGUAGE:C>:-Wno-pointer-sign>)
ENDIF(SUPPORT_WPOINTER_SIGN)
IF(SUPPORT_WSTRICT_PROTOTYPES)
    # only valid for C
    ADD_COMPILE_OPTIONS($<$<COMPILE_LANGUAGE:C>:-Wstrict-prototypes>)
ENDIF(SUPPORT_WSTRICT_PROTOTYPES)
IF(SUPPORT_WSTRICT_ALIASING)
    ADD_COMPILE_OPTIONS("-Wno-strict-aliasing")
    ADD_COMPILE_OPTIONS("-fno-strict-aliasing")
ENDIF(SUPPORT_WSTRICT_ALIASING)
#IF(SUPPORT_PEDANTIC_FLAG)
#	SET(CMAKE_C_WARN_FLAGS "${CMAKE_C_WARN_FLAGS} -pedantic")
#ENDIF(SUPPORT_PEDANTIC_FLAG)
IF(SUPPORT_WNULL_DEREFERENCE)
    ADD_COMPILE_OPTIONS("-Wnull-dereference")
ENDIF()
IF(SUPPORT_WDUPLICATED_COND)
    ADD_COMPILE_OPTIONS("-Wduplicated-cond")
ENDIF()
IF(SUPPORT_WLOGICAL_OP)
    ADD_COMPILE_OPTIONS("-Wlogical-op")
ENDIF()
IF(SUPPORT_WNO_UNUSED_CONST)
    ADD_COMPILE_OPTIONS("-Wno-unused-const-variable")
ENDIF()
IF(SUPPORT_WSIGN_COMPARE)
    ADD_COMPILE_OPTIONS("-Wno-sign-compare")
ENDIF()
IF(SUPPORT_WIMPLICIT_FALLTHROUGH)
    ADD_COMPILE_OPTIONS("-Wno-implicit-fallthrough")
ENDIF(SUPPORT_WIMPLICIT_FALLTHROUGH)
IF(SUPPORT_WMISSING_NORETURN)
    ADD_COMPILE_OPTIONS("-Wmissing-noreturn")
ENDIF(SUPPORT_WMISSING_NORETURN)
IF(SUPPORT_WMISSING_FORMAT_ATTRIBUTE)
    ADD_COMPILE_OPTIONS("-Wmissing-format-attribute")
ENDIF(SUPPORT_WMISSING_FORMAT_ATTRIBUTE)

IF(SUPPORT_WDEPRECATED_DECLARATIONS)
    ADD_COMPILE_OPTIONS("-Wno-deprecated-declarations")
ENDIF()
