//: [Previous](@previous)

// 格式：
func sum(x:Int,y:Int) -> Int{
    return x + y
}
sum(x: 10, y: 20)


//: 外部参数

/// 外部参数只是在形参前加一个名字
/// 外部参数不会影响内部的细节
/// 外部参数会让外部调用看起来更加直观
/// 外部参数如果使用 _ 替代，在外部调用时会忽略形参
func sum1(num1 x:Int,num2 y:Int) -> Int{
    return x + y
}
sum1(num1: 10, num2: 20)


// _下划线

func sum2(_ x:Int,_ y:Int) -> Int{
    return x + y
}
sum2(10, 20)


//: 默认参数，oc没有,通过默认参数，调用时可以任意组合，不指定使用默认值
func sum3(x:Int = 3,y:Int = 7) ->Int{
    return x + y
}
sum3()
sum3(y: 2)
sum3(x: 13)
sum3(x: 10, y: 20)

//无返回值,主要用在闭包，-前是执行，>后是返回

func demo1(){
    print("hello1")
}

func demo2() ->(){
    print("hello2")
}

func demo3() -> Void {
    print("hello3")
}

demo1()
demo2()
demo3()



//: [Next](@next)
