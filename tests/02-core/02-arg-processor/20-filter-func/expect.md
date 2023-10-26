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

## filter that rejects `z`, given not-`z`

### stdout
```
value: not-z
```

### exit: 0

- - - - - - - - - -

## filter that rejects `z`, given `z`

### stderr
```
the-cmd: Got z! No way!
Invalid value for option --fail-on-z: z

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
