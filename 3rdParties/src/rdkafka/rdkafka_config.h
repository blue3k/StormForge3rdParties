#pragma once

#define HAVE_ATOMICS_32
#define HAVE_ATOMICS_32_SYNC

#if (HAVE_ATOMICS_32)
# if (HAVE_ATOMICS_32_SYNC)
#  define ATOMIC_OP32(OP1,OP2,PTR,VAL) __sync_ ## OP1 ## _and_ ## OP2(PTR, VAL)
# else
#  define ATOMIC_OP32(OP1,OP2,PTR,VAL) __atomic_ ## OP1 ## _ ## OP2(PTR, VAL, __ATOMIC_SEQ_CST)
# endif
#endif

#define HAVE_ATOMICS_64
#define HAVE_ATOMICS_64_SYNC

#if (HAVE_ATOMICS_64)
# if (HAVE_ATOMICS_64_SYNC)
#  define ATOMIC_OP64(OP1,OP2,PTR,VAL) __sync_ ## OP1 ## _and_ ## OP2(PTR, VAL)
# else
#  define ATOMIC_OP64(OP1,OP2,PTR,VAL) __atomic_ ## OP1 ## _ ## OP2(PTR, VAL, __ATOMIC_SEQ_CST)
# endif
#endif


#define WITH_ZLIB
#define WITH_LIBDL
#define WITH_PLUGINS
#define WITH_SNAPPY 1
#define WITH_SASL_SCRAM 1
#define ENABLE_DEVEL 0
#define SOLIB_EXT ".dll"


#define WITH_ZLIB
#cmakedefine01 WITH_LIBDL
#cmakedefine01 WITH_PLUGINS
#define WITH_SNAPPY 1
#define WITH_SOCKEM 1
#cmakedefine01 WITH_SSL
#cmakedefine01 WITH_SASL
#cmakedefine01 WITH_SASL_SCRAM
#cmakedefine01 WITH_SASL_CYRUS
#cmakedefine01 HAVE_REGEX
#cmakedefine01 HAVE_STRNDUP
