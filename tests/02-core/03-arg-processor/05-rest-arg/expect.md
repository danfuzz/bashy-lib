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

## passed one positional arg

### stdout
```
Count: 1
  0: one
```

### exit: 0

- - - - - - - - - -

## passed two positional args

### stdout
```
Count: 2
  0: florp
  1: fleep
```

### exit: 0

- - - - - - - - - -

## passed three positional args

### stdout
```
Count: 3
  0: one
  1: two
  2: three
```

### exit: 0

- - - - - - - - - -

## passed `--` then one positional arg

### stdout
```
Count: 1
  0: ONE
```

### exit: 0

- - - - - - - - - -

## passed `--` then two positional args

### stdout
```
Count: 2
  0: YES
  1: MORE-YES
```

### exit: 0

- - - - - - - - - -

## passed `--` then three positional args

### stdout
```
Count: 3
  0: eep
  1: oop
  2: fleep
```

### exit: 0

- - - - - - - - - -

## passed one option

### stderr
```
the-cmd: Unknown option: --not-valid

the-cmd -- test command
```

### exit: 1
