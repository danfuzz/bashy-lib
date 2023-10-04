## no args or options passed

### stderr
```
the-cmd: Missing required argument <avec-yes>.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed `--`

### stderr
```
the-cmd: Missing required argument <avec-yes>.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed one positional arg

### stdout
```
avec-yes: one
some-value: ''
```

### exit: 0

- - - - - - - - - -

## passed two positional args

### stdout
```
avec-yes: florp
some-value: fleep
```

### exit: 0

- - - - - - - - - -

## passed three positional args

### stderr
```
the-cmd: Too many positional arguments.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed `--` then one positional arg

### stdout
```
avec-yes: ONE
some-value: ''
```

### exit: 0

- - - - - - - - - -

## passed `--` then two positional args

### stdout
```
avec-yes: YES
some-value: MORE-YES
```

### exit: 0

- - - - - - - - - -

## passed `--` then three positional args

### stderr
```
the-cmd: Too many positional arguments.

the-cmd -- test command
```

### exit: 1
