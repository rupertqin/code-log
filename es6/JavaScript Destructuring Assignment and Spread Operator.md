# 匹配赋值（也叫解构赋值）
Destructuring Assignment，其实我更愿意叫 Matching Assignment， 因为更像是 Pattern Matching, 哈哈哈


```js
let [head, ...tail] = [1, 2, 3, 4];
```

##### 这种好像没什么用, 用 slice 不是更语义化?
```js
var [,,...b] = [1,2,3,4,5,6]
```

##### 好吧，还可以和数组、对象嵌套
```js
var [,,,,,{name}] = [1,2,3,4,5,{name: "rupert"}]
var [,,,,,[key, value]] = [1,2,3,4,5,["wether", "sunshine"]]
```

## 这到底有什么用？
假如我们读取一个深嵌套结构的数据，ES5:
```js
var data = {
  body: {
    result: {
      response: {
        title: "",
        list: [],
        data: {
          description: ""
        }
      }
    }
  }
}

var title = data.body.result.response.title
var list = data.body.result.response.list
var description = data.body.result.response.data.description
```
ES6 就一句:
```js
var {body: {result: {title, list, data: {description}}}} = data

```



