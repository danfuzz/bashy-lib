## no args or options passed

### stdout
```
fluff: 0
feet: maybe
relaxed: 0
```

### exit: 0

- - - - - - - - - -

## passed `--`

### stdout
```
fluff: 0
feet: maybe
relaxed: 0
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

## passed long toggle with no default

### stdout
```
fluff: 1
feet: maybe
relaxed: 0
```

### exit: 0

- - - - - - - - - -

## passed long no-toggle with no default

### stdout
```
fluff: 0
feet: maybe
relaxed: 0
```

### exit: 0

- - - - - - - - - -

## passed long toggle with default

### stdout
```
fluff: 0
feet: 1
relaxed: 0
```

### exit: 0

- - - - - - - - - -

## passed long no-toggle with default

### stdout
```
fluff: 0
feet: 0
relaxed: 0
```

### exit: 0

- - - - - - - - - -

## passed long toggle with no default but with short form

### stdout
```
fluff: 0
feet: maybe
relaxed: 1
```

### exit: 0

- - - - - - - - - -

## passed long no-toggle with no default but with short form

### stdout
```
fluff: 0
feet: maybe
relaxed: 0
```

### exit: 0

- - - - - - - - - -

## passed short toggle

### stdout
```
fluff: 0
feet: maybe
relaxed: 1
```

### exit: 0

- - - - - - - - - -

## passed long toggle then the no-toggle

### stdout
```
fluff: 0
feet: 0
relaxed: 0
```

### exit: 0

- - - - - - - - - -

## passed long no-toggle then the toggle

### stdout
```
fluff: 0
feet: maybe
relaxed: 1
```

### exit: 0

- - - - - - - - - -

## passed value 0 to two toggles

### stdout
```
fluff: 0
feet: 0
relaxed: 0
```

### exit: 0

- - - - - - - - - -

## passed value 1 to two toggles

### stdout
```
fluff: 1
feet: 1
relaxed: 0
```

### exit: 0

- - - - - - - - - -

## passed invalid value toggle

### stderr
```
the-cmd: Invalid value for option --relaxed: yes

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed two valid values to toggle (which should fail)

### stderr
```
the-cmd: Too many values for option --relaxed.

the-cmd -- test command
```

### exit: 1
