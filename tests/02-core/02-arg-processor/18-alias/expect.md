## passed alias to action

### stdout
```
action: 1
multi: ()
toggle: 0
value: ''
```

### exit: 0

- - - - - - - - - -

## passed alias to multi

### stdout
```
action: 0
multi: (one two three)
toggle: 0
value: ''
```

### exit: 0

- - - - - - - - - -

## passed alias to toggle

### stdout
```
action: 0
multi: ()
toggle: 1
value: ''
```

### exit: 0

- - - - - - - - - -

## passed alias to no-toggle

### stdout
```
action: 0
multi: ()
toggle: 0
value: ''
```

### exit: 0

- - - - - - - - - -

## passed alias to value

### stdout
```
action: 0
multi: ()
toggle: 0
value: one
```

### exit: 0

- - - - - - - - - -

## passed short-alias to value

### stdout
```
action: 0
multi: ()
toggle: 0
value: one
```

### exit: 0

- - - - - - - - - -

## passed alias to action and toggle

### stdout
```
action: 1
multi: ()
toggle: 1
value: ''
```

### exit: 0

- - - - - - - - - -

## passed short-alias to action and toggle

### stdout
```
action: 1
multi: ()
toggle: 1
value: ''
```

### exit: 0

- - - - - - - - - -

## passed alias to action, toggle, and value

### stdout
```
action: 1
multi: ()
toggle: 1
value: two
```

### exit: 0

- - - - - - - - - -

## passed alias to value and no-toggle

### stdout
```
action: 0
multi: ()
toggle: 0
value: 3
```

### exit: 0

- - - - - - - - - -

## passed alias to value and multi

### stdout
```
action: 0
multi: (yes no maybe\?)
toggle: 0
value: florp
```

### exit: 0

- - - - - - - - - -

## passed alias to value, spaces in expansion

### stdout
```
action: 0
multi: ()
toggle: 0
value: this\ is\ fun
```

### exit: 0

- - - - - - - - - -

## passed alias to value, special characters in expansion

### stdout
```
action: 0
multi: ()
toggle: 0
value: y\$e\&s\|\!
```

### exit: 0
