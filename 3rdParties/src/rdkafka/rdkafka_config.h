#pragma once

#define HAVE_ATOMICS_32 1
#define HAVE_ATOMICS_32_SYNC 1

#if (HAVE_ATOMICS_32)
# if (HAVE_ATOMICS_32_SYNC)
#  define ATOMIC_OP32(OP1,OP2,PTR,VAL) __sync_ ## OP1 ## _and_ ## OP2(PTR, VAL)
# else
#  define ATOMIC_OP32(OP1,OP2,PTR,VAL) __atomic_ ## OP1 ## _ ## OP2(PTR, VAL, __ATOMIC_SEQ_CST)
# endif
#endif

#define HAVE_ATOMICS_64 1
#define HAVE_ATOMICS_64_SYNC 1

#if (HAVE_ATOMICS_64)
# if (HAVE_ATOMICS_64_SYNC)
#  define ATOMIC_OP64(OP1,OP2,PTR,VAL) __sync_ ## OP1 ## _and_ ## OP2(PTR, VAL)
# else
#  define ATOMIC_OP64(OP1,OP2,PTR,VAL) __atomic_ ## OP1 ## _ ## OP2(PTR, VAL, __ATOMIC_SEQ_CST)
# endif
#endif


#define WITH_ZLIB 1
#define WITH_LIBDL 1
#define WITH_PLUGINS 1
#define WITH_SOCKEM 1
#define WITH_SNAPPY 1
#define WITH_SASL_SCRAM 1
#define ENABLE_DEVEL 0
#define SOLIB_EXT ".dll"


// #cmakedefine01 WITH_SSL
// #cmakedefine01 WITH_SASL
// #cmakedefine01 WITH_SASL_SCRAM
// #cmakedefine01 WITH_SASL_CYRUS
#define HAVE_REGEX 1
#define HAVE_STRNDUP 1
