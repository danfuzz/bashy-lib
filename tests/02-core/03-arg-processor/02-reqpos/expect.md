## no args or options passed

### stderr
```
the-cmd: Missing required argument <zongo>.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed `--`

### stderr
```
the-cmd: Missing required argument <zongo>.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed positional arg

### stdout
```
Value: i-am-arguing
```

### exit: 0

- - - - - - - - - -

## passed two positional args

### stderr
```
the-cmd: Too many positional arguments.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed `--` then positional arg

### stdout
```
Value: MORE_ARGUING
```

### exit: 0

- - - - - - - - - -

## passed `--` then arg that looks like an option

### stdout
```
Value: --non-option
```

### exit: 0

- - - - - - - - - -

## passed a double-dash option

### stderr
```
the-cmd: Unknown option: --x

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed a double-dash option then a positional arg

### stderr
```
the-cmd: Unknown option: --x

the-cmd -- test command
```

### exit: 1
