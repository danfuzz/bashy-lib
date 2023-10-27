## no args (too few)

### stderr
```
run: 
run:21: Missing argument(s) to `set-array-from-vals`.
```

### exit: 1

- - - - - - - - - -

## one arg (too few)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: 
run:21: Missing argument(s) to `set-array-from-vals`.
```

### exit: 1

- - - - - - - - - -

## just `--quiet` and no other args (too few)

### exit: 1

- - - - - - - - - -

## `--quiet` and one arg (too few)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### exit: 1

- - - - - - - - - -

## three args (too many)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: 
run:21: Too many arguments to `set-array-from-vals`.
```

### exit: 1

- - - - - - - - - -

## `--quiet` and three args (too many)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### exit: 1

- - - - - - - - - -

## one valid unquoted value

### stdout
```
Length: 1

0: xyz
```

### exit: 0

- - - - - - - - - -

## one valid single-quoted value

### stdout
```
Length: 1

0: xyz
```

### exit: 0

- - - - - - - - - -

## one valid double-quoted value

### stdout
```
Length: 1

0: xyz
```

### exit: 0

- - - - - - - - - -

## one valid dollar-quoted value

### stdout
```
Length: 1

0: xyz
```

### exit: 0

- - - - - - - - - -

## `--quiet` and one valid value

### stdout
```
Length: 1

0: florp
```

### exit: 0

- - - - - - - - - -

## variable name check #1

### stdout
```
Length: 1

0: florp
```

### exit: 0

- - - - - - - - - -

## variable name check #2

### stdout
```
Length: 1

0: florp
```

### exit: 0

- - - - - - - - - -

## variable name check #3

### stdout
```
Length: 1

0: florp
```

### exit: 0

- - - - - - - - - -

## variable name check #4

### stdout
```
Length: 1

0: florp
```

### exit: 0

- - - - - - - - - -

## variable name check #5

### stdout
```
Length: 1

0: florp
```

### exit: 0

- - - - - - - - - -

## variable name check #6

### stdout
```
Length: 1

0: florp
```

### exit: 0

- - - - - - - - - -

## two unquoted values

### stdout
```
Length: 2

0: florp
1: fleep
```

### exit: 0

- - - - - - - - - -

## two single-quoted values

### stdout
```
Length: 2

0: florp
1: fleep
```

### exit: 0

- - - - - - - - - -

## two double-quoted values

### stdout
```
Length: 2

0: florp
1: fleep
```

### exit: 0

- - - - - - - - - -

## two dollar-quoted values

### stdout
```
Length: 2

0: florp
1: fleep
```

### exit: 0

- - - - - - - - - -

## all allowed unquoted alphanumerics

### stdout
```
Length: 3

0: abcdefghijklmnopqrstuvwxyz
1: ABCDEFGHIJKLMNOPQRSTUVWXYZ
2: 0123456789
```

### exit: 0

- - - - - - - - - -

## all allowed unquoted non-alphanumerics

### stdout
```
Length: 9

0: @
1: %
2: _
3: -
4: +
5: =
6: :
7: .
8: /
```

### exit: 0

- - - - - - - - - -

## two space-surrounded values

### stdout
```
Length: 2

0: florp
1: fleep
```

### exit: 0

- - - - - - - - - -

## two tab-separated values

### stdout
```
Length: 2

0: florp
1: fleep
```

### exit: 0

- - - - - - - - - -

## two tab-surrounded values

### stdout
```
Length: 2

0: florp
1: fleep
```

### exit: 0

- - - - - - - - - -

## two newline-separated values

### stdout
```
Length: 2

0: florp
1: fleep
```

### exit: 0

- - - - - - - - - -

## two newline-surrounded values

### stdout
```
Length: 2

0: florp
1: fleep
```

### exit: 0

- - - - - - - - - -

## two return-separated values

### stdout
```
Length: 2

0: florp
1: fleep
```

### exit: 0

- - - - - - - - - -

## two return-surrounded values

### stdout
```
Length: 2

0: florp
1: fleep
```

### exit: 0

- - - - - - - - - -

## two values surrounded by a mix of all valid separators

### stdout
```
Length: 2

0: florp
1: fleep
```

### exit: 0

- - - - - - - - - -

## `--quiet` and one invalid value

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### exit: 1

- - - - - - - - - -

## unquoted $'\'' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  $'\''
```

### exit: 1

- - - - - - - - - -

## unquoted '\' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '\'
```

### exit: 1

- - - - - - - - - -

## unquoted '"' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '"'
```

### exit: 1

- - - - - - - - - -

## unquoted ';' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  ';'
```

### exit: 1

- - - - - - - - - -

## unquoted '&' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '&'
```

### exit: 1

- - - - - - - - - -

## unquoted '|' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '|'
```

### exit: 1

- - - - - - - - - -

## unquoted '$' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '$'
```

### exit: 1

- - - - - - - - - -

## unquoted '?' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '?'
```

### exit: 1

- - - - - - - - - -

## unquoted '!' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '!'
```

### exit: 1

- - - - - - - - - -

## unquoted '*' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '*'
```

### exit: 1

- - - - - - - - - -

## unquoted '`' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '`'
```

### exit: 1

- - - - - - - - - -

## unquoted '#' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '#'
```

### exit: 1

- - - - - - - - - -

## unquoted % (invalid)

### stdout
```
Length: 1

0: %
```

### exit: 0

- - - - - - - - - -

## unquoted '^' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '^'
```

### exit: 1

- - - - - - - - - -

## unquoted ',' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  ','
```

### exit: 1

- - - - - - - - - -

## unquoted '~' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '~'
```

### exit: 1

- - - - - - - - - -

## unquoted '[' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '['
```

### exit: 1

- - - - - - - - - -

## unquoted ']' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  ']'
```

### exit: 1

- - - - - - - - - -

## unquoted '{' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '{'
```

### exit: 1

- - - - - - - - - -

## unquoted '}' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '}'
```

### exit: 1

- - - - - - - - - -

## unquoted '(' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '('
```

### exit: 1

- - - - - - - - - -

## unquoted ')' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  ')'
```

### exit: 1

- - - - - - - - - -

## unquoted '<' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '<'
```

### exit: 1

- - - - - - - - - -

## unquoted '>' (invalid)

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '>'
```

### exit: 1

- - - - - - - - - -

## missing space #1

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  $'foo\'bar\''
```

### exit: 1

- - - - - - - - - -

## missing space #2

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  $'\'foo\'bar'
```

### exit: 1

- - - - - - - - - -

## missing space #3

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  $'\'foo\'\'bar\''
```

### exit: 1

- - - - - - - - - -

## missing space #5

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  'foo"bar"'
```

### exit: 1

- - - - - - - - - -

## missing space #6

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '"foo"bar'
```

### exit: 1

- - - - - - - - - -

## missing space #7

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  '"foo""bar"'
```

### exit: 1

- - - - - - - - - -

## missing space #8

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  $'foo$\'bar\''
```

### exit: 1

- - - - - - - - - -

## missing space #9

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  $'$\'foo$\'bar'
```

### exit: 1

- - - - - - - - - -

## missing space #10

### stdout
```
Length: 4

0: <never set>
1: x
2: y
3: z
```

### stderr
```
run: Invalid `vals`-style multi-value string:
  $'$\'foo$\'$\'bar\''
```

### exit: 1
