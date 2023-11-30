# Copyright 2022-2023 the Bashy-lib Authors (Dan Bornstein et alia).
# SPDX-License-Identifier: Apache-2.0

#
# Helper library for doing builds.
#
# When included, it expects to be given the option `--tmp-dir=` if
# `satisfy-target` is to be used.
#

#
# Configuration
#

# Temporary directory for `satisfy-target`.
_buildyHelp_tmpDir=''

while (( $# > 0 )); do
    case "$1" in
        --tmp-dir=*)
            _buildyHelp_tmpDir="${1#*=}"
            shift
            ;;
        *)
            error-msg --file-line=2 "Unknown argument: $1"
            return 1
    esac
done


#
# Library functions
#

# "Satisfies" a given target. If it's already been built, does nothing other
# than returning the original result. If it _hasn't_ been built, attempts to
# build it by calling the corresponding `target-*` function.
function satisfy-target {
    if [[ ${_buildyHelp_tmpDir} == '' ]]; then
        error-msg --file-line=1 'Temporary directory not configured.'
        return 1
    fi

    local target="$1"

    local targetStatusFile="${_buildyHelp_tmpDir}/build-result-${target}"
    local targetFunc="target-${target}"
    local result

    if [[ -r "${targetStatusFile}" ]]; then
        # Already built.
        result="$(cat "${targetStatusFile}")"
        if (( ${result} == 0 )); then
            echo "Target ${target}: Already built."
        else
            echo "Target ${target}: Already failed with ${result}."
        fi
        return "${result}"
    fi

    if declare -F "${targetFunc}" >/dev/null; then
        local _build_targetStack="${_build_targetStack:-}"
        if [[ ${_build_targetStack:-<unset>} =~ " ${target} " ]]; then
            echo "Circular dependency:"
            local t
            for t in ${_build_targetStack} "${target}"; do
                echo "  ${t}"
            done
            result=1
        else
            _build_targetStack+=" ${target} "
            echo "Building target ${target}..."
            "${targetFunc}" 2>&1 | indent '  '
            result="${PIPESTATUS[0]}"
            if (( ${result} == 0 )); then
                echo "Target ${target}: Succeeded!"
            else
                echo "Target ${target}: Failed with ${result}."
            fi
        fi
    else
        echo "Unknown target: ${target}"
        result=1
    fi

    echo "${result}" > "${targetStatusFile}"
    return "${result}"
}

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
            --out=*)
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