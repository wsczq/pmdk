# SPDX-License-Identifier: BSD-3-Clause
# Copyright 2016-2019, Intel Corporation
#
# src/test/mmap_fixed/TEST0 -- unit test for memory mapping routines
#

. ..\unittest\unittest.ps1

require_test_type medium
require_fs_type any

setup

$LEN1 = 256 * 1024
$LEN2 = $LEN1 - 4096
$LEN3 = $LEN1 + 4096
$LEN4 = $LEN1 - 1
$LEN5 = $LEN1 + 1

expect_normal_exit $Env:EXE_DIR\mmap_fixed$Env:EXESUFFIX $DIR `
    $LEN1 $LEN2 $LEN3 $LEN4 $LEN5

pass
