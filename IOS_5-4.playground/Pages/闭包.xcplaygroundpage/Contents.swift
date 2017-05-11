//: [Previous](@previous)

import Foundation

/**
 函数是特殊的闭包
 特点，
 1，提前准备好的代码
 2，在需要的时候执行
 3，可以当做参数传递
 */
func sum(x:Int,y:Int) ->Int{
    return x + y
}

// 定义一个常量记录函数
//  (Int, Int) -> Int
let f = sum

// 需要时执行
print(f(10,20))


//1. 最简单的闭包 {} 花括号代表代码块
// () -> () 没有参数，没有返回值
let b1 = {
    print("hello")
}

let b0 = { print(123)}
//2. 带参数的闭包，闭包参数写在 {} 内,(Int, Int) -> ()
// in 分隔定义和实现
let b2 = {
    (x:Int,y:Int) in
    print("\(x+y)")
}
b2(100,200)


//3. 有返回值的闭包 (Int, Int) -> Int
let b3 = {
    (x:Int,y:Int) -> Int in
    return x + y
}

print(b3(10,200))


/**
 应用场景：
 1，异步执行回调
 2，控制期间回调
 3，自定义视图回调
 */



//: [Next](@next)
