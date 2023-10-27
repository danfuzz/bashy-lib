## no elements

### stdout
```
Length: 0
```

### exit: 0

- - - - - - - - - -

## one element

### stdout
```
Length: 1

0: line-0
```

### exit: 0

- - - - - - - - - -

## two elements

### stdout
```
Length: 2

0: line-0
1: line-1
```

### exit: 0

- - - - - - - - - -

## 25 elements

### stdout
```
Length: 25

0: line-0
1: line-1
2: line-2
3: line-3
4: line-4
5: line-5
6: line-6
7: line-7
8: line-8
9: line-9
10: line-10
11: line-11
12: line-12
13: line-13
14: line-14
15: line-15
16: line-16
17: line-17
18: line-18
19: line-19
20: line-20
21: line-21
22: line-22
23: line-23
24: line-24
```

### exit: 0

- - - - - - - - - -

## just newline

### stdout
```
Length: 0
```

### exit: 0

- - - - - - - - - -

## just two newlines

### stdout
```
Length: 0
```

### exit: 0

- - - - - - - - - -

## one line with newline at start and end

### stdout
```
Length: 1

0: zorch
```

### exit: 0

- - - - - - - - - -

## five lines with two newlines at start and end

### stdout
```
Length: 5

0: alpha
1: beta
2: gamma
3: delta
4: epsilon
```

### exit: 0

- - - - - - - - - -

## two lines with four newlines in the middle

### stdout
```
Length: 2

0: start
1: end
```

### exit: 0

- - - - - - - - - -

## nl-terminated: empty string

### stdout
```
Length: 0
```

### exit: 0

- - - - - - - - - -

## nl-terminated: just newline

### stdout
```
Length: 1

0: ''
```

### exit: 0

- - - - - - - - - -

## nl-terminated: just two newlines

### stdout
```
Length: 2

0: ''
1: ''
```

### exit: 0

- - - - - - - - - -

## nl-terminated: one line with newline at start and end

### stdout
```
Length: 2

0: ''
1: zorch
```

### exit: 0

- - - - - - - - - -

## nl-terminated: five lines with two newlines at start and end

### stdout
```
Length: 8

0: ''
1: ''
2: alpha
3: beta
4: gamma
5: delta
6: epsilon
7: ''
```

### exit: 0

- - - - - - - - - -

## nl-terminated: two lines with four newlines in the middle and one at end

### stdout
```
Length: 5

0: start
1: ''
2: ''
3: ''
4: end
```

### exit: 0

- - - - - - - - - -

## nl-terminated: one non-nl-terminated line

### stdout
```
run: 
run:16: Last line unterminated.
```

### exit: 1

- - - - - - - - - -

## nl-terminated: two lines, non-nl-terminated at the end

### stdout
```
run: 
run:16: Last line unterminated.
```

### exit: 1
