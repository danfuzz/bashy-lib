Bashy-lib
=========

[![Test](https://github.com/danfuzz/bashy-lib/actions/workflows/main.yml/badge.svg)](https://github.com/danfuzz/bashy-lib/actions/workflows/main.yml)

<blockquote><i>
"Using Bash-3.2 plus the intersection of BSD and GNU tools is the worst form
of commandline scripting, except for all those other forms that have been tried
from time to time." &mdash; @danfuzz, with apologies to Sir Winston Churchill
</i></blockquote>

- - - - - - - - - -

This is a "core library" of sorts for Bash, containing a bunch of stuff that
I (@danfuzz) have found useful when developing new tools in Bash, along with
some generally-useful utilities.

It is structured such that library units (sub-libraries) may be composed into a
unified whole, _mostly_ without interfering with each other, and _mostly_
without code duplication.

### Stability note

The 1.0 release is stable but not recommended for use.

The 2.* series of releases isn't yet stable. You can still expect breaking
changes with each release. Expect a stable release sometime in 2024.

## Documentation

* [Argument Processing](./doc/arg-processor.md)
* [Developer Guide](./doc/developer-guide.md)
* [User Guide](./doc/user-guide.md)

- - - - - - - - - -
```
Copyright 2022-2024 the Bashy-lib Authors (Dan Bornstein et alia).
SPDX-License-Identifier: Apache-2.0
```
