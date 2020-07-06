/*
 * This file is generated from ./asm/directiv.dat
 * by perfhash.pl; do not edit.
 */

#include "directiv.h"

const char * const directive_tbl[40] = {
    "absolute",
    "bits",
    "common",
    "cpu",
    "debug",
    "default",
    "extern",
    "float",
    "global",
    "static",
    "list",
    "section",
    "segment",
    "warning",
    "sectalign",
    "pragma",
    "required",
    "export",
    "group",
    "import",
    "library",
    "map",
    "module",
    "org",
    "osabi",
    "safeseh",
    "uppercase",
    "prefix",
    "suffix",
    "gprefix",
    "gsuffix",
    "lprefix",
    "lsuffix",
    "limit",
    "options",
    "subsections_via_symbols",
    "no_dead_strip",
    "maxdump",
    "nodepend",
    "noseclabels"
};

#define UNUSED_HASH_ENTRY (65536/3)

static const int16_t directive_hashvals[64] = {
    0,
    UNUSED_HASH_ENTRY,
    0,
    UNUSED_HASH_ENTRY,
    27,
    -5,
    0,
    11,
    0,
    8,
    UNUSED_HASH_ENTRY,
    UNUSED_HASH_ENTRY,
    0,
    -5,
    29,
    15,
    UNUSED_HASH_ENTRY,
    UNUSED_HASH_ENTRY,
    UNUSED_HASH_ENTRY,
    -17,
    UNUSED_HASH_ENTRY,
    2,
    20,
    -4,
    -23,
    17,
    34,
    7,
    12,
    -21,
    17,
    -14,
    0,
    UNUSED_HASH_ENTRY,
    UNUSED_HASH_ENTRY,
    UNUSED_HASH_ENTRY,
    0,
    0,
    6,
    0,
    23,
    2,
    -29,
    33,
    12,
    24,
    3,
    UNUSED_HASH_ENTRY,
    27,
    -11,
    13,
    30,
    10,
    18,
    29,
    36,
    UNUSED_HASH_ENTRY,
    UNUSED_HASH_ENTRY,
    1,
    10,
    28,
    UNUSED_HASH_ENTRY,
    20,
    14
};

const struct perfect_hash directive_hash = {
    UINT64_C(0x076259c3e291c26c),
    UINT32_C(0x1f),
    UINT32_C(40),
    3,
    (D_unknown),
    directive_hashvals,
    directive_tbl
};
