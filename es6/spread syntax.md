## Q:  insert other Array to target Array, in a flat type.

### 1:

```js
var a = [1,5,6]
var b = [2,3,4];
[].splice.apply(a, [1,0].concat(b))
```
### 2:
```js
var a = [1,5,6]
var b = [2,3,4]
a.splice(1, 0, ...b)

```

