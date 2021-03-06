INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_GNURADIO_RUNTIME gnuradio-runtime)

FIND_PATH(
    GNURADIO_RUNTIME_INCLUDE_DIRS
    NAMES gr_random.h
    HINTS $ENV{GNURADIO_RUNTIME_DIR}/include/gnuradio
        ${PC_GNURADIO_RUNTIME_INCLUDEDIR}/gnuradio
    PATHS /usr/local/include/gnuradio
          /usr/include/gnuradio
)

FIND_LIBRARY(
    GNURADIO_RUNTIME_LIBRARIES
    NAMES gnuradio-runtime
    HINTS $ENV{GNURADIO_RUNTIME_DIR}/lib
        ${PC_GNURADIO_RUNTIME_LIBDIR}
    PATHS /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GNURADIO_RUNTIME DEFAULT_MSG GNURADIO_RUNTIME_LIBRARIES GNURADIO_RUNTIME_INCLUDE_DIRS)
MARK_AS_ADVANCED(GNURADIO_RUNTIME_LIBRARIES GNURADIO_RUNTIME_INCLUDE_DIRS)
