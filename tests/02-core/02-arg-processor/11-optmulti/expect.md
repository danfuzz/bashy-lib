## no args or options passed

### stdout
```
Count: 0
```

### exit: 0

- - - - - - - - - -

## passed `--`

### stdout
```
Count: 0
```

### exit: 0

- - - - - - - - - -

## passed positional arg

### stderr
```
the-cmd: Positional arguments are not allowed.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed multi-value option, no values

### stdout
```
Count: 0
```

### exit: 0

- - - - - - - - - -

## passed multi-value option, one value

### stdout
```
Count: 1
  0: one
```

### exit: 0

- - - - - - - - - -

## passed multi-value option, one value, using single-value syntax

### stdout
```
Count: 1
  0: one
```

### exit: 0

- - - - - - - - - -

## passed multi-value option, one empty value, using single-value syntax

### stdout
```
Count: 1
  0: ''
```

### exit: 0

- - - - - - - - - -

## passed multi-value option, one single-quoted value with a space

### stdout
```
Count: 1
  0: yes\ yes
```

### exit: 0

- - - - - - - - - -

## passed multi-value option, one double-quoted value with a space

### stdout
```
Count: 1
  0: two\ two
```

### exit: 0

- - - - - - - - - -

## passed multi-value option, one dollar-quoted value with a space

### stdout
```
Count: 1
  0: yes\ sirree\!
```

### exit: 0

- - - - - - - - - -

## passed multi-value option, two values

### stdout
```
Count: 2
  0: one
  1: two
```

### exit: 0

- - - - - - - - - -

## passed multi-value option, four values, omnibus

### stdout
```
Count: 4
  0: one
  1: two
  2: three\ four
  3: five\ \&\ six
```

### exit: 0

- - - - - - - - - -

## passed multi-value option, with invalid multi-value syntax #1

### stderr
```
the-cmd: Invalid multi-value syntax for option --items:
  'one "two'

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed multi-value option, with invalid multi-value syntax #2

### stderr
```
the-cmd: Invalid multi-value syntax for option --items:
  'a ; b'

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed multi-value option, with invalid multi-value syntax #3

### stderr
```
the-cmd: Invalid multi-value syntax for option --items:
  '$c'

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed multi-value option, with invalid multi-value syntax #4

### stderr
```
the-cmd: Invalid multi-value syntax for option --items:
  'd|e f&g'

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed multi-value option, with invalid multi-value syntax #5

### stderr
```
the-cmd: Invalid multi-value syntax for option --items:
  'x\ y'

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed multi-value option, showing that double-quoted strings are literal

### stdout
```
Count: 3
  0: \$\(echo\ hi\)
  1: \\n
  2: \$\{florp\}
```

### exit: 0
