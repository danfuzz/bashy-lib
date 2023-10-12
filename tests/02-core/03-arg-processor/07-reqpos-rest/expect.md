## no args or options passed

### stderr
```
the-cmd: Missing required argument <first>.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed `--`

### stderr
```
the-cmd: Missing required argument <first>.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed one positional arg

### stdout
```
First: one
Count: 0
```

### exit: 0

- - - - - - - - - -

## passed two positional args

### stdout
```
First: florp
Count: 1
  0: fleep
```

### exit: 0

- - - - - - - - - -

## passed three positional args

### stdout
```
First: one
Count: 2
  0: two
  1: three
```

### exit: 0

- - - - - - - - - -

## passed `--` then one positional arg

### stdout
```
First: ONE
Count: 0
```

### exit: 0

- - - - - - - - - -

## passed `--` then two positional args

### stdout
```
First: YES
Count: 1
  0: MORE-YES
```

### exit: 0

- - - - - - - - - -

## passed `--` then three positional args

### stdout
```
First: eep
Count: 2
  0: oop
  1: fleep
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
