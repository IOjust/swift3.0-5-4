//: [Previous](@previous)


import Foundation

var str = "Hello, playground"

let test1 = str.index(str.startIndex, offsetBy: 3)

str.substring(to: "dad".endIndex)

str.substring(from: test1)

str.substring(from: "a".endIndex)

let range = str.startIndex ..< str.index(str.startIndex, offsetBy: 6)


print(range)
str.substring(with: range)

let ocStr = str as NSString
let tests1 = ocStr.substring(with: NSMakeRange(0, 4))
print(tests1)


let array1 = ["tom","jerry","21312"]
print(array1)


var array2 = [Int](repeating:3,count:5)
var array3 :Array<Double> = []

//数组遍历
//1
for i in array2{
    print(i)
}
print("__________")
//2
for i in 0..<array2.count{
    print(array2[i])
}
//3 同时遍历下标和内容1
print("__________")
for e in array1.enumerated(){
    print("\(e.offset),\(e.element)")
}
//4 同时遍历下标和内容2 ,n,s名字随便写
print("__________")
for (n,c) in array1.enumerated(){
    print(n,c)
}
//5 反序遍历

print("---------")
for i in array1.reversed(){
    print(i)
}
//6 反序遍历,下标和内容,先枚举再反序
print("---------")
for e in array1.enumerated().reversed(){
    print(e)
}
print("--------- xxx")
for e in array1.reversed().enumerated(){
    print(e)
}
print("---------")

for (n,s) in array1.enumerated().reversed(){
    print("\(n),\(s)")
}

print("---------")

for (n,s) in array1.reversed().enumerated(){
    print("\(n),\(s)")
}

//数组增删改查

var array4 = ["123","lll"]
print(array4,"--array = \(array4.capacity)")
//增加
array4.append("lalala")
print(array4,"--array = \(array4.capacity)")
array4.append("lalala")
print(array4,"--array = \(array4.capacity)")
//修改
array4[0] = "qiqiq"
print(array4,"--array = \(array4.capacity)")
//删除
array4.removeLast()
print(array4)
array4.removeAll(keepingCapacity: true)//删除全部并且保留空间
print(array4,"--array = \(array4.capacity)")

//容量,空数组容量翻倍增长，非空数组容量累积+2，
//预分配空间，

/// int 初始为2
var array5 = [Int]()

for i in 0..<8 {
    array5.append(i)
    print("\(array5) 容量 = \(array5.capacity)")
}

/// string 初始为1
var array6 = [String]()

for i in 0..<8 {
    array6.append(String(i))
    print("\(array6) 容量 = \(array6.capacity)")
}

//数组合并
array4 += array6
print(array4,"容量 = \(array4.capacity)")

//: [Next](@next)
