---
title: Go
category: codestyle
---

__Go__ (just use a linter basically):
```go
//Function Signatures:
func foo(arg1: int, arg2: bool) { 

//if/else 
if x == y {
  return x
}
return y 

//No non bracketed blocks
//wrong:
if x == 1
  return true 
//correct:
if x == 1 {
  return true
}
```
