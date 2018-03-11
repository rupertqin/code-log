## 分绑定和未绑定context, 绑定的方法有  apply, call, bind, 和 arrow function

其中 arrow function 稍微模糊，如

## 新的作用域让 this 指向全局
```js
var cat = {
  name: 'bonnie',
  say: function() {
    var name = 'inner function'
    console.log(this.name)
    function innersay() {
      console.log(this.name)
    }
    setTimeout(innersay)
    var arrowFunc = ()=> console.log(this.name)
    arrowFunc()
    innersay()
  }
}
```


# this 指向为动态绑定，也叫运行时绑定
## 基本规则一： this 指向最终调用它的对象

```js
function foo(){  
    console.log(this.a);  
}  
var obj1 = {  
    a : 2,  
    foo : foo  
}  
var obj2 = {  
    a : 1,  
    obj1 : obj1,
    foo : foo
} 

obj2.foo()  // 1
obj2.obj1.foo();    // 2
foo2 = obj2.obj1.foo
foo2()   // undefined
```

## 在 setTimeout 中丢失：
```js
// 接以上代码
setTimeout(obj2.obj1.foo) // => undefined
```

## 在参数传递中丢失（setTimeout中也是传参丢失）：
```js
// 接以上代码
function doFoo(fn){
    fn();  
}  
doFoo(obj1.foo); // undefined
```

## 异步调用 callback 函数的this指向， 如 click，本身已经绑定了 context, 所以最好不用 arrow function
```js
element.onclick = obj2.foo  // undefined
element.onclick = function(e) {
  obj2.foo()  // 1 
}
```

## 用 new 创建新对象时
 
