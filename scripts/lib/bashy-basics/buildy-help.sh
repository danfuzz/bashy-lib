# Copyright 2022-2023 the Bashy-lib Authors (Dan Bornstein et alia).
# SPDX-License-Identifier: Apache-2.0

#
# Helper library for doing builds.
#

# Wrapper around `lib buildy out-dir` which sets up a built-output directory in
# a standard way and prints out the final path. Takes toggle option `--clean`
# and value option `--out=<path>`.
function set-up-out-dir {
    local extraOpts=()

    while (( $# > 0 )); do
        case "$1" in
            --clean|--clean=1)
                extraOpts+=(--remove)
                shift
                ;;
            --clean=0|--no-clean)
                shift
                ;;
            --out=)
                extraOpts+=("$1")
                shift
                ;;
        esac
    done

    if (( $# != 0 )); then
        error-msg --file-line=1 "Unrecognized argument: $1"
        return 1
    fi

    lib buildy out-dir \
        --out="${outDir}" --create --print "${extraOpts[@]}"
}
