## no args or options passed

### stdout
```
run: 0
perhaps: nopers
fly: 0
```

### exit: 0

- - - - - - - - - -

## passed `--`

### stdout
```
run: 0
perhaps: nopers
fly: 0
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

## passed long action with no default or defined value

### stdout
```
run: 1
perhaps: nopers
fly: 0
```

### exit: 0

- - - - - - - - - -

## passed long action with default and defined value

### stdout
```
run: 0
perhaps: yeppers
fly: 0
```

### exit: 0

- - - - - - - - - -

## passed long action with defined value and defined short form

### stdout
```
run: 0
perhaps: nopers
fly: whee
```

### exit: 0

- - - - - - - - - -

## passed short action with defined value

### stdout
```
run: 0
perhaps: nopers
fly: whee
```

### exit: 0

- - - - - - - - - -

## passed three long actions

### stdout
```
run: 1
perhaps: yeppers
fly: whee
```

### exit: 0

- - - - - - - - - -

## passed value to action

### stderr
```
the-cmd: Value not allowed for option --run.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed two values to action

### stderr
```
the-cmd: Value not allowed for option --run.

the-cmd -- test command
```

### exit: 1
