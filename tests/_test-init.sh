# Copyright 2022-2023 the Bashy-lib Authors (Dan Bornstein et alia).
# SPDX-License-Identifier: Apache-2.0

. "${BASH_SOURCE[0]%/*}/_init.sh" || return "$?"


#
# Library functions
#

# Calls a function, wrapping its output in a standard form, writing it all
# (including stderr) to stdout.
function call-and-log-as-test {
    local label="$1"
    local cmd=("$@")

    echo ''
    echo "## ${label}"
    echo ''

    # TODO!
    echo '### stdout'
    echo '```'

    "${cmd[@]}" 1>&2
    local exitCode="$?"

    echo '```'
    echo ''
    echo "### exit: ${exitCode}"
}
