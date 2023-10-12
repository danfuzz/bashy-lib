## no args or options passed

### stdout
```
Success!
```

### exit: 0

- - - - - - - - - -

## passed `--`

### stdout
```
Success!
```

### exit: 0

- - - - - - - - - -

## passed non-option arg

### stderr
```
the-cmd: Positional arguments are not allowed.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed two non-option args

### stderr
```
the-cmd: Positional arguments are not allowed.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed `--` then non-option arg

### stderr
```
the-cmd: Positional arguments are not allowed.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed `--` then arg that looks like an option

### stderr
```
the-cmd: Positional arguments are not allowed.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed a single-dash option

### stderr
```
the-cmd: Unknown option: -x

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed a double-dash option

### stderr
```
the-cmd: Unknown option: --x

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed a double-dash option with a value

### stderr
```
the-cmd: Unknown option: --x

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed a `--no-` option

### stderr
```
the-cmd: Unknown option: --no-x

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed a `--no-` option and a non-option argument

### stderr
```
the-cmd: Unknown option: --no-x
Positional arguments are not allowed.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed a double-dash option and then `--`

### stderr
```
the-cmd: Unknown option: --blort

the-cmd -- test command
```

### exit: 1
