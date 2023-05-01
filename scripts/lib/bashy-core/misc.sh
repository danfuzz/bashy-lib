# Copyright 2022-2023 the Bashy-lib Authors (Dan Bornstein et alia).
# SPDX-License-Identifier: Apache-2.0

#
# Miscellaneous Bashy-lib "built-in" commands
#


#
# Library functions
#

# Calls an arbitrary command, and then exits the process with the given code.
function call-then-exit {
    local exitCode="$1"
    shift

    "$@"
    exit "${exitCode}"
}