//: [Previous](@previous)

import Foundation

class flower:NSObject{
    var color:String
    
    // init（） ，给成员变量分配空间，初始化成员变量
    //1 没有初始化 Class 'flower' has no initializers
    
    //2 Overriding declaration requires an 'override' keyword
    // 父类有这个方法，子类重新实现，需要使用voerride关键字。
    override init() {
        //3 Property 'self.color' not initialized at implicitly generated super.init call
        // 调用父类的函数之前，属性 self.color 没有初始化
        print("super init")
        color = "red"
        super.init()
        // Property 'self.color' not initialized at super.init call
        // 在调用父类方法时，需要给 self.color 初始化，分配空间，设置初始值
        
    }
}
/**
 非optional属性必须初始化
 调用父类函数前必须保证本类的所有属性初始化
 
 构造函数 作用：
 1.给成员变量分配空间，oc[alloc]
 2.初始化成员变量，oc[init]
 构造函数写法：
 
 1，给自己的属性分配空间，并且设置初始值
 2，调用父类的构造函数，-> 给父类属性分配空间，并且设置初始值
 NSObject没有属性，只有一个成员变量‘isa’
 swift 类的初始化（先初始化自己，再初始化父类 ）和 OC 的相反。
 */

class rose:flower{
    let size:String
    var hegiht = 100
    override init() {
        print("children init")
        size = "big"
        super.init()
    }
    
}
let obj = rose()
print("size = \(obj.size),color = \(obj.color),height = \(obj.hegiht)")




/**
 重写和重载
 override 重写
 父类存在相同的方法
 子类重新编写父类的实现 //方法补鞥满足需求
 
 overload 重载
 函数名相同
 参数类型和个数不同 // 参数不能满足需求
 如果重载了构造函数，并且没有实现默认init方法，系统不再提供默认的init（）默认函数
 - 因为默认的构造函数不会给本类的属性分配空间
 - 重载 可以给自己的属性从外部设置初始值
 */
class tree{
    
    var name:String
    //    init() {
    //
    //        name = "bigTree"
    //    }
    init(name:String) {
        self.name = name
    }
}

//let tree1 = tree()
//print(tree1.name)

let tree2 = tree(name: "smallTree")
print(tree2.name)

// ↓↓↓↓

class subTree:tree{
    var height:Int
    
    init(name: String,height:Int) {
        
        self.height = height
        // 调用父类方法给name初始化
        super.init(name: name)
    }
}
// 项目里打断点，在控制台输入 po tree3 ，可以看到命名空间，输入 p tree3,可以看到继承关系
let tree3 = subTree(name: "枫树", height: 20)

print("\(tree3.name) ----- \(tree3.height)")



// kvc 函数调动
// 因为手机开发，内存宝贵，有些属性不一定需要分配空间
// 1.定义模型属性，如果是对象，通常都是可选的，即延迟加载，需要时候再加载,并且可以简化代码
// 2.kvc 是OC的方法，**在运行的时候发送消息**,使用self 的方法‘setValueForKey’方法前，应该调用 super init
// 保证对象实例化完成


// 便利构造
// 便利构造器必须总是横向代理,指定构造是向上代理
//: [Next](@next)
