## nop filter

### stdout
```
value: xyz
```

### exit: 0

- - - - - - - - - -

## simple wrapping filter

### stdout
```
value: '<pdq>'
```

### exit: 0

- - - - - - - - - -

## multiline simple filter

### stdout
```
value: 'yes!!'
```

### exit: 0

- - - - - - - - - -

## multiline filter that rejects `a`, given not-`a`

### stdout
```
value: not-a
```

### exit: 0

- - - - - - - - - -

## multiline filter that rejects `a`, given `a`

### stderr
```
the-cmd: Got a! No way!
Invalid value for option --fail-on-a: a

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## filter which modifies a global

### stdout
```
value: like
florp: like
```

### stderr
```
We have florped.
```

### exit: 0
