## `x`: `x`

### stdout
```
value: x
```

### exit: 0

- - - - - - - - - -

## `x`: non-matching value

### stderr
```
the-cmd: Invalid value for option --just-x: florp

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## `x y`: `x`

### stdout
```
value: x
```

### exit: 0

- - - - - - - - - -

## `x y`: `y`

### stdout
```
value: y
```

### exit: 0

- - - - - - - - - -

## `x y`: non-matching value

### stderr
```
the-cmd: Invalid value for option --xy: z

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## ` x y`: `x`

### stdout
```
value: x
```

### exit: 0

- - - - - - - - - -

## ` x y`: `y`

### stdout
```
value: y
```

### exit: 0

- - - - - - - - - -

## ` x y`: non-matching value

### stderr
```
the-cmd: Invalid value for option --space-prefix-xy: z

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## `x y `: `x`

### stdout
```
value: x
```

### exit: 0

- - - - - - - - - -

## `x y `: `y`

### stdout
```
value: y
```

### exit: 0

- - - - - - - - - -

## `x y `: non-matching value

### stderr
```
the-cmd: Invalid value for option --space-suffix-xy: zonk

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## <avec all symbol chars>: alpha

### stdout
```
value: abcdefghijklmnopqrstuvwxyz
```

### exit: 0

- - - - - - - - - -

## <avec all symbol chars>: ALPHA

### stdout
```
value: ABCDEFGHIJKLMNOPQRSTUVWXYZ
```

### exit: 0

- - - - - - - - - -

## <avec all symbol chars>: digits

### stdout
```
value: 0123456789
```

### exit: 0

- - - - - - - - - -

## <avec all symbol chars>: `-`

### stdout
```
value: -
```

### exit: 0

- - - - - - - - - -

## <avec all symbol chars>: `_`

### stdout
```
value: _
```

### exit: 0

- - - - - - - - - -

## <avec all symbol chars>: `:`

### stdout
```
value: :
```

### exit: 0

- - - - - - - - - -

## <avec all symbol chars>: `.`

### stdout
```
value: .
```

### exit: 0

- - - - - - - - - -

## <quoted forms>: `a b`

### stdout
```
value: a\ b
```

### exit: 0

- - - - - - - - - -

## <quoted forms>: `c d`

### stdout
```
value: c\ d
```

### exit: 0

- - - - - - - - - -

## <quoted forms>: `efg`

### stdout
```
value: a\ b
```

### exit: 0

- - - - - - - - - -

## <avec all symbol chars>: `&`

### stderr
```
the-cmd: Invalid value for option --all-symbol-chars: &

the-cmd -- test command
```

### exit: 1
