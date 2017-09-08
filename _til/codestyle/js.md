---
title: JavaScript
category: codestyle
---

__JS__ (Use something like ESLint) 
```js
//Function Signatures:
function foo(arg1, arg2) { 

//if/else 
if x == y {
  return x;
}
return y; 

//No non bracketed blocks
//wrong:
if x == 1
  return true; 
//correct:
if x == 1 {
  return true;
}
```
