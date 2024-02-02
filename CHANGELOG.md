Changelog
=========

**Note:** Version numbers for _stable_ (so marked) releases follow semantic
versioning principles. Unstable releases do not.

### [Unreleased]

Breaking changes:
* None.

Other notable changes:
* `bashy-node`:
  * Added `--runner-versions[]` option to `node-project build-main-module`.

### v2.9 -- 2024-01-30

Breaking changes:
* None.

Other notable changes:
* `bashy-basics`:
  * Accept `jq` versions that have "patch" values (that is, sub-minor version
    numbers).
* `bashy-node`:
  * New subcommand `lint`, extracted from sibling project `lactoserv`.
  * New option `--runner-script` for `node-project build-main-module`, using
    code extracted from sibling project `lactoserv`.
  * Accept Node v21 when running.

### v2.8 -- 2023-11-30

This is a stable-ish release. No further breaking changes are currently
contemplated for the 2.* release series.

Breaking changes:
* `bashy-node`: Reworked build options to use the newly-standardized multi-value
  forms. Only _nominally_ breaking in that use of `bashy-node` at all is
  pretty minimal.

Other notable changes:
* `bashy-basics`:
  * New utility functions `env-clean`, `env-minimize`, and `env-names`.
  * New helper library `buildy-help`, to help avoid some project-build-related
    boilerplate.

### v2.7 -- 2023-10-30

This is a stable-ish release. No further breaking changes are currently
contemplated for the 2.* release series.

Breaking changes:
* `bashy-core`:
  * `arg-processor`:
    * Tightened up syntax for passing multi-value arguments.
    * Reworked `--enum` to be a multi-value option in the same way that the
      system lets clients define them. Most notably, it's now `--enum[]=`
      instead of `--enum=`.
    * Changed how `--filter` functions/code are called, so that they no longer
      run in a subshell, which required changing how the client filter code is
      defined. TLDR: Instead of printing replacement values, they now need to
      call `replace-value`.

Other notable changes:
* `bashy-core`:
  * `arg-processor`:
    * `--filter` now supports `{...}` to specify a code snippet, just like
      `--call` already does.
    * `--eval` values can be specified using the same multi-value syntax used by
      the rest of the system.
  * `misc`:
    * Made `vals` more conservative in its output.
    * New function `set-array-from-vals`, which is (approximately) the reverse
      action of `vals`.

### v2.6 -- 2023-10-24

Breaking changes:

* `bashy-core`:
  * `arg-processor`:
    * New recommended processing call `process-args "$@" || exit "$?"`, because
      of "magic" reduction noted below.
    * Renamed `--init` to `--default`, which is a better word for the meaning.
    * Removed `opt-choice`, as it's now covered by the more general `opt-alias`
      (see below).
  * `define-usage`: Dropped "magical" `exit` behavior.

Other notable changes:

* Cleaned up existing doc and added a handful more.
* `bashy-core`:
  * `arg-processor`:
    * Tightened up error checking and reporting.
    * Added `opt-alias` to allow for expansion of single no-value options into
      multiple options (including with values). Used underlying facility to
      rework implementation of single-character short options.
    * Added `opt-multi` to accept multi-valued options. Relatedly, added
      multi-value option passing syntax `--opt-name[]=...`, along with helper
      function `vals` for use sites.
  * `define-usage`: New option `--with-help` to help reduce boilerplate.
  * `stderr-msg`: New option `--file-line`.
  * Added a lot of tests, covering almost all of the core library functionality.

### v2.5 -- 2023-10-04

Notable changes:

* Added a simple test harness, and made a handful of tests.
* `bashy-core`:
  * New interactive `ubik`, which will use one found on `PATH` as a last resort.
  * `arg-processor`: New post-process hook `post-process-args-call`.
* `bashy-basics`:
  * `buildy`:
    * New command `buildy make-distro`, cribbed from sibling project `lactoserv`
      and adapted for more general use.
    * New command `buildy ls-files`, inspired by (and based on) the `git`
      command of the same name.
  * New command `ls-files`, top-level and non-git-specific (as opposed to the
    one in `buildy`).
  * Renamed `jbash-array` to `jset-array`, and made major improvements.
  * New command `jstring`.
* New sub-library `bashy-node`, for Node-specific stuff, particularly help
  building and maintaining Node projects. As with `make-distro` (above), this
  started out life in the sibling project `lactoserv`. **Note:** This
  sub-library is fairly opinionated.

### v2.4 -- 2023-09-26

Notable changes:

* `bashy-core`: Support linking within script directories, to enable
  encapsulated subprojects.
* `bashy-basics`: Make `jval` and `jget` option `--input=raw0[:slurp]` work as
  expected with `jq-1.7`. (The new `jq` fixes a bug which we had implicitly
  relied on.)

### v2.3 -- 2023-08-23

Notable changes:

* `bashy-basics`: Fixed handling of nop JSON output filters, that is, `::
  --output=none` without any JSON processing commands. Previously this could
  _sometimes_ confusingly fail or at least produce a spurious error message.

### v2.2 -- 2023-06-01

Notable changes:

* `bashy-core`:
  * New helper functions: `set-array-from-lines` and `sort-array`.
  * `lib`: New option `--exec`. New feature `lib .`, `lib ..`, etc.
  * Expanded functionality of `helpy print-usage`.
  * `ubik`:
    * Finds functions from the library, not just commands (scripts).
    * Smarter error reporting.
  * `stderr`:
    * New helper functions for more consistency amongst commands.
    * `progress-msg` defaults to enabled.
  * A decent handful of bugfixes.
* `bashy-basics`:
  * New command hierarchy `buildy`, to do some common project-build type stuff.
  * New script `timey secs`. Subsumes and deprecates `timey now-secs`.
  * New helper functions `jbash-array` and `jpostproc`.
  * Renamed commands `json-*` to just `j*`.

### v2.1 -- 2023-05-12

Notable changes:

* Major rework of boilerplate files, for much faster library loading.
* Fix a handful of bugs that were introduced during the earlier restructuring.
* Rename "sublibrary" to "unit" in both prose and code.
* New "smart dispatch" shell function wrapper for `ubik`.
* Change the default of `rsync-local` to be `--no-delete` and not `--delete`,
  to match regular `rsync`.
* New scripts:
  * `tempy` (temporary file/dir) utilities.
  * `timey` (date/time) utilities.
  * Sublibrary `bashy-net`, with a few tools extracted from the sibling project
   `milky-cloud`.

### v2.0 -- 2023-05-02

Notable changes:

* Restructuring of the contents of scripts/lib, to make it easier to integrate
  multiple libraries.
* New facility for constructing commands with hierarchical subcommands (like how
  you can say `git commit` or `aws ec2 run-instances`).

### v1.0 -- 2023-05-01 -- Stable

Ex-post-facto release of the state of affairs before major rework was
merged into `main`.
